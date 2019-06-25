package service.imp;

import java.util.List;



import dao.DaoGetMaterialList;
import dao.imp.DaoGetMaterialListImp;
import domen.Material;
import service.ServiceGetMaterialList;

public class ServiceGetMaterialImp implements ServiceGetMaterialList {

	@Override
	public List<Material> listMaterial() {
		DaoGetMaterialList dgml= new DaoGetMaterialListImp();
		List<Material> listMaterial= dgml.listMaterial();
		return listMaterial;
	}

	

}
