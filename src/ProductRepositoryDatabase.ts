import pgp from "pg-promise"
import ProductRepository from "./ProductRepository"

export default class ProductRepositoryDatabase implements ProductRepository{

    async getProduct (idProduct: number): Promise<any> {
        const connection = pgp()("postgres://postgres:firework@localhost:5432/app")
        const [productData] = await connection.query("SELECT * FROM ecommerce.product WHERE id_product = $1", [idProduct])
        await connection.$pool.end()
        return productData
    }
}