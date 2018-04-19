# ITIL-Demo

<h3>This is a example of three basic ITIL processes: Incident Management, Problem Management and Change Management, running on Salesforce Org<br/>
For production purpose it is recommended to make the right adjustments for each organisation.</h3>
It's recommended to test it first in a Developer Org or Sandbox before to try anything in the production org.

How to install it:
1) Install Ant Migration Tool: https://developer.salesforce.com/docs/atlas.en-us.daas.meta/daas/forcemigrationtool_container_install.htm

2) Download (https://github.com/mgalvao2012/ITIL-Demo/archive/master.zip) and open the zip file or clone this repository (git clone https://github.com/mgalvao2012/ITIL-Demo.git)

3) Move the files to the folder "\<Ant Migration Tool Folder\>\\sample\\retrieveUnpackaged"

4) Configure in the build.properties the lines:<br/> 
sf.username = <strong>\<your username\></strong><br/>
sf.password = <strong>\<your password\>\<your security token\></strong><br/>
  
5) Access your org and include the option "Waiting on Customer" in the field Status in the object Case

6) Execute the command <strong>ant deployUnpackaged</strong> from the folder \<Ant Migration Tool Folder\>\\sample

7) Adjust the Page Layout Assignments:<br/>
<table>
  <tr><td>Page Layout "Change Management Case Feed"</td><td>=></td><td>Record Type "Change"</td></tr>
  <tr><td>Page Layout "Technical Issue Case Feed"</td><td>=></td><td>Record Type "Incident"</td></tr>
  <tr><td>Page Layout "Problem Management Case Feed"</td><td>=></td><td>Record Type "Problem"</td></tr>
</table>

8) Access your org via browser and test it.
