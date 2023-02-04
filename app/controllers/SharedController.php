<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * barang_Ruang_option_list Model Action
     * @return array
     */
	function barang_Ruang_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_ruangan AS value,nama_ruangan AS label FROM ruangan ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * barang_Kondisi_option_list Model Action
     * @return array
     */
	function barang_Kondisi_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT kondisi AS value,kondisi AS label FROM kondisi_barang ORDER BY id ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_user_role_id_option_list Model Action
     * @return array
     */
	function user_user_role_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT role_id AS value, role_name AS label FROM roles";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_username_value_exist Model Action
     * @return array
     */
	function user_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * user_email_value_exist Model Action
     * @return array
     */
	function user_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("user");
		return $exist;
	}

	/**
     * peminjaman_nama_barang_option_list Model Action
     * @return array
     */
	function peminjaman_nama_barang_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT nama_barang AS value,nama_barang AS label FROM barang ORDER BY nama_barang ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * getcount_barang Model Action
     * @return Value
     */
	function getcount_barang(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM barang";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_ruangan Model Action
     * @return Value
     */
	function getcount_ruangan(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM ruangan";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_buku Model Action
     * @return Value
     */
	function getcount_buku(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM buku";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

	/**
     * getcount_peminjaman Model Action
     * @return Value
     */
	function getcount_peminjaman(){
		$db = $this->GetModel();
		$sqltext = "SELECT COUNT(*) AS num FROM peminjaman";
		$queryparams = null;
		$val = $db->rawQueryValue($sqltext, $queryparams);
		
		if(is_array($val)){
			return $val[0];
		}
		return $val;
	}

}
