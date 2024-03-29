<?php

/*
 * grid/email_alerts.php
 *
 * Developed by Clayton Dukes <cdukes@logzilla.pro>
 * Copyright (c) 2011 LogZilla, LLC
 * All rights reserved.
 *
 * Changelog:
 * 2011-01-03 - created
 *
 */
define('ABSPATH', dirname(__FILE__).'/');
require_once (ABSPATH . "../common_funcs.php");
define('DB_DSN',"mysql:host=".DBHOST.";dbname=".DBNAME);
define('DB_USER', DBADMIN);    
define('DB_PASSWORD', DBADMINPW); 
// include the jqGrid Class
require_once ABSPATH."php/jqGrid.php";
// include the driver class
require_once ABSPATH."php/jqGridPdo.php";
// include pdf
require_once(ABSPATH.'/php/tcpdf/config/lang/eng.php'); 
// Connection to the server
$conn = new PDO(DB_DSN,DB_USER,DB_PASSWORD);
// Tell the db that we use utf-8
$conn->query("SET NAMES utf8");

// Create the jqGrid instance
$grid = new jqGridRender($conn);
// Write the SQL Query
$grid->SelectCommand = 'SELECT id,description,pattern,mailto,mailfrom,subject,body,disabled FROM triggers';
// set the ouput format to json
$grid->dataType = 'json';
$grid->table = 'triggers';
$grid->setPrimaryKeyId('id');


$labels = array("description"=>"Description", "pattern"=>"Regex Pattern", "mailto"=>"Mail Recipient", "mailfrom"=>"Mail Originator", "subject"=>"Mail Subject", "body"=>"Mail Body", "disabled"=>"Disabled?");

// Let the grid create the model
$grid->setColModel(null, null, $labels);

$grid->setColProperty('id', array('hidden'=>true) );
$grid->setColProperty('disabled', array('width'=>'50',"edittype"=>"select"));
$grid->setColProperty('body',array("edittype"=>"textarea","editoptions"=>array("rows"=>2, "cols"=> 40),"width"=>200));
$grid->setColProperty('pattern',array("edittype"=>"textarea","editoptions"=>array("rows"=>1, "cols"=> 40),"width"=>200));

// Set the url from where we obtain the data
$grid->setUrl('includes/grid/email_alerts.php');

$grid->addCol(array(
    "name"=>"Actions",
    "formatter"=>"actions",
    "editable"=>false,
    "sortable"=>false,
    "resizable"=>false,
    "fixed"=>true,
    "width"=>60,
    "formatoptions"=>array("keys"=>true)
    ), "first"); 


// Set some grid options
$grid->setGridOptions(array(
    "rowNum"=>18,
    "sortname"=>"id",
    "sortorder"=>"asc",
    "altRows"=>true,
    "rowList"=>array(20,40,60,75,100),
    "forceFit" => true
    ));





$choices = array("Yes"=>"Yes", "No"=>"No");
// $grid->setSelect("disabled", $choices , false, false, true, array(""=>"All"));
$grid->setSelect("disabled", $choices , false, true, true, array(""=>"All"));



$grid->navigator = true; 
$grid->setNavOptions('navigator', array("pdf"=>true,"excel"=>true,"add"=>true,"edit"=>false,"del"=>false,"view"=>false, "search"=>true)); 
$grid->setNavOptions('edit', array("width"=>"auto","height"=>"auto","dataheight"=>"auto","top"=>200,"left"=>200)); 
$grid->setNavOptions('add', array("width"=>"auto","height"=>"auto","dataheight"=>"auto","top"=>200,"left"=>200)); 

$custom = <<<CUSTOM


        var modalWidth = $("#portlet_Email_Alerts").width();
        var modalHeight = $("#portlet_Email_Alerts").height() - 52;
        $('#triggergrid').jqGrid('setGridWidth',modalWidth);
        $('#triggergrid').jqGrid('setGridHeight',modalHeight);
        $('#triggergrid').fluidGrid({base:'#portlet_Email_Alerts', offset:-25});

$(window).resize(function()
{
        $('#triggergrid').fluidGrid({base:'#portlet_Email_Alerts', offset:-25});
});


CUSTOM;

$grid->setJSCode($custom);

$oper = jqGridUtils::GetParam("oper");
if($oper == "pdf") {
    $grid->setPdfOptions(array(
        "header"=>true,
        "margin_top"=>25,
        "page_orientation"=>"P",
        "header_logo"=>"../../../../../images/Logo_450x123_24bit_color.jpg",
        // set logo image width
        "header_logo_width"=>45,
        //header title
        "header_title"=>"                         Alerts Report"
    ));
} 

// Enjoy
$grid->renderGrid('#triggergrid','#triggerpager',true, null, null, true,true);
$conn = null;
?>
