# ITIL-Demo

How to install it:
1) Install Ant Migration Tool: https://developer.salesforce.com/docs/atlas.en-us.daas.meta/daas/forcemigrationtool_container_install.htm

2) Download (https://github.com/mgalvao2012/ITIL-Demo/archive/master.zip) and open the zip file or clone this repository (git clone https://github.com/mgalvao2012/ITIL-Demo.git)

3) Move the files to the folder "retrieveUnpackaged"

4) Configure in the build.properties the lines:<br/> 
sf.username = <strong>\<your username\></strong><br/>
sf.password = <strong>\<your password\>\<your security token\></strong><br/>

5) Access your org and include the option "Waiting on Customer" in the field Status in the object Case

6) Adjust the Page Layout Assignments:<br/>
<table>
  <tr><td>Page Layout "Change Management Case Feed"</td><td>=></td><td>Record Type "Change"</td></tr>
  <tr><td>Page Layout "Technical Issue Case Feed"</td><td>=></td><td>Record Type "Incident"</td></tr>
  <tr><td>Page Layout "Problem Management Case Feed"</td><td>=></td><td>Record Type "Problem"</td></tr>
</table>
