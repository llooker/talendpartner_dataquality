<h1 style="padding-bottom:0px;color:#76678b;font-weight:500">Talend Data Quality Block</h1>
<p style="font-weight: 300">
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Why Use This Block?</h2>
<p style="font-weight: 300">
This block will accelerate your efforts to create a Business Data Quality dashboard using the Talend DQ Data Mart.
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Logical Architecture</h2>
<p style="font-weight: 300">
The below Logical Architecture highlights how data is sent to Talend Data Quality, which executes business rules, and the DQ metrics from these executions are stored in Snowflake DQ Mart, and finally Looker is used to produce DQ Dashboards.<br>
<img src="https://raw.githubusercontent.com/llooker/talendpartner_dataquality/master/talend_logical_architecture.png" alt="Talend Logical Architecture">
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Business Dashboard</h2>
<p style="font-weight: 300">
The business dashboard will provide a view across the 6 DQ dimensions: <br>
a.      Completeness<br>
b.      Timeliness<br>
c.      Validity<br>
d.      Accuracy <br>
e.      Consistency<br>
f.       Uniqueness 
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Talend Concepts</h2>
<p style="font-weight: 300">
In Talend Studio, within the Profiling perspective, use <strong>Analysis</strong> to create a Data quality rule, and then use <strong>Report</strong> to group all rules that should by logically together – i.e. by Department, Function or Regulation.<br><br>
When the Report is executed it populates the DQ Mart.
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Talend DQ mart Data Model</h2>
<p style="font-weight: 300">

The Talend DQ Mart physical model is documented here - <br>
<a href="https://help.talend.com/reader/p~XkHQRil1oYMoldgyweMg/GiniPfbvkc_FnV~mWRaDbQ">https://help.talend.com/reader/p~XkHQRil1oYMoldgyweMg/GiniPfbvkc_FnV~mWRaDbQ</a><br><br>
The following four additional database views are to be created manually in the DQ mart, to enable data exploration and dashboarding.  The DDL for these views can be found here:<br>
<a href="https://github.com/llooker/talendpartner_dataquality/blob/master/DDL_For_Required_Database_Views.md">https://github.com/llooker/talendpartner_dataquality/blob/master/DDL_For_Required_Database_Views.md</a>
<br><br>
&nbsp; &nbsp; &nbsp; •  bi_dq_metrics.sql<br>
&nbsp; &nbsp; &nbsp; •  bi_column_analysis.sql<br>
&nbsp; &nbsp; &nbsp; •  bi_overview_analysis.sql<br>
&nbsp; &nbsp; &nbsp; •  bi_comparison_analysis.sql
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Block Structure</h2>
<p style="font-weight: 300">
&nbsp; &nbsp; &nbsp; •  The block provides access to all tables within the datamart, allowing you to create any suitable dashboard.<br>
&nbsp; &nbsp; &nbsp; •  The dashboard is built using just this view – bi_dq_metrics
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">How To Implement This Block</h2>
<p style="font-weight: 300">
•  If you do not already have a connection created to your DQ Mart, create one.  Refer to the Looker documentation for instructions on creating a new connection.<br>
•  Create the 4 database views spefied in the previous section.<br>
•  Modify the file manifest.lkml. Replace the connection name with your own, and update the schema name, if necessary, with the name of the schema where you create the 4 database views.
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">Additional Information</h2>
<p style="font-weight: 300">
To keep the design simple - you will need to ensure that the Analysis name includes the DQ dimension – for example Rule_01_Validity_Email. This will ensure that the scores per DQ dimension are calculated correctly.
</p>
<h2 style="padding-bottom:0px;color:#76678b;font-weight:500">What if I find an error? Suggestions for improvements?</h2>
<p style="font-weight: 300">
Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendation, simply create a "New Issue" in the corresponding Github repo for this Block. Please be as detailed as possible in your explanation, and we'll address it as quick as we can.
</p>
