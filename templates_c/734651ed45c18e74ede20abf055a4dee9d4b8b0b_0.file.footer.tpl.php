<?php
/* Smarty version 3.1.29, created on 2021-02-17 13:56:31
  from "C:\xampp\htdocs\archive\default\templates\administrator\common\footer.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_602cd3373a9612_26585444',
  'file_dependency' => 
  array (
    '734651ed45c18e74ede20abf055a4dee9d4b8b0b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\archive\\default\\templates\\administrator\\common\\footer.tpl',
      1 => 1613545730,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_602cd3373a9612_26585444 ($_smarty_tpl) {
?>
<footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Flats on Discount 2021</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['adminroot']->value;?>
/logout">Logout</a>
          </div>
        </div>
      </div>
    </div><?php }
}
