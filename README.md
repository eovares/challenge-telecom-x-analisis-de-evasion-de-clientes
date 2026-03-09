# TelecomX - Analisis de Evasion de Clientes (Churn)

## Proposito del Analisis

Este proyecto realiza un analisis exploratorio de datos (EDA) sobre la base de clientes de Telecom X
con el objetivo de identificar los factores que influyen en la cancelacion del servicio (churn).
Los hallazgos sirven como base para la construccion de modelos predictivos y el desarrollo
de estrategias de retencion de clientes.

## Estructura del Proyecto

```
TelecomX/
|- TelecomX_LATAM.ipynb       # Notebook principal con la solucion completa (ETL + EDA)
|- TelecomX_Data.json         # Datos fuente en formato JSON (API)
|- TelecomX_diccionario.md    # Diccionario de datos con descripcion de columnas
|- README.md                  # Este archivo
```

## Proceso ETL

### Extraccion
- Carga de datos desde `TelecomX_Data.json` usando `json` y `pd.json_normalize()`
- Estructura JSON anidada aplanada en un DataFrame de 21 columnas

### Transformacion
- Eliminacion de 224 registros con Churn vacio
- Conversion de `Charges.Total` de string a float
- Limpieza de espacios en variables categoricas
- Creacion de columna `Cuentas_Diarias` (cargo mensual / 30)
- Creacion de columna `Cantidad_Servicios`
- Renombrado de columnas al espanol
- Codificacion binaria de variables Yes/No

### Carga y Analisis
- Analisis descriptivo con `.describe()`
- Distribucion de evasion (grafico de barras y torta)
- Evasion por variables categoricas (barras agrupadas)
- Evasion por variables numericas (histogramas y boxplots)
- Matriz de correlacion y correlacion con la variable objetivo
- Analisis de servicios contratados vs tasa de evasion

## Principales Insights

- Tasa de evasion general: 26.5%
- Los contratos mes a mes concentran la mayor tasa de churn (>40%)
- Los clientes con menos de 12 meses de antiguedad son el grupo de mayor riesgo
- El pago con cheque electronico esta fuertemente asociado a la evasion
- Mayor cantidad de servicios adicionales reduce la probabilidad de churn
- El genero no es un predictor relevante de evasion

## Instrucciones para Ejecutar

### Requisitos
```
Python >= 3.8
pandas
numpy
matplotlib
seaborn
```

### Instalacion
```bash
pip install pandas numpy matplotlib seaborn
```

### Ejecucion
1. Clonar o descargar el repositorio
2. Asegurarse de que `TelecomX_Data.json` este en el mismo directorio que el notebook
3. Abrir `TelecomX_LATAM.ipynb` en Jupyter Notebook o JupyterLab
4. Ejecutar todas las celdas en orden (Kernel > Restart & Run All)

## Tecnologias Utilizadas

- Python 3.x
- Pandas para manipulacion de datos
- NumPy para calculos numericos
- Matplotlib y Seaborn para visualizaciones
- Jupyter Notebook como entorno de desarrollo

## GitHub

…or create a new repository on the command line
```
echo "# challenge-telecom-x-analisis-de-evasion-de-clientes" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/eovares/challenge-telecom-x-analisis-de-evasion-de-clientes.git
git push -u origin main
```

…or push an existing repository from the command line
```
git remote add origin https://github.com/eovares/challenge-telecom-x-analisis-de-evasion-de-clientes.git
git branch -M main
git push -u origin main
```
