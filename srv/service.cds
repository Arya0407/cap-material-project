// srv/material-service.cds

using {sap.material as db} from '../db/ZMM_AR_2703';

service MaterialService {

    entity Materials as projection on db.Material;

}