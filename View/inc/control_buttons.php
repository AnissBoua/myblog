<?php if(!empty($_SESSION['is_admin'])): ?>

  <a href="<?=ROOT_URL?>admin_editPost_<?=$oPost->id?>.html"><button class="btn blue darken-3 waves-effect waves-light">Modifier</button></a>
  <a href="<?=ROOT_URL?>admin_delete_<?=$oPost->id?>.html"><button class="btn red darken-1
 waves-effect waves-light">Supprimer</button></a>

<?php endif ?>
