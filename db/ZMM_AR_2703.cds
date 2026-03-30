namespace com.project.material;
entity ZMARA {
   key MATNR : String(18);      // Material Number
       MTART : String(4);       // Material Type
       MBRSH : String(1);       // Industry Sector
       LAEDA : Date;            // Last Change Date (Date type in CAP)
       PSTAT : String(15);      // Maintenance Status
       MATKL : String(9);       // Material Group

     
       toZMARC : Association to many ZMARC on toZMARC.MATNR = $self.MATNR;
       toZMARD : Association to many ZMARD on toZMARD.MATNR = $self.MATNR;
       toZMAKTX : Association to many ZMAKTX on toZMAKTX.MATNR = $self.MATNR;
}
entity ZMARC{

   key MATNR : String(20); //FK-->ZMARA.MATNR.
   key WERKS : String(4);  //Plant Code (eg. 201,202, etc..).
       MMSTA : String(1);  //Plant Status : W=Working, B=Broken.

//FK back-reference to ZMARA
   
   toZMARA : Association to ZMARA on toZMARA.MATNR = MATNR;

}
entity ZMARD {
    key MATNR : String(20);    // FK → ZMARA.MATNR
    key WERKS : String(4);     // Plant Code
    key LGORT : String(10);    // Storage Location (e.g. RM1, KRM1)

        // FK back-reference to ZMARA
        toZMARA : Association to ZMARA on toZMARA.MATNR = MATNR;
}
entity ZMAKTX {
    key MATNR : String(20);    // FK → ZMARA.MATNR
    key SPRAS : String(2);     // Language: EN=English
        MAKTX : String(100);   // Material Description (human-readable name)

        // FK back-reference to ZMARA
        toZMARA : Association to ZMARA on toZMARA.MATNR = MATNR;
}