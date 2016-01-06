<table cellpadding="5" cellspacing="0" width="100%" id="queueList">
    <tr align="center">
        <th>${ui.message("admissionAdvisedOn")}</th>
        <th>${ui.message("Patient ID")}</th>
        <th>${ui.message("Name")}</th>
        <th>${ui.message("Age")}</th>
        <th>${ui.message("Gender")}</th>
    </tr>
    <% if (listPatientAdmission==null || listPatientAdmission=="") { %>
    <% listPatientAdmission.each { pAdmission -> %>
    <tr  align="center" class='${varStatus.index % 2 == 0 ? "oddRow" : "evenRow" } ' >
        <td><option date="${pAdmission.admissionDate }" type="textbox"/></td>
        <td>${pAdmission.patientIdentifier}</td>
        <td>
            ${pAdmission.age }
        </td>
        <td>${pAdmission.gender}</td>
        <td>${pAdmission.admissionWard.name}</td>

    </tr>
    <% } %>
    <%}%>
</table>