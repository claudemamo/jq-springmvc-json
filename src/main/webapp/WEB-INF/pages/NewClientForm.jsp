<html>
    <head>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    </head>

    <body style="text-align:center">
        <div align="center">
            <h2>New Client Form</h2>

            <form method="POST" action="submit-create-client.html">

                <table>
                    <tr>
                        <td>Client name :</td>
                        <td><input name="name"/></td>
                    </tr>

                    <tr>
                        <td>Client surname :</td>
                        <td><input name="surname"/></td>
                    </tr>

                    <tr>
                        <td>Address Line 1 :</td>
                        <td><input name="addressLine1"/></td>
                    </tr>

                    <tr>
                        <td>Address Line 2 :</td>
                        <td><input name="addressLine2"/></td>
                    </tr>

                    <tr>
                        <td>City :</td>
                        <td><input name="city"/></td>
                    </tr>

                    <tr>
                        <td>Country :</td>
                        <td><input name="country"/></td>
                    </tr>

                    <tr>
                        <td>Current Account Opening Balance :</td>
                        <td><input value="0" name="currentAccountOpeningBalance"/></td>
                    </tr>

                    <tr>
                        <td>Saving Account Opening Balance :</td>
                        <td><input value="0" name="savingAccountOpeningBalance"/></td>
                    </tr>

                    <tr>
                        <td><input type="submit"/></td>
                    </tr>
                </table>
            </form>

            <script type="text/javascript">

                $('form').submit(function () {

                    $.ajax({
                        url: $(this).attr('action'),
                        type: 'POST',
                        data: JSON.stringify($(this).serializeArray()),
                        contentType: 'application/json',
                        success: function (data) {
                            alert('Client created!! :-)')
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            alert('An error has occured!! :-(')
                        }
                    })

                    return false
                })

            </script>
        </div>
    </body>
</html>