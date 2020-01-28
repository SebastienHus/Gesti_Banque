<style><%@include file="WEB-INF/components/head/header.jsp"%></style>
 
<!DOCTYPE html>

<html>


	
	<body>

	
	
<div id="logfield" class="containerfluid">
    
    <div class="row  justify-content-center" id="logfield">
        <fieldset id="logfield"  class="col-md-6 align-self-center f1">
                <legend id="textInput">Se connecter</legend>
                
                <form name="formlog" id="logfield" class="border border-success p-5" method="POST" name="Connexion" action="" required>
                    <div id="logfield" class="row">
                        <div class="col-md-6">
                       
               
                <label for="id_user" id="textInput">identifiant:</label>
                <input type="text" id="textInput" class="form-control mb-1" placeholder="" name="idUser" required>
            
                <label for="mp_user" id="textInput">Mot de passe:</label>
                <input type="password" id="textInput" class="form-control mb-1" placeholder="" name="mpUser" required>
            </div>
            </div>
            <br>
                <input class="btn btn-success btn-block my-4" id="button3" type="submit" value="Connexion">
                <button type="button" id="button3" class="btn btn-secondary btn-lg btn-block my-4"><a href="index.jsp">Retour</a></button>
            </form>
            <a href="index.jsp" id="textInput">mot de passe oublié ?</a>
        </fieldset>	
    </div>    
</div>

	</body>

</html>