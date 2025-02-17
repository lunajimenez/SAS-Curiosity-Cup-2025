# **Análisis de Ciclones Tropicales con SAS Viya, SAS Viya Workbench y Python**  

## **Descripción del Proyecto**
Este repositorio contiene los códigos y la documentación del trabajo realizado para la **hackathon SAS Curiosity Cup 2025**. Nuestro análisis se centra en la clasificación de ciclones por su naturaleza, predicción de landfall y clasificación de intensidad de ciclones tropicales utilizando **SAS Viya**, **SAS Viya Workbench** y **Python**.

## **Fuente de Datos**
Trabajamos con datos del proyecto **[International Best Track Archive for Climate Stewardship (IBTrACS)](https://www.ncei.noaa.gov/products/international-best-track-archive)**, que proporciona la colección más completa de ciclones tropicales a nivel mundial. Este dataset es un esfuerzo conjunto con la **World Meteorological Organization (WMO)** y múltiples agencias meteorológicas globales.

**Versión utilizada:** [IBTrACS Version 4r01](https://www.ncei.noaa.gov/sites/g/files/anmtlf171/files/2024-07/IBTrACS_version4r01_Technical_Details.pdf)  
**Documentación de columnas:** [Ver aquí](https://www.ncei.noaa.gov/sites/g/files/anmtlf171/files/2025-02/IBTrACS_v04r01_column_documentation.pdf)  
**Dataset analizado (desde 1980):** [`ibtracs.since1980.list.v04r01.csv`](https://www.ncei.noaa.gov/data/international-best-track-archive-for-climate-stewardship-ibtracs/v04r01/access/csv/ibtracs.since1980.list.v04r01.csv)

## **Tecnologías Utilizadas**
- `SAS Viya`
- `SAS Viya Workbench`
- `Python`
- `Jupyter Notebooks`

## **Modelos Desarrollados**
### **Clasificación de la Naturaleza del Ciclón**
**Variable dependiente:** `NATURE`  
**Variables independientes:**  
```
WMO_WIND, WMO_PRES, BASIN,
USA_R34_NE, USA_R34_SE, USA_R34_SW, USA_R34_NW,
USA_R50_NE, USA_R50_SE, USA_R50_SW, USA_R50_NW,
USA_R64_NE, USA_R64_SE, USA_R64_SW, USA_R64_NW
```

### **Predicción de Landfall (Impacto en Tierra)**
**Variable dependiente:** `LANDFALL`  
**Variables independientes:**  
```
LAT, LON, DIST2LAND, STORM_SPEED,
STORM_DIR, BASIN, WMO_WIND, WMO_PRES
```

### **Clasificación / Predicción de Intensidad**
**Variable dependiente:** `USA_SSHS`  
**Variables independientes:**  
```
WMO_WIND, WMO_PRES, BASIN,
USA_R34_NE, USA_R34_SE, USA_R34_SW, USA_R34_NW,
USA_R50_NE, USA_R50_SE, USA_R50_SW, USA_R50_NW,
USA_R64_NE, USA_R64_SE, USA_R64_SW, USA_R64_NW
```

### **Predicción de la evolución temporal del ciclón**
**Variables dependientes:**
```
WMO_WIND, WMO_PRES, LAT, LON 
```
**Variables independientes:**  
```
ISO_TIME, WMO_PRES, WMO_WIND, BASIN,
LAT, LON, STORM_SPEED, STORM_DIR
```

## **Procesamiento y Modelado**
**Filtrado de Datos**: En el archivo `datafiltrada_sas.ipynb`, realizamos la selección de variables y limpieza de datos.  
**Modelos de Predicción y Clasificación**: Parte del trabajo realizado en `modelos.sas` usando **SAS Viya** y **SAS Viya Workbench**.

## **Colaboradores**
- [**María Camila García**](https://github.com/mcamilags)  
- [**Michael Taboada**](https://github.com/MichaelTaboada2003)  
- [**Leonardo Muñoz**](https://github.com/DonParry472)
