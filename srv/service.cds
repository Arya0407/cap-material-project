// srv/material-service.cds

using {com.project.material as db} from '../db/ZMM_AR_2703';

service MaterialService {

    entity ZMARA as projection on db.ZMARA;
    entity ZMARC as projection on db.ZMARC;

}