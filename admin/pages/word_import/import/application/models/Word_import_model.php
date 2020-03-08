<?php
Class word_import_model extends CI_Model
{

    function import_ques($question){
        //echo "<pre>"; print_r($question);exit;

        $questioncid=$this->input->post('cid');
        $questiondid=$this->input->post('lid');
        $idmapel=$this->input->post('id_mapel');
        $no = 0;
        foreach($question as $key => $singlequestion){
            //$ques_type=

            //echo $ques_type;

            if($key != 0){
                //echo "<pre>";print_r($singlequestion);
                $question= str_replace('"','&#34;',$singlequestion['question']);
                $question= str_replace("`",'&#39;',$question);
                $question= str_replace("‘",'&#39;',$question);
                $question= str_replace("’",'&#39;',$question);
                $question= str_replace("â€œ",'&#34;',$question);
                $question= str_replace("â€˜",'&#39;',$question);
                $question= str_replace("â€™",'&#39;',$question);
                $question= str_replace("â€",'&#34;',$question);
                $question= str_replace("'","&#39;",$question);
                $question= str_replace("&amp;lt;br&amp;gt;","<br>",$question);
                $question= str_replace("\\n","<br>",$question);
                //print_r($question);exit;

                //print_r($singlequestion['description']);
                $description= str_replace('"','&#34;',$singlequestion['description']);
                $description= str_replace("`",'&#39;',$description);
                $description= str_replace("‘",'&#39;',$description);
                $description= str_replace("’",'&#39;',$description);
                $description= str_replace("â€œ",'&#34;',$description);
                $description= str_replace("â€˜",'&#39;',$description);
                //print_r($descirption);exit;



                $description= str_replace("â€™",'&#39;',$description);
                $description= str_replace("â€",'&#34;',$description);
                $description= str_replace("'","&#39;",$description);
                $description= str_replace("\n","<br>",$description);



                $option_count=count($singlequestion['option']);
                $ques_type="1";
                if($option_count!="0"){
                    if($singlequestion['correct']!=""){
                        $ques_type="1";//tipe soal dengan satu kunci jawaban
                    }else{
                        //tidak ada kunci jawaban
                        echo "<pre> Ada soal yang tidak memiliki kunci jawaban, perbaiki.";exit;
                    }
                }else{
                    //tidak ada pilihan ganda (esai)
                    $ques_type="2";
                }

                $kunci=trim($singlequestion['correct']);
                $corect_position=array(
                        'A' => '0',
                        'B' => '1',
                        'C' => '2',
                        'D' => '3',
                        'E' => '4'
                        );
                $no=$no+1;
                $insert_data = array(
                'nomor' => $no,
                'id_mapel' => $idmapel,
                'jenis' => $ques_type,
                'soal' =>$question,
                'file' =>$description,
                'jawaban' => $kunci,
                );


                //echo "<pre>";print_r($insert_data);exit;
                // echo "<pre>";print_r($this->db);exit;
                if($this->db->insert('soal',$insert_data)){
                    $qid=$this->db->insert_id();

                    if($ques_type=="1"){
                        $update_data=array();
                        foreach($singlequestion['option'] as $key=>$value){
                            if(strpos($value,'FileO:')!==false){//jika pilihan berupa gambar
                                $filename=substr($value,strpos($value,'FileO:')+6);

                                switch($key){
                                    case 0:
                                        $update_data["fileA"]=$filename;
                                        break;
                                    case 1:
                                        $update_data["fileB"]=$filename;
                                        break;
                                    case 2:
                                        $update_data["fileC"]=$filename;
                                        break;
                                    case 3:
                                        $update_data["fileD"]=$filename;
                                        break;
                                    case 4:
                                        $update_data["fileE"]=$filename;
                                        break;
                                }

                            }else{//pilihan bukan gambar

                                switch($key){
                                    case 0:
                                        $update_data["pilA"]=$value;
                                        break;
                                    case 1:
                                        $update_data["pilB"]=$value;
                                        break;
                                    case 2:
                                        $update_data["pilC"]=$value;
                                        break;
                                    case 3:
                                        $update_data["pilD"]=$value;
                                        break;
                                    case 4:
                                        $update_data["pilE"]=$value;
                                        break;
                                }

                            }
                        }//endfor option
                        //print_r($update_data);
                        if(!$this->db->update("soal",$update_data,"id_soal=".$qid)){
                            echo $this->db->error();exit;
                        }
                    }

                    if($ques_type=="2"){

                    }

                }
                //insert soal gagal
                else{
                    echo "<pre> Gagal mengimport soal.</pre>";exit;
                }

            }//key==0



        }

    }

}

?>


