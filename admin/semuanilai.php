<?php 
if($ac=='') {
								echo "
									<div class='row'>
										<div class='col-md-12'>
										<div class='box box-solid'>
											<div class='box-header with-border'>
														<h3 class='box-title'><img src='../dist/img/svg/survey.svg' width='28'> DATA UJIAN AKTIF</h3>
														<div class='box-tools pull-right btn-group'>
															
														</div>
											</div><!-- /.box-header -->
											<div class='box-body'>$info";
											$jq = mysql_query("SELECT * FROM kelas");
											while($jenis = mysql_fetch_array($jq)) {
												echo "
												<div class='col-md-3'>
												  <!-- Widget: user widget style 1 -->
												  <div class='box box-widget widget-user-2'>
													<!-- Add the bg color to the header using any of the bg-* classes -->
													<div class='widget-user-header bg-teal'>
													  <div class='widget-user-image'>
														<img class='img-circle' src='../dist/img/svg/survey.svg' alt='User Avatar'>
													  </div>
													  <!-- /.widget-user-image -->
													  <h3 class='widget-user-username'>$jenis[id_kelas]</h3>
													  <h5 class='widget-user-desc'>$jenis[nama]</h5>
													</div>
													<div class='box-footer'>
													<a href='?pg=$pg&ac=lihat&idk=$jenis[id_kelas]'> <button class='btn btn-flat btn-block bg-purple'>Lihat Nilai</button></a>
													</div>
												  </div>
												  <!-- /.widget-user -->
												</div>			
												";
											}
												echo "
											</div>
										</div>
										
									</div>
								";
								
		
							} // lihat nilai
							elseif($ac=='lihat') {
								
								$id_kelas = $_GET['idk'];
								$mapel = mysql_fetch_array(mysql_query("SELECT * FROM mapel WHERE id_mapel='$id_mapel'"));
								echo "
									<div class='row'>
										<div class='col-md-12'>
											<div class='box box-solid'>
												<div class='box-header with-border bg-blue'>
													<h3 class='box-title'><img src='../dist/img/svg/ratings.svg' width='25'> NILAI $mapel[nama] $id_kelas</h3>
													<div class='box-tools pull-right btn-group'>
														
														<a class='btn btn-sm btn-primary' href='report_excel_all.php?m=$id_mapel&k=$id_kelas&i=$kode_ujian'><i class='fa fa-file-excel-o'></i> Excel</a>
														<a class='btn btn-sm btn-primary' href='?pg=nilai'><i class='fa fa-times'></i> Keluar</a>
													</div>
												</div><!-- /.box-header -->
												<div class='box-body'>
												<div class='table-responsive'>
													<table id='example' class='table table-bordered table-striped'>
														<thead>
															<tr>
																<th rowspan='3' width='5px'>#</th>
																<th style='text-align:center' rowspan='3'>No Peserta</th>
																<th style='text-align:center' rowspan='3'>Nama Peserta</th>
																<th style='text-align:center' rowspan='3'>Kelas</th>";
																$mapelQ = mysql_query("SELECT * FROM mapel a inner join nilai b ON a.id_mapel=b.id_mapel group by b.kode_ujian ");
																while($mapel=mysql_fetch_array($mapelQ)){
																echo "
																<th style='text-align:center' colspan='3'>$mapel[nama]</th>
																";
																}
																echo "
															</tr>
															";
																$kode = mysql_query("SELECT * FROM mapel a inner join nilai b ON a.id_mapel=b.id_mapel group by b.kode_ujian");
																while($mapel=mysql_fetch_array($kode)){
															echo "
																<th style='text-align:center' colspan='3'>$mapel[kode_ujian]</th>";
																}
															echo "
															</tr>
															<tr>";
																$mapelQ = mysql_query("SELECT * FROM mapel a inner join nilai b ON a.id_mapel=b.id_mapel group by b.kode_ujian ");
																while($mapel=mysql_fetch_array($mapelQ)){
															echo "
																<th style='text-align:center'>B</th>
																<th style='text-align:center'>S</th>
																<th style='text-align:center'>SKOR</th>";
																}
															echo "
															</tr>
															</thead>
															<tbody>
														";
														$siswaQ = mysql_query("SELECT * FROM siswa where id_kelas='$id_kelas' ORDER BY nama ASC");
														while($siswa = mysql_fetch_array($siswaQ)) {
															$no++;
															$ket = '';
															$esai = $lama = $jawaban = $skor = $total='--';
															
															
															
															echo "
																<tr>
																	<td>$no</td>
																	<td align='center'>$siswa[no_peserta]</td>
																	<td>$siswa[nama]</td>
																	<td align='center'>$siswa[id_kelas]</td>";
																	$mapelQ = mysql_query("SELECT * FROM mapel a inner join nilai b ON a.id_mapel=b.id_mapel group by b.kode_ujian ");
																	while($mapel=mysql_fetch_array($mapelQ)){
																		$nilaiQ = mysql_query("SELECT * FROM nilai WHERE id_ujian='$mapel[id_ujian]' AND id_siswa='$siswa[id_siswa]' and kode_ujian='$mapel[kode_ujian]'");
																		$nilaiC = mysql_num_rows($nilaiQ);
																		$nilai = mysql_fetch_array($nilaiQ);
																	echo "
																	<td align='center'>$nilai[jml_benar]</td>
																	<td align='center'>$nilai[jml_salah]</td>
																	<td align='center'>$nilai[skor]</td>";
																	}
																echo "
																</tr>
															";
														}
														echo "
														</tbody>
													</table>
													
													</div>
												</div><!-- /.box-body -->
											</div><!-- /.box -->
										</div>
									</div>
								";
							} //input esai
							elseif($ac=='esai') {
								$id_mapel = $_GET['idm'];
								$id_kelas = $_GET['idk'];
								$id_siswa = $_GET['ids'];
							if (isset($_POST['simpanesai'])){
								$jml_data = count($_POST['idsoal']);
								$id_soal= $_POST['idsoal'];
                                $nilaiesai=$_POST['nilaiesai'];
								
								for ($i=1; $i <= $jml_data; $i++){
									$exec = mysql_query("UPDATE hasil_jawaban SET nilai_esai='".$nilaiesai[$i]."' WHERE id_soal='".$id_soal[$i]."' and jenis='2' and id_mapel='$id_mapel' and id_siswa='$id_siswa'");
									(!$exec) ? $info = info("Gagal menyimpan!","NO") : jump("?pg=nilai&ac=esai&idm=$id_mapel&idk=$id_kelas&ids=$id_siswa");
								}
								$sqljumlah = mysql_query("select sum(nilai_esai) as hasil from hasil_jawaban WHERE id_mapel='$id_mapel' and id_siswa='$id_siswa' and jenis='2'");
								$nilai=mysql_fetch_array(mysql_query("select * from nilai where id_mapel='$id_mapel' and id_siswa='$id_siswa'"));
								$jumlah = mysql_fetch_array($sqljumlah);
								$bobot=mysql_fetch_array(mysql_query("select * from mapel where id_mapel='$id_mapel'"));
								$nilai_esai1 = $jumlah['hasil']*$bobot['bobot_esai']/100;
								$nilai_esai = number_format($nilai_esai1,2,'.','');
								$nilai_pg = number_format($nilai['skor'],2,'.','');
								$total=$nilai_esai+$nilai_pg;
								mysql_query("UPDATE nilai SET nilai_esai='$nilai_esai',total='$total' WHERE id_mapel='$id_mapel' and id_siswa='$id_siswa'");
							}	
								
                                $mapel = mysql_fetch_array(mysql_query("SELECT * FROM mapel WHERE id_mapel='$id_mapel'"));
								echo "
									<div class='row'>
										<div class='col-md-12'>
										 <form method='POST' class='form-horizontal' action='' enctype='multipart/form-data'>
											<div class='box box-primary'>
												<div class='box-header with-border'>
													<h3 class='box-title'>Nilai Essai $mapel[nama]</h3>
													<div class='box-tools pull-right btn-group'>
														<!--<button class='btn btn-sm btn-default' onclick=frames['frameresult'].print()><i class='fa fa-print'></i> Print</button>-->
														<!--<a class='btn btn-sm btn-success' href='report_excel.php?m=$id_mapel&k=$id_kelas'><i class='fa fa-download'></i> Excel</a>-->
														<button class='btn btn-sm btn-primary' name='simpanesai'><i class='fa fa-check'></i> Simpan</button>
														<a class='btn btn-sm btn-danger' href='?pg=nilai&ac=lihat&idm=$id_mapel&idk=$id_kelas'><i class='fa fa-times'></i></a>
													</div>
												</div><!-- /.box-header -->
												<div class='box-body'>
												<div class='table-responsive'>
													<table  class='table table-bordered table-striped'>
														<thead>
															<tr>
																<th width='5px'>#</th>
																<th>Soal & Jawaban</th>
																<th width='100px'>Input Nilai</th>
																
															</tr>
														</thead>
														<tbody>";
														$jawabanQ = mysql_query("SELECT * FROM hasil_jawaban WHERE id_mapel='$id_mapel' and id_siswa='$id_siswa' and jenis='2' ");
														while($jawaban = mysql_fetch_array($jawabanQ)) {
															$no++;
															$soal= mysql_fetch_array(mysql_query("SELECT * FROM soal WHERE id_soal='$jawaban[id_soal]' and jenis='2' and id_mapel='$id_mapel' "));
															if($soal['file']==''){$gambar='';}else{$gambar="<img src='$homeurl/$soal[file]' class='img-responsive' style='max-width:300px;'/><p>";}
															if($soal['file1']==''){$gambar2='';}else{$gambar2="<img src='$homeurl/$soal[file1]' class='img-responsive' style='max-width:300px;'/><p>";}
															echo "
																<tr><input type='hidden' value='$jawaban[id_soal]' name='idsoal[$no]'>
																	<td>$no</td>
																	<td>$gambar $gambar2 $soal[soal]<p><b>Jawaban :</b> $jawaban[esai]</td>
																	<td><input type='text' class='form-control' value='$jawaban[nilai_esai]' name='nilaiesai[$no]'></td>
																	
																</tr>
															";
														}
														echo "
														</tbody>
													</table>
													<iframe name='frameresult' src='report.php?m=$id_mapel&k=$id_kelas' style='border:none;width:1px;height:1px;'></iframe>
													</div>
												</div><!-- /.box-body -->
											</div><!-- /.box -->
											</form>
										</div>
									</div>
								";
							}
							elseif($ac=='jawaban') {
									$idmapel = $_GET['idm'];
									$kode_ujian = $_GET['idu'];
									$id_kelas = $_GET['idk'];
									$id_siswa = $_GET['ids'];
									$nilai = mysql_fetch_array(mysql_query("SELECT * FROM nilai WHERE id_siswa='$id_siswa' and id_mapel='$idmapel' and kode_ujian='$kode_ujian'"));
									$mapel=mysql_fetch_array(mysql_query("select * from mapel where id_mapel='$nilai[id_mapel]'"));
									$namamapel=mysql_fetch_array(mysql_query("select * from mata_pelajaran where kode_mapel='$mapel[nama]'"));
									$siswa = mysql_fetch_array(mysql_query("SELECT * FROM siswa WHERE id_siswa='$id_siswa'"));
									echo "
								<div class='row'>
									<div class='col-md-12'>
										<div class='box box-solid'>
											<div class='box-header with-border bg-blue'>
												<h3 class='box-title'>Data Hasil Ujian</h3>	
												<div class='box-tools pull-right btn-group'>
														<button class='btn btn-sm btn-primary' onclick=frames['framejawab'].print()><i class='fa fa-print'></i> Print</button>
														
														<a class='btn btn-sm btn-danger' href='?pg=nilai&ac=lihat&idm=$idmapel&idk=$id_kelas'><i class='fa fa-times'></i></a>
														<iframe name='framejawab' src='printjawab.php?m=$idmapel&k=$id_kelas&s=$id_siswa' style='display:none;'></iframe>
													</div>
											</div><!-- /.box-header -->
											<div class='box-body'>
											<table class='table table-bordered table-striped'> 
											<tr><th width='150'>No Induk</th><td width='10'>:</td><td>$siswa[nis]</td><td width='150' align='center'>Nilai</td></tr>
											<tr><th >Nama</th><td width='10'>:</td><td>$siswa[nama]</td><td rowspan='3' width='150' align='center' style='font-size:30px'>$nilai[skor]</td></tr>
											<tr><th >Kelas</th><td width='10'>:</td><td>$siswa[id_kelas]</td></tr>
											<tr><th >Mata Pelajaran</th><td width='10'>:</td><td>$namamapel[nama_mapel]</td></tr>
											</table><br>
												<table  class='table table-bordered table-striped'>
													<thead>
														<tr><th width='5px'>#</th>
															
															<th>Soal PG</th>
															<th style='text-align:center'>Jawab</th>
															<th style='text-align:center'>Hasil</th>
															
														</tr>
													</thead>
													<tbody>";
													$nilaix = mysql_query("SELECT * FROM hasil_jawaban WHERE id_siswa='$id_siswa' and id_mapel='$idmapel' and jenis='1' ");
													while($jawaban=mysql_fetch_array($nilaix)){
														$no++;
														$soal=mysql_fetch_array(mysql_query("select * from soal where id_soal='$jawaban[id_soal]'  "));
														if($jawaban['jawaban']==$soal['jawaban']){
															$status="<span class='text-green'><i class='fa fa-check'></i></span>";
														}else{
															$status="<span class='text-red'><i class='fa fa-times'></i></span>";
														}
													echo "
																		<tr><td>$no</td>
																			
																			<td>$soal[soal]</td>
																		    <td style='text-align:center'>$jawaban[jawaban]</td>
																			<td style='text-align:center'>$status</td>	
																			
																			
																		</tr>";
																		}
																echo "
																	</tbody>
																</table><br>
												<table  class='table table-bordered table-striped'>
													<thead>
														<tr><th width='5px'>#</th>
															
															<th>Soal Esai</th>
															
															<th style='text-align:center'>Hasil</th>
															
														</tr>
													</thead>
													<tbody>";
													$nilaiex = mysql_query("SELECT * FROM hasil_jawaban WHERE id_siswa='$id_siswa' and id_mapel='$idmapel' and jenis='2' ");
													while($jawabane=mysql_fetch_array($nilaiex)){
														$soal=mysql_fetch_array(mysql_query("select * from soal where id_soal='$jawabane[id_soal]'"));
														$nox++;
														
														
													echo "
																		<tr><td>$nox</td>
																			
																			<td>$soal[soal]
																			<p><b>jawab : </b>$jawabane[esai]</p>
																			</td>
																		    
																			<td style='text-align:center'>$jawabane[nilai_esai]</td>	
																			
																			
																		</tr>";
																		}
													echo "
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>	
										";
									
							}
							elseif($ac=='ulang') {
								$where = array(
									'id_mapel' => $_GET['idm'],
									'id_siswa' => $_GET['ids']
									
								);
								delete('nilai',$where);
								
								delete('hasil_jawaban',$where);
								delete('pengacak',$where);
								jump("?pg=$pg&ac=lihat&idm=$_GET[idm]&idk=$_GET[idk]");
							}
							elseif($ac=='selesai') {
								$idm = $_GET['idm'];
								$ids = $_GET['ids'];
								$idk = $_GET['idk'];
								$idu = $_GET['idu'];
								$where = array(
									'id_mapel' => $idm,
									'id_siswa' => $ids
								);
								$benar = $salah = 0;
								$mapel = fetch('mapel',array('id_mapel'=>$idm));
								$siswa = fetch('siswa',array('id_siswa'=>$ids));
								$ceksoal = select('soal',array('id_mapel'=>$idm));
								foreach($ceksoal as $getsoal) {
									$w = array(
										'id_siswa' => $ids,
										'id_mapel' => $idm,
										'id_soal' => $getsoal['id_soal']
									);
									$cekjwb = rowcount('jawaban',$w);
									if($cekjwb<>0) {
										$getjwb = fetch('jawaban',$w);
										($getjwb['jawaban']==$getsoal['jawaban']) ? $benar++ : $salah++;
									} else {
										$salah++;
									}
								}
								$bagi = $mapel['jml_soal']/100;
								$skor = $benar/$bagi;
								$data = array(
									'ujian_selesai' => $datetime,
									'jml_benar' => $benar,
									'jml_salah' => $salah,
									'skor' => $skor
								);
								update('nilai',$data,$where);
								delete('pengacak',$where);
								delete('pengacakopsi',$where);
								jump("?pg=$pg&ac=lihat&idm=$idm&idk=$idk");
							}
							?>