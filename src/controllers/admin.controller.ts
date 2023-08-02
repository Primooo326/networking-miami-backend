import pool from '../database';


export const create_area_experiencia = async (req, res) => {

    const { titulo,definicion } = req.body;

    try {

        const [rows]: any = await pool.query("INSERT INTO areas_experiencia (titulo,descripcion) VALUES (?,?)", [titulo,definicion]);

        res.send(rows)

    } catch (error) {
        res.send(error)
    }
};
export const read_area_experiencia = async (req, res) => {

    try {

        const [rows]: any = await pool.query("SELECT * FROM areas_experiencia");

        res.send(rows)

    } catch (error) {
        res.send(error)
    }



};

export const create_area_interes = async (req, res) => {
    const { interes } = req.body;

    try {

        const [rows]: any = await pool.query("INSERT INTO areas_intereses (interes) VALUES (?)", [interes]);

        res.send(rows)

    } catch (error) {
        res.send(error)
    }
}
export const read_area_interes = async (req, res) => {
    try {

        const [rows]: any = await pool.query("SELECT * FROM areas_intereses");

        res.send(rows.map((row) => row.interes))

    } catch (error) {
        res.send(error)
    }

}
export const create_conexion = async (req, res) => {
    const { conexion } = req.body;

    try {

        const [rows]: any = await pool.query("INSERT INTO conexiones (conexion) VALUES (?)", [conexion]);

        res.send(rows)

    } catch (error) {
        res.send(error)
    }
}
export const read_conexion = async (req, res) => {
    try {

        const [rows]: any = await pool.query("SELECT * FROM conexiones");

        res.send(rows.map((row) => row.conexion))

    } catch (error) {
        res.send(error)
    }

}
export const create_lenguaje = async (req, res) => {
    const { lenguaje } = req.body;

    try {

        const [rows]: any = await pool.query("INSERT INTO lenguajes (lenguaje) VALUES (?)", [lenguaje]);

        res.send(rows)

    } catch (error) {
        res.send(error)
    }
}
export const read_lenguaje = async (req, res) => {
    try {

        const [rows]: any = await pool.query("SELECT * FROM lenguajes");

        res.send(rows.map((row) => row.lenguaje))

    } catch (error) {
        res.send(error)
    }

}
export const create_condados = async (req, res) => {
    const { nombre,ciudades } = req.body;

    console.log(nombre,ciudades);

    try {

        const [rows]: any = await pool.query("INSERT INTO condados (nombre) VALUES (?)", [nombre]);
        ciudades.forEach(async (ciudad) => {
            await pool.query(
                'INSERT INTO ciudades (condado_id,ciudad) VALUES (?, ?)',
                [rows.insertId, ciudad],
            );
        });
        res.send(rows)

    } catch (error) {
        res.send(error)
    }
}
export const read_condados = async (req, res) => {
    try {
        const condados:any[] = []
        const [rows]: any = await pool.query("SELECT * FROM condados");
        for (const condado of rows) {

            const [ciudades]: any = await pool.query(
                'SELECT ciudad FROM ciudades WHERE condado_id = ?',
                [condado.id],
            );
            const fullcondado = {nombre:condado.nombre,ciudades:ciudades.map((row) => row.ciudad)}
            condados.push(fullcondado)
        }

        res.send(condados)

    } catch (error) {
        res.send(error)
    }

}