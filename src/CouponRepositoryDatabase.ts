import pgp from "pg-promise"
import CouponRepository from "./CouponRepository"

export default class CouponRepositoryDatabase implements CouponRepository{

    async getCoupon(code: string): Promise<any> {
        const connection = pgp()("postgres://postgres:firework@localhost:5432/app")
        const [couponData] = await connection.query("SELECT * FROM ecommerce.coupon WHERE code = $1", [code])
        await connection.$pool.end()
        return couponData

    }
}