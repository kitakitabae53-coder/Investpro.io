<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InvestPro - Platform Investasi Modern</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap');
        
        * {
            font-family: 'Inter', sans-serif;
        }
        
        .gradient-bg {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }
        
        .card-hover {
            transition: all 0.3s ease;
        }
        
        .card-hover:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
        }
        
        .scroll-smooth {
            scroll-behavior: smooth;
        }
        
        .fade-in {
            animation: fadeIn 0.8s ease-in;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .nav-link {
            position: relative;
            transition: color 0.3s ease;
        }
        
        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: -5px;
            left: 50%;
            background-color: #667eea;
            transition: all 0.3s ease;
            transform: translateX(-50%);
        }
        
        .nav-link:hover::after {
            width: 100%;
        }
    </style>
</head>
<body class="scroll-smooth">
    <!-- Navigation -->
    <nav class="fixed w-full bg-white shadow-lg z-50">
        <div class="container mx-auto px-6 py-4">
            <div class="flex items-center justify-between">
                <div class="flex items-center">
                    <i class="fas fa-chart-line text-3xl text-purple-600 mr-3"></i>
                    <span class="text-2xl font-bold text-gray-800">InvestPro</span>
                </div>
                <div class="hidden md:flex space-x-8">
                    <a href="#beranda" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Beranda</a>
                    <a href="#fitur" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Fitur</a>
                    <a href="#kalkulator" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Kalkulator</a>
                    <a href="#performa" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Performa</a>
                    <a href="#tim" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Tim Kami</a>
                    <a href="#kontak" class="nav-link text-gray-700 hover:text-purple-600 font-medium">Kontak</a>
                </div>
                <button class="md:hidden" onclick="toggleMobileMenu()">
                    <i class="fas fa-bars text-2xl text-gray-700"></i>
                </button>
            </div>
        </div>
        <!-- Mobile Menu -->
        <div id="mobileMenu" class="hidden md:hidden bg-white border-t">
            <div class="px-6 py-4 space-y-3">
                <a href="#beranda" class="block text-gray-700 hover:text-purple-600">Beranda</a>
                <a href="#fitur" class="block text-gray-700 hover:text-purple-600">Fitur</a>
                <a href="#kalkulator" class="block text-gray-700 hover:text-purple-600">Kalkulator</a>
                <a href="#performa" class="block text-gray-700 hover:text-purple-600">Performa</a>
                <a href="#tim" class="block text-gray-700 hover:text-purple-600">Tim Kami</a>
                <a href="#kontak" class="block text-gray-700 hover:text-purple-600">Kontak</a>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="beranda" class="gradient-bg text-white pt-24 pb-20">
        <div class="container mx-auto px-6">
            <div class="flex flex-col md:flex-row items-center">
                <div class="md:w-1/2 mb-10 md:mb-0 fade-in">
                    <h1 class="text-4xl md:text-6xl font-bold mb-6">Investasi Cerdas untuk Masa Depan Gemilang</h1>
                    <p class="text-xl mb-8 text-gray-200">Platform investasi modern dengan teknologi AI untuk membantu Anda mencapai kebebasan finansial</p>
                    <div class="flex flex-col sm:flex-row gap-4">
                        <button onclick="scrollToSection('kalkulator')" class="bg-white text-purple-600 px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300">
                            Mulai Investasi
                        </button>
                        <button onclick="scrollToSection('fitur')" class="border-2 border-white text-white px-8 py-4 rounded-lg font-semibold hover:bg-white hover:text-purple-600 transition duration-300">
                            Pelajari Lebih Lanjut
                        </button>
                    </div>
                </div>
                <div class="md:w-1/2">
                    <img src="https://picsum.photos/seed/investment/600/400" alt="Investment" class="rounded-lg shadow-2xl">
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="py-16 bg-gray-50">
        <div class="container mx-auto px-6">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8 text-center">
                <div class="fade-in">
                    <div class="text-4xl font-bold text-purple-600 mb-2">10K+</div>
                    <div class="text-gray-600">Investor Aktif</div>
                </div>
                <div class="fade-in">
                    <div class="text-4xl font-bold text-purple-600 mb-2">500B+</div>
                    <div class="text-gray-600">Total Aset (Rp)</div>
                </div>
                <div class="fade-in">
                    <div class="text-4xl font-bold text-purple-600 mb-2">15%</div>
                    <div class="text-gray-600">Return Rata-rata</div>
                </div>
                <div class="fade-in">
                    <div class="text-4xl font-bold text-purple-600 mb-2">99.9%</div>
                    <div class="text-gray-600">Keamanan</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="fitur" class="py-20">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 mb-4">Fitur Unggulan Kami</h2>
                <p class="text-xl text-gray-600">Teknologi terdepan untuk pengalaman investasi terbaik</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="card-hover bg-white p-8 rounded-xl shadow-lg">
                    <div class="text-purple-600 text-4xl mb-4">
                        <i class="fas fa-robot"></i>
                    </div>
                    <h3 class="text-2xl font-semibold mb-4">AI-Powered Analytics</h3>
                    <p class="text-gray-600">Analisis pasar real-time dengan kecerdasan buatan untuk prediksi investasi yang akurat</p>
                </div>
                <div class="card-hover bg-white p-8 rounded-xl shadow-lg">
                    <div class="text-purple-600 text-4xl mb-4">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3 class="text-2xl font-semibold mb-4">Keamanan Terjamin</h3>
                    <p class="text-gray-600">Enkripsi tingkat bank dan perlindungan data pribadi Anda dengan standar internasional</p>
                </div>
                <div class="card-hover bg-white p-8 rounded-xl shadow-lg">
                    <div class="text-purple-600 text-4xl mb-4">
                        <i class="fas fa-chart-pie"></i>
                    </div>
                    <h3 class="text-2xl font-semibold mb-4">Portfolio Diversifikasi</h3>
                    <p class="text-gray-600">Akses ke berbagai instrumen investasi dari saham, reksa dana, hingga cryptocurrency</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Investment Calculator -->
    <section id="kalkulator" class="py-20 bg-gray-50">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 mb-4">Kalkulator Investasi</h2>
                <p class="text-xl text-gray-600">Hitung potensi keuntungan investasi Anda</p>
            </div>
            <div class="max-w-4xl mx-auto bg-white rounded-xl shadow-lg p-8">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                        <div class="mb-6">
                            <label class="block text-gray-700 font-semibold mb-2">Jumlah Investasi Awal (Rp)</label>
                            <input type="number" id="initialAmount" class="w-full px-4 py-3 border rounded-lg focus:outline-none focus:border-purple-600" value="10000000">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700 font-semibold mb-2">Investasi Bulanan (Rp)</label>
                            <input type="number" id="monthlyAmount" class="w-full px-4 py-3 border rounded-lg focus:outline-none focus:border-purple-600" value="1000000">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700 font-semibold mb-2">Periode Investasi (Tahun)</label>
                            <input type="number" id="years" class="w-full px-4 py-3 border rounded-lg focus:outline-none focus:border-purple-600" value="10">
                        </div>
                        <div class="mb-6">
                            <label class="block text-gray-700 font-semibold mb-2">Return Tahunan (%)</label>
                            <input type="number" id="returnRate" class="w-full px-4 py-3 border rounded-lg focus:outline-none focus:border-purple-600" value="15" step="0.1">
                        </div>
                        <button onclick="calculateInvestment()" class="w-full bg-purple-600 text-white py-3 rounded-lg font-semibold hover:bg-purple-700 transition duration-300">
                            Hitung Investasi
                        </button>
                    </div>
                    <div class="bg-purple-50 rounded-lg p-6">
                        <h3 class="text-xl font-semibold mb-4">Hasil Perhitungan</h3>
                        <div class="space-y-3">
                            <div class="flex justify-between">
                                <span class="text-gray-600">Total Investasi:</span>
                                <span id="totalInvestment" class="font-semibold">Rp 0</span>
                            </div>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Total Keuntungan:</span>
                                <span id="totalProfit" class="font-semibold text-green-600">Rp 0</span>
                            </div>
                            <div class="flex justify-between">
                                <span class="text-gray-600">Nilai Akhir:</span>
                                <span id="finalValue" class="font-semibold text-purple-600">Rp 0</span>
                            </div>
                        </div>
                        <canvas id="investmentChart" class="mt-6"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Performance Section -->
    <section id="performa" class="py-20">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 mb-4">Performa Portofolio</h2>
                <p class="text-xl text-gray-600">Lacak pertumbuhan investasi Anda secara real-time</p>
            </div>
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
                <div class="bg-white rounded-xl shadow-lg p-8">
                    <h3 class="text-2xl font-semibold mb-6">Distribusi Aset</h3>
                    <canvas id="portfolioChart"></canvas>
                </div>
                <div class="bg-white rounded-xl shadow-lg p-8">
                    <h3 class="text-2xl font-semibold mb-6">Pertumbuhan 12 Bulan Terakhir</h3>
                    <canvas id="growthChart"></canvas>
                </div>
            </div>
        </div>
    </section>

    <!-- Team Section -->
    <section id="tim" class="py-20 bg-gray-50">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 mb-4">Tim Profesional Kami</h2>
                <p class="text-xl text-gray-600">Ahli keuangan berpengalaman untuk membantu kesuksesan Anda</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="text-center">
                    <img src="https://picsum.photos/seed/person1/200/200" alt="Team Member" class="w-32 h-32 rounded-full mx-auto mb-4">
                    <h4 class="text-xl font-semibold">Dr. Sarah Wijaya</h4>
                    <p class="text-gray-600 mb-2">CEO & Founder</p>
                    <p class="text-sm text-gray-500">15 tahun pengalaman di industri keuangan</p>
                </div>
                <div class="text-center">
                    <img src="https://picsum.photos/seed/person2/200/200" alt="Team Member" class="w-32 h-32 rounded-full mx-auto mb-4">
                    <h4 class="text-xl font-semibold">Budi Santoso</h4>
                    <p class="text-gray-600 mb-2">CTO</p>
                    <p class="text-sm text-gray-500">Ahli teknologi fintech dan blockchain</p>
                </div>
                <div class="text-center">
                    <img src="https://picsum.photos/seed/person3/200/200" alt="Team Member" class="w-32 h-32 rounded-full mx-auto mb-4">
                    <h4 class="text-xl font-semibold">Maya Putri</h4>
                    <p class="text-gray-600 mb-2">Head of Investment</p>
                    <p class="text-sm text-gray-500">Spesialis portfolio management</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="py-20">
        <div class="container mx-auto px-6">
            <div class="text-center mb-16">
                <h2 class="text-4xl font-bold text-gray-800 mb-4">Apa Kata Mereka</h2>
                <p class="text-xl text-gray-600">Testimoni dari investor yang puas</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-8 rounded-xl shadow-lg">
                    <div class="flex mb-4">
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                    </div>
                    <p class="text-gray-600 mb-4">"Platform investasi terbaik yang pernah saya gunakan. Interface yang user-friendly dan return yang konsisten!"</p>
                    <div class="flex items-center">
                        <img src="https://picsum.photos/seed/user1/50/50" alt="User" class="w-12 h-12 rounded-full mr-3">
                        <div>
                            <h5 class="font-semibold">Andi Pratama</h5>
                            <p class="text-sm text-gray-500">Investor Sejak 2020</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-8 rounded-xl shadow-lg">
                    <div class="flex mb-4">
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                    </div>
                    <p class="text-gray-600 mb-4">"Tim support sangat responsif dan profesional. Saya merasa aman berinvestasi di sini."</p>
                    <div class="flex items-center">
                        <img src="https://picsum.photos/seed/user2/50/50" alt="User" class="w-12 h-12 rounded-full mr-3">
                        <div>
                            <h5 class="font-semibold">Siti Nurhaliza</h5>
                            <p class="text-sm text-gray-500">Investor Sejak 2021</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-8 rounded-xl shadow-lg">
                    <div class="flex mb-4">
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                        <i class="fas fa-star text-yellow-400"></i>
                    </div>
                    <p class="text-gray-600 mb-4">"Fitur kalkulator investasinya sangat membantu saya merencanakan keuangan masa depan."</p>
                    <div class="flex items-center">
                        <img src="https://picsum.photos/seed/user3/50/50" alt="User" class="w-12 h-12 rounded-full mr-3">
                        <div>
                            <h5 class="font-semibold">Rudi Hartono</h5>
                            <p class="text-sm text-gray-500">Investor Sejak 2022</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section id="kontak" class="py-20 gradient-bg text-white">
        <div class="container mx-auto px-6 text-center">
            <h2 class="text-4xl font-bold mb-4">Mulai Perjalanan Investasi Anda Sekarang</h2>
            <p class="text-xl mb-8 text-gray-200">Bergabunglah dengan ribuan investor yang telah merasakan manfaatnya</p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
                <button class="bg-white text-purple-600 px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300">
                    Daftar Gratis
                </button>
                <button class="border-2 border-white text-white px-8 py-4 rounded-lg font-semibold hover:bg-white hover:text-purple-600 transition duration-300">
                    Hubungi Konsultan
                </button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="container mx-auto px-6">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
                <div>
                    <div class="flex items-center mb-4">
                        <i class="fas fa-chart-line text-3xl text-purple-400 mr-3"></i>
                        <span class="text-2xl font-bold">InvestPro</span>
                    </div>
                    <p class="text-gray-400">Platform investasi modern untuk masa depan finansial yang lebih baik.</p>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Produk</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><a href="#" class="hover:text-white transition">Saham</a></li>
                        <li><a href="#" class="hover:text-white transition">Reksa Dana</a></li>
                        <li><a href="#" class="hover:text-white transition">Cryptocurrency</a></li>
                        <li><a href="#" class="hover:text-white transition">Obligasi</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Perusahaan</h4>
                    <ul class="space-y-2 text-gray-400">
                        <li><a href="#" class="hover:text-white transition">Tentang Kami</a></li>
                        <li><a href="#" class="hover:text-white transition">Karir</a></li>
                        <li><a href="#" class="hover:text-white transition">Blog</a></li>
                        <li><a href="#" class="hover:text-white transition">Press</a></li>
                    </ul>
                </div>
                <div>
                    <h4 class="text-lg font-semibold mb-4">Ikuti Kami</h4>
                    <div class="flex space-x-4 mb-4">
                        <a href="#" class="text-gray-400 hover:text-white transition">
                            <i class="fab fa-facebook-f text-xl"></i>
                        </a>
                        <a href="#" class="text-gray-400 hover:text-white transition">
                            <i class="fab fa-twitter text-xl"></i>
                        </a>
                        <a href="#" class="text-gray-400 hover:text-white transition">
                            <i class="fab fa-instagram text-xl"></i>
                        </a>
                        <a href="#" class="text-gray-400 hover:text-white transition">
                            <i class="fab fa-linkedin-in text-xl"></i>
                        </a>
                    </div>
                    <p class="text-gray-400">info@investpro.com</p>
                    <p class="text-gray-400">+62 21 1234 5678</p>
                </div>
            </div>
            <div class="border-t border-gray-800 mt-8 pt-8 text-center text-gray-400">
                <p>&copy; 2024 InvestPro. All rights reserved. | <a href="#" class="hover:text-white">Privacy Policy</a> | <a href="#" class="hover:text-white">Terms of Service</a></p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu toggle
        function toggleMobileMenu() {
            const menu = document.getElementById('mobileMenu');
            menu.classList.toggle('hidden');
        }

        // Smooth scroll
        function scrollToSection(sectionId) {
            document.getElementById(sectionId).scrollIntoView({ behavior: 'smooth' });
        }

        // Investment Calculator
        let investmentChart = null;

        function calculateInvestment() {
            const initialAmount = parseFloat(document.getElementById('initialAmount').value);
            const monthlyAmount = parseFloat(document.getElementById('monthlyAmount').value);
            const years = parseInt(document.getElementById('years').value);
            const returnRate = parseFloat(document.getElementById('returnRate').value) / 100;

            const monthlyRate = returnRate / 12;
            const totalMonths = years * 12;

            // Calculate future value
            let futureValue = initialAmount;
            const data = [initialAmount];
            const labels = ['0'];

            for (let i = 1; i <= totalMonths; i++) {
                futureValue = futureValue * (1 + monthlyRate) + monthlyAmount;
                if (i % 12 === 0) {
                    data.push(futureValue);
                    labels.push(i / 12);
                }
            }

            const totalInvestment = initialAmount + (monthlyAmount * totalMonths);
            const totalProfit = futureValue - totalInvestment;

            // Update display
            document.getElementById('totalInvestment').textContent = formatCurrency(totalInvestment);
            document.getElementById('totalProfit').textContent = formatCurrency(totalProfit);
            document.getElementById('finalValue').textContent = formatCurrency(futureValue);

            // Update chart
            updateInvestmentChart(labels, data);
        }

        function formatCurrency(amount) {
            return 'Rp ' + amount.toLocaleString('id-ID', { maximumFractionDigits: 0 });
        }

        function updateInvestmentChart(labels, data) {
            const ctx = document.getElementById('investmentChart').getContext('2d');
            
            if (investmentChart) {
                investmentChart.destroy();
            }

            investmentChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Nilai Investasi',
                        data: data,
                        borderColor: 'rgb(147, 51, 234)',
                        backgroundColor: 'rgba(147, 51, 234, 0.1)',
                        tension: 0.4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            ticks: {
                                callback: function(value) {
                                    return 'Rp ' + (value / 1000000).toFixed(0) + 'M';
                                }
                            }
                        }
                    }
                }
            });
        }

        // Portfolio Chart
        function initPortfolioChart() {
            const ctx = document.getElementById('portfolioChart').getContext('2d');
            new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Saham', 'Reksa Dana', 'Cryptocurrency', 'Obligasi'],
                    datasets: [{
                        data: [40, 30, 20, 10],
                        backgroundColor: [
                            'rgb(147, 51, 234)',
                            'rgb(59, 130, 246)',
                            'rgb(16, 185, 129)',
                            'rgb(251, 146, 60)'
                        ]
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom'
                        }
                    }
                }
            });
        }

        // Growth Chart
        function initGrowthChart() {
            const ctx = document.getElementById('growthChart').getContext('2d');
            new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    datasets: [{
                        label: 'Portofolio',
                        data: [100, 105, 103, 110, 115, 112, 120, 125, 130, 128, 135, 140],
                        borderColor: 'rgb(147, 51, 234)',
                        backgroundColor: 'rgba(147, 51, 234, 0.1)',
                        tension: 0.4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: false,
                            ticks: {
                                callback: function(value) {
                                    return value + '%';
                                }
                            }
                        }
                    }
                }
            });
        }

        // Initialize charts on page load
        document.addEventListener('DOMContentLoaded', function() {
            calculateInvestment();
            initPortfolioChart();
            initGrowthChart();
        });

        // Add scroll animation
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -100px 0px'
        };

        const observer = new IntersectionObserver(function(entries) {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('fade-in');
                }
            });
        }, observerOptions);

        document.querySelectorAll('section').forEach(section => {
            observer.observe(section);
        });
    </script>
</body>
</html>
