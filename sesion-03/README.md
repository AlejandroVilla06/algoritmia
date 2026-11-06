# Sesion 03 — Repetir y Descomponer

## Traza: CajeroParqueadero

Datos de prueba: `5000`, `8000`, `3000`, `0`

| Paso | Linea         | valor | total | carros | Pantalla                          |
|------|---------------|-------|-------|--------|-----------------------------------|
| 1    | total <- 0    | —     | 0     | —      |                                   |
| 2    | carros <- 0   | —     | 0     | 0      |                                   |
| 3    | Leer valor    | 5000  | 0     | 0      | Valor cobrado (0 para cerrar...): |
| 4    | valor <> 0?   | 5000  | 0     | 0      | Verdadero → entra al ciclo        |
| 5    | total + valor | 5000  | 5000  | 0      |                                   |
| 6    | carros + 1    | 5000  | 5000  | 1      |                                   |
| 7    | Leer valor    | 8000  | 5000  | 1      | Valor cobrado (0 para cerrar...): |
| 8    | valor <> 0?   | 8000  | 5000  | 1      | Verdadero → repite                |
| 9    | total + valor | 8000  | 13000 | 1      |                                   |
| 10   | carros + 1    | 8000  | 13000 | 2      |                                   |
| 11   | Leer valor    | 3000  | 13000 | 2      | Valor cobrado (0 para cerrar...): |
| 12   | valor <> 0?   | 3000  | 13000 | 2      | Verdadero → repite                |
| 13   | total + valor | 3000  | 16000 | 2      |                                   |
| 14   | carros + 1    | 3000  | 16000 | 3      |                                   |
| 15   | Leer valor    | 0     | 16000 | 3      | Valor cobrado (0 para cerrar...): |
| 16   | valor <> 0?   | 0     | 16000 | 3      | Falso → sale del ciclo            |
| 17   | Escribir      | 0     | 16000 | 3      | Carros atendidos: 3               |
| 18   | Escribir      | 0     | 16000 | 3      | Total recaudado: $16000           |

## Traza: Piramide

Dato de prueba: `n = 4`

| fila | Espacios (n - fila) | Asteriscos (2 * fila - 1) | Salida        |
|------|---------------------|---------------------------|---------------|
| 1    | 3                   | 1                         | `   *`        |
| 2    | 2                   | 3                         | `  ***`       |
| 3    | 1                   | 5                         | ` *****`      |
| 4    | 0                   | 7                         | `*******`     |

Detalle del ciclo interno (fila 2, n = 4):

| Ciclo      | j = 1 | j = 2 | j = 3 | Resultado |
|------------|-------|-------|-------|-----------|
| Espacios   | " "   | " "   | —     | `  `      |
| Asteriscos | "*"   | "*"   | "*"   | `***`     |

## Arbol de componentes: FacturaRestaurante

```
FacturaRestaurante (Algoritmo principal)
├── LeerPedido()
│   └── Retorna: subtotal
├── CalcularPorcentaje(subtotal, 8)
│   └── Retorna: impuesto
├── CalcularPorcentaje(subtotal, 10)
│   └── Retorna: propina
└── ImprimirFactura(subtotal, impuesto, propina)
    └── Muestra: factura desglosada con total
```

Cada SubProceso tiene una responsabilidad unica.
`CalcularPorcentaje` se reutiliza dos veces con diferentes parametros.
