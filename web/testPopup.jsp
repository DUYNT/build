<script>
$(document).ready(function() {
 
    $('#btn-add').click(function(){
        $('#select-from option:selected').each( function() {
                $('#select-to').append("<option value='"+$(this).val()+"'>"+$(this).text()+"</option>");
            $(this).remove();
        });
    });
    $('#btn-remove').click(function(){
        $('#select-to option:selected').each( function() {
            $('#select-from').append("<option value='"+$(this).val()+"'>"+$(this).text()+"</option>");
            $(this).remove();
        });
    });
 
});
</script>
<form>
  <fieldset>
 
    <select name="selectfrom" id="select-from" multiple size="5">
      <option value="1">Item 1</option>
      <option value="2">Item 2</option>
      <option value="3">Item 3</option>
      <option value="4">Item 4</option>
    </select>
 
    <a href="JavaScript:void(0);" id="btn-add">Add &raquo;</a>
    <a href="JavaScript:void(0);" id="btn-remove">&laquo; Remove</a>
 
    <select name="selectto" id="select-to" multiple size="5">
      <option value="5">Item 5</option>
      <option value="6">Item 6</option>
      <option value="7">Item 7</option>
    </select>
 
  </fieldset>
</form>