<?php 
//check if current user role is allowed access to the pages
$can_add = ACL::is_allowed("tanah/add");
$can_edit = ACL::is_allowed("tanah/edit");
$can_view = ACL::is_allowed("tanah/view");
$can_delete = ACL::is_allowed("tanah/delete");
?>
<?php
$comp_model = new SharedController;
$page_element_id = "view-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
//Page Data Information from Controller
$data = $this->view_data;
//$rec_id = $data['__tableprimarykey'];
$page_id = $this->route->page_id; //Page id from url
$view_title = $this->view_title;
$show_header = $this->show_header;
$show_edit_btn = $this->show_edit_btn;
$show_delete_btn = $this->show_delete_btn;
$show_export_btn = $this->show_export_btn;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="view"  data-display-type="table" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">View  Tanah</h4>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <?php $this :: display_page_errors(); ?>
                    <div  class="card animated fadeIn page-content">
                        <?php
                        $counter = 0;
                        if(!empty($data)){
                        $rec_id = (!empty($data['id_tanah']) ? urlencode($data['id_tanah']) : null);
                        $counter++;
                        ?>
                        <div id="page-report-body" class="">
                            <table class="table table-hover table-borderless table-striped">
                                <!-- Table Body Start -->
                                <tbody class="page-data" id="page-data-<?php echo $page_element_id; ?>">
                                    <tr  class="td-id_tanah">
                                        <th class="title"> Id Tanah: </th>
                                        <td class="value"> <?php echo $data['id_tanah']; ?></td>
                                    </tr>
                                    <tr  class="td-nama_lokasi">
                                        <th class="title"> Nama Lokasi: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['nama_lokasi']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="nama_lokasi" 
                                                data-title="Enter Nama Lokasi" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['nama_lokasi']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-kode_lokasi">
                                        <th class="title"> Kode Lokasi: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['kode_lokasi']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="kode_lokasi" 
                                                data-title="Enter Kode Lokasi" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['kode_lokasi']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-luas_tanah">
                                        <th class="title"> Luas Tanah: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['luas_tanah']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="luas_tanah" 
                                                data-title="Enter Luas Tanah" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['luas_tanah']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-tahun_pengadaan">
                                        <th class="title"> Tahun Pengadaan: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['tahun_pengadaan']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="tahun_pengadaan" 
                                                data-title="Enter Tahun Pengadaan" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['tahun_pengadaan']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-letak_alamat">
                                        <th class="title"> Letak Alamat: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['letak_alamat']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="letak_alamat" 
                                                data-title="Enter Letak Alamat" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['letak_alamat']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-tgl_sertifikat">
                                        <th class="title"> Tgl Sertifikat: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-flatpickr="{ enableTime: false, minDate: '', maxDate: ''}" 
                                                data-value="<?php echo $data['tgl_sertifikat']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="tgl_sertifikat" 
                                                data-title="Enter Tgl Sertifikat" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="flatdatetimepicker" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['tgl_sertifikat']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-no_sertifikat">
                                        <th class="title"> No Sertifikat: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['no_sertifikat']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="no_sertifikat" 
                                                data-title="Enter No Sertifikat" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['no_sertifikat']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-asal">
                                        <th class="title"> Asal: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['asal']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="asal" 
                                                data-title="Enter Asal" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['asal']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-harga">
                                        <th class="title"> Harga: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['harga']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="harga" 
                                                data-title="Enter Harga" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="number" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['harga']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                    <tr  class="td-keterangan">
                                        <th class="title"> Keterangan: </th>
                                        <td class="value">
                                            <span <?php if($can_edit){ ?> data-value="<?php echo $data['keterangan']; ?>" 
                                                data-pk="<?php echo $data['id_tanah'] ?>" 
                                                data-url="<?php print_link("tanah/editfield/" . urlencode($data['id_tanah'])); ?>" 
                                                data-name="keterangan" 
                                                data-title="Enter Keterangan" 
                                                data-placement="left" 
                                                data-toggle="click" 
                                                data-type="text" 
                                                data-mode="popover" 
                                                data-showbuttons="left" 
                                                class="is-editable" <?php } ?>>
                                                <?php echo $data['keterangan']; ?> 
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                                <!-- Table Body End -->
                            </table>
                        </div>
                        <div class="p-3 d-flex">
                            <div class="dropup export-btn-holder mx-1">
                                <button class="btn btn-sm btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-save"></i> Export
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <?php $export_print_link = $this->set_current_page_link(array('format' => 'print')); ?>
                                    <a class="dropdown-item export-link-btn" data-format="print" href="<?php print_link($export_print_link); ?>" target="_blank">
                                        <img src="<?php print_link('assets/images/print.png') ?>" class="mr-2" /> PRINT
                                        </a>
                                        <?php $export_pdf_link = $this->set_current_page_link(array('format' => 'pdf')); ?>
                                        <a class="dropdown-item export-link-btn" data-format="pdf" href="<?php print_link($export_pdf_link); ?>" target="_blank">
                                            <img src="<?php print_link('assets/images/pdf.png') ?>" class="mr-2" /> PDF
                                            </a>
                                            <?php $export_word_link = $this->set_current_page_link(array('format' => 'word')); ?>
                                            <a class="dropdown-item export-link-btn" data-format="word" href="<?php print_link($export_word_link); ?>" target="_blank">
                                                <img src="<?php print_link('assets/images/doc.png') ?>" class="mr-2" /> WORD
                                                </a>
                                                <?php $export_csv_link = $this->set_current_page_link(array('format' => 'csv')); ?>
                                                <a class="dropdown-item export-link-btn" data-format="csv" href="<?php print_link($export_csv_link); ?>" target="_blank">
                                                    <img src="<?php print_link('assets/images/csv.png') ?>" class="mr-2" /> CSV
                                                    </a>
                                                    <?php $export_excel_link = $this->set_current_page_link(array('format' => 'excel')); ?>
                                                    <a class="dropdown-item export-link-btn" data-format="excel" href="<?php print_link($export_excel_link); ?>" target="_blank">
                                                        <img src="<?php print_link('assets/images/xsl.png') ?>" class="mr-2" /> EXCEL
                                                        </a>
                                                    </div>
                                                </div>
                                                <?php if($can_edit){ ?>
                                                <a class="btn btn-sm btn-info"  href="<?php print_link("tanah/edit/$rec_id"); ?>">
                                                    <i class="fa fa-edit"></i> Edit
                                                </a>
                                                <?php } ?>
                                                <?php if($can_delete){ ?>
                                                <a class="btn btn-sm btn-danger record-delete-btn mx-1"  href="<?php print_link("tanah/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Are you sure you want to delete this record?" data-display-style="modal">
                                                    <i class="fa fa-times"></i> Delete
                                                </a>
                                                <?php } ?>
                                            </div>
                                            <?php
                                            }
                                            else{
                                            ?>
                                            <!-- Empty Record Message -->
                                            <div class="text-muted p-3">
                                                <i class="fa fa-ban"></i> No Record Found
                                            </div>
                                            <?php
                                            }
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
