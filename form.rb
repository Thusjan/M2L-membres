require 'app12.rb'

get '/ajout' do
  '<!DOCTYPE html>' +
  '<html lang="fr">' +
  '<head>' +
  '  <meta charset="utf-8" />' +
  '  <title>Membres de la M2L</title>' +
  '</head>' +
  '<body>' +
  'Ajout d un nouveau membres<br>'
  '<form  method="app12.rb" action="ajout.php">'+
  '<table> '+
  '<tr> '  +         
  '<td>nom</td>'+
  '<td> <input type="text" name="nom"placeholder="Ex :vidonja"></td><br>'+
  '</tr>'
  '<tr>'
  '<td>prenom</td>'+
  '<td> <input type="text" name="prenom"placeholder="Ex :basile"></td><br>'+
  '</tr>'+
  '<td>date</td>'+
  '<td> <input type="date" name="date"placeholder="Ex :01/02/2012"></td><br>'+
  '</tr>'+
  '</table>'+
  '    <input type="submit" name="form.rb" value="valider">'+
  '</body>' +
  '</html>'
end