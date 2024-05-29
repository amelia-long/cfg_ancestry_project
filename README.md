# cfg_ancestry_project

<b>Ancestor Mapper MySQL db project</b>
<br>End of course project for CFG Kickstarter Intro to Data & SQL, May 2024
<br>
<br>A db that allows me to analyse my family tree in terms of the places ancestors lived, with what3words map links.
<br>
<ul>
  <li>ancestry_project_backup.sql (mysqldump backup)</li>
  <li>ancestry_project_queries.sql (views and various other queries)</li>
  <li>ancestry_project_sproc_function_triggers.sql (sproc, function and trigger code)</li>
  <li>ancestry_project_eer_diagram.png (db structure)</li>
</ul>

<table>
  <tr>
    <th>Core Requirements</th>
    <th></th>
  </tr>
  <tr>
    <td>EER Diagram</td>
    <td>See ancestry_project_eer_diagram.png</td>
  </tr>
  <tr>
    <td>Create relational database with minimum 5 tables</td>
    <td>See EER/ancestry_project_backup.sql</td>
  </tr>
    <tr>
    <td>Set primary and foreign key constraints</td>
    <td>See ancestry_project_eer_diagram.png</td>
  </tr>
      <tr>
    <td>Simple view combining tables</td>
    <td>person_summary<br>See ancestry_project_queries.sql</td>
  </tr>
        <tr>
    <td>Subquery</td>
    <td>See ancestry_project_queries.sql</td>
  </tr>
          <tr>
    <td>Stored Function</td>
    <td>age_calc<br>See ancestry_project_sproc_function_triggers.sql</td>
  </tr>
  <tr>
    <th>Advanced Requirements</th>
    <th></th>
  </tr>
          <tr>
    <td>Stored Procedure</td>
    <td>sp_missing_records<br>See ancestry_project_sproc_function_triggers.sql</td>
  </tr>
            <tr>
    <td>Group by and Having</td>
    <td>See ancestry_project_queries.sql</td>
  </tr>
                <tr>
    <td>Complex view</td>
    <td>locations_list<br>See ancestry_project_queries.sql</td>
  </tr>
              <tr>
    <td>Triggers</td>
    <td>year_matcher_u/year_matcher_i<br>See ancestry_project_sproc_function_triggers.sql</td>
  </tr>
                <tr>
    <td>Events</td>
    <td>N/A</td>
  </tr>
</table>



