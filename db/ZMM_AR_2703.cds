namespace sap.material;
entity Material {
    MATNR : String(18);      // Material Number
    MTART : String(4);       // Material Type
    MBRSH : String(1);       // Industry Sector
    LAEDA : Date;            // Last Change Date (Date type in CAP)
    PSTAT : String(15);      // Maintenance Status
    MATKL : String(9);       // Material Group
}