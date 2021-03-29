<?php
$this->load->view('templates/admin/head');
$this->load->view('templates/admin/topbar');
$this->load->view('templates/admin/sidebar');
$this->load->view('templates/admin/breadcrumb');
?>

<div class="container">
    <?= $this->session->flashdata('menu'); ?>

    <form action="" method="post">
        <div class="card p-4">
            <div class="container">
                <h5 class="text-center">FORM TAMBAH MISSION</h5>
                <hr>
                <div class="form-group">
                    <label for="bagian">BAGIAN</label>
                    <select class="form-control" name="bagian" id="bagian">
                        <option value="Elektrik">Elektrik</option>
                        <option value="Mekanik">Mekanik</option>
                        <option value="Operator">Operator</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="rencana">RENCANA</label>
                    <textarea name="rencana" id="rencana" class="form-control" cols="30" rows="10"></textarea>
                </div>
                <label>URGENSI :</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="urgensi" id="inlineRadio1" value="1-3 Hari">
                    <label class="form-check-label text-danger" for="inlineRadio1">1-3 Hari</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="urgensi" id="inlineRadio2" value="1-2 Minggu">
                    <label class="form-check-label text-warning" for="inlineRadio2">1-2 Minggu</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="urgensi" id="inlineRadio3" value="1-3 Bulan">
                    <label class="form-check-label text-primary" for="inlineRadio3">1-3 Bulan</label>
                </div>

            </div>
            <hr>
            <div class="text-center">
                <button class="btn btn-primary">SIMPAN</button>
            </div>
        </div>
    </form>
</div>
<?php $this->load->view('templates/admin/footer'); ?>