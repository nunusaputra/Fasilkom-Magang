import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { useNavigate } from 'react-router-dom'
import Loading from '../../components/Loading'
import DrawerMobile from '../../components/Drawer/DrawerMobile'
import Drawer from '../../components/Drawer/Drawer'
import KaprodiProfile from '../../pages/KaprodiDashboard/KaprodiProfile'

const KaprodiProfileLayouts = () => {
    const navigate = useNavigate()
    const { user } = useSelector((state) => state.auth)
    const [isLoading, setIsLoading] = useState(true)

    useEffect(() => {
        if (user && user.role !== "kaprodi") {
            navigate('/forbidden')
        }
        requestAnimationFrame(() => {
            setTimeout(() => {
                setIsLoading(false)
            }, 2000);
        })
    }, [isLoading, user, navigate])

    return (
        <div>
            {isLoading ? (
                <Loading />
            ) : (
                <>
                    <DrawerMobile />
                    <main className='w-full min-h-screen'>
                        <div className='hidden sm:block'>
                            <Drawer />
                        </div>
                        <section className='sm:ml-20 sm:p-10'>
                            <KaprodiProfile />
                        </section>
                    </main>
                </>
            )}
        </div>
    )
}

export default KaprodiProfileLayouts