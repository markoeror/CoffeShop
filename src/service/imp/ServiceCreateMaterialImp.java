package service.imp;

import dao.DaoCreateMaterial;
import dao.imp.DaoCreateMaterialImp;
import domen.Material;
import service.ServiceCreateMaterial;

public class ServiceCreateMaterialImp implements ServiceCreateMaterial {

	@Override
	public void CreateMaterial(Material m) {
		DaoCreateMaterial dcm= new DaoCreateMaterialImp();
		dcm.CreateMaterial(m);
	}

}
