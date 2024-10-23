import React from 'react'
import HeroSection from '../components/LandingPage/HeroSection'
import CompanyTesti from '../components/LandingPage/CompanyTesti'
import AboutSection from '../components/LandingPage/AboutSection'
import ReasonSection from '../components/LandingPage/ReasonSection'
import JobSection from '../element/Landing-Page/JobSection'
import Testimonial from '../element/Landing-Page/Testimonial'
import FAQ from '../element/Landing-Page/FAQ'
import { FaWhatsapp } from 'react-icons/fa'

const LandingPage = () => {
    return (
        <div className='min-h-screen relative'>
            <section className=''>
                <div className='container'>
                    <HeroSection />
                </div>
            </section>

            <section className='bg-gradient-to-tr from-pink-100 via-neutral-100 to-slate-100'>
                <div className='container'>
                    <AboutSection />
                </div>
            </section>

            <section className='container'>
                <ReasonSection />
            </section>

            <section className='bg-gradient-to-tl from-pink-100 via-neutral-100 to-slate-100'>
                <div className='container'>
                    <CompanyTesti />
                </div>
            </section>

            <section className='container'>
                <JobSection />
            </section>

            <section className='bg-gradient-to-r from-pink-100 via-neutral-100 to-slate-100'>
                <div className='container'>
                    <Testimonial />
                </div>
            </section>

            <section className='container mb-5'>
                <FAQ />
            </section>
        </div>
    )
}

export default LandingPage
