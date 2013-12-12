require 'sinatra'

get '/members' do
  '<!DOCTYPE html>' +
  '<html lang="fr">' +
  '<head>' +
  '  <meta charset="utf-8" />' +
  '  <title>Membres de la M2L</title>' +
  '</head>' +
  '<body>' +
  '  <h1>Liste des membres</h1>' +
  '  <ul>' +
  '    <li>Bob Martin</li>' +
  '    <li>Richard Jean-Claude</li>' +
  '  </ul>' +
  '</body>' +
  '</html>'
end

get '/ajout' do
  '<!DOCTYPE html>' +
  '<html lang="fr">' +
  '<head>' +
  '  <meta charset="utf-8" />' +
  '  <title>Membres de la M2L</title>' +
  '</head>' +
  '<body>' +
  '  <h1>Ajout d un nouveau membres </h1> '+
  '<form  method="post" action="ajout.php">'+
  '<table width="85%"" align="center" cellspacing="0" cellpadding="0" 
   class="table table-bordered"> '+
  '<tr> '  +         
  '<td>nom</td>'+
  '<td> <input type="text" name="nom"placeholder="Ex :vidonja"></td><br>'+
  '</tr>'+
  '<tr>'+
  '<td>prenom</td>'+
  '<td> <input type="text" name="prenom"placeholder="Ex :basile"></td><br>'+
  '</tr>'+
  '<td>date</td>'+
  '<td> <input type="date" name="date"placeholder="Ex :01/02/2012"></td><br>'+
  '</tr>'+
  '<tr>'+
  '<td>Adresse </td> '+
  '<td> <input type="text" name="adresse" placeholder="Ex :4 rue du marche"></td>'+
  '</tr>'+
  '<tr>'+
  '<td>email</td> '+
  '<td> <input type="email" name="email" placeholder="Ex :bas@gmail.com"></td>'+
  '</tr>'+
  '<tr>'+
  '<td>code postal </td> '+
  '<td> <input type="number" name="cp" placeholder="Ex :75018"></td>'+
  '</tr>'+
  '<tr>'+
  '<td>telephone</td> '+
  '<td> <input type="tel" name="tel" pattern="^0[1-689][0-9]{8}$" placeholder="Ex :0128453433"></td>'+
  '</tr>'+
  '<tr> 
  <td> <input type="submit" name="val" value="valider"> </td>
  </tr>'+
  '</table>'+
  '</body>' +
  '</html>'
end