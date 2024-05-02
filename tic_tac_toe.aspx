<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tic_tac_toe.aspx.cs" Inherits="tic_tac_toe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tic Tac Toe</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        var currentPlayer = "X";

        function takeTurn(button) {
            if (button.innerText == "") {
                button.innerText = currentPlayer;
                checkWin();
                togglePlayer();
            }
        }

        function togglePlayer() {
            currentPlayer = currentPlayer === "X" ? "O" : "X";
        }

        function checkWin() {
            var buttons = document.getElementsByClassName("btn");
            var lines = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];

            for (var i = 0; i < lines.length; i++) {
                var [a, b, c] = lines[i];
                if (buttons[a].innerText !== "" && buttons[a].innerText === buttons[b].innerText && buttons[a].innerText === buttons[c].innerText) {
                    alert(buttons[a].innerText + " wins!");
                    return;
                }
            }

            var tie = true;
            for (var i = 0; i < buttons.length; i++) {
                if (buttons[i].innerText === "") {
                    tie = false;
                    break;
                }
            }

            if (tie) {
                alert("It's a tie!");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center">Tic Tac Toe</h1>
            <div class="row text-center">
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
            </div>
            <div class="row text-center">
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
            </div>
            <div class="row text-center">
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
                <div class="col-xs-4"><button class="btn btn-default btn-lg" onclick="takeTurn(this)"></button></div>
            </div>
        </div>
    </form>
</body>
</html>