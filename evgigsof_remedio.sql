-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2026 at 03:29 AM
-- Server version: 10.11.16-MariaDB-cll-lve
-- PHP Version: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evgigsof_remedio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `who_we_are` text NOT NULL,
  `who_we_are_img` varchar(100) NOT NULL,
  `our_impact` text NOT NULL,
  `our_impact_img` varchar(100) NOT NULL,
  `mission` text NOT NULL,
  `mission_img` varchar(100) NOT NULL,
  `we_proud` text NOT NULL,
  `we_proud_img` varchar(100) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `who_we_are`, `who_we_are_img`, `our_impact`, `our_impact_img`, `mission`, `mission_img`, `we_proud`, `we_proud_img`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, '<p>RemedioVet is a pet care brand offering a curated selection of quality pet products. We have our own line of modern products for pets, including, nutritional supplements, grooming products, and prescription drugs. Our formulations are well researched and manufactured in India in world class facilities.&nbsp;</p><p>Our products are available at retail stores, our website, and other e-commerce platforms like Flipkart &amp; Amazon.</p>', 'uploads/about/1716891057.jpg', '<p>Our Impact comes from our commitment to our customers and to our rescue parters. Under Bezubaan Animal Welfare Foundation, we pledge to aid in animal rescue efforts, from adoption events &amp; fundraisers, to making food and medicine donations as our resources allow. We are personally committed to helping animals in need.</p>', 'uploads/about/1715578059.jpg', '<p>Our Mission is to provide a curated assortment of the best contemporary pet products on the market, with a focus on thoughtful design and production.&nbsp;</p><p>Our Promise is to provide you with a top assortment of safe, quality products produced with our precious pets in mind. We don’t stock anything that we wouldn’t – or haven’t – used with our own pets!</p>', 'uploads/about/1715578638.jpg', '<p>We’re very proud of our work and committed to quality before profit.</p>', 'uploads/about/1716812443.jpg', 'About us - Remediovet', 'About us', 'RemedioVet is a pet care brand offering a curated selection of quality pet products. We have our own line of modern products for pets, including, nutritional supplements, grooming products, and prescription drugs.', '2024-03-21 05:58:11', '2024-07-03 12:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Color', '2024-03-14 05:11:32', '2024-03-14 05:11:32'),
(2, 'Size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `mobile_banner_image` text DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `mobile_banner_image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(3, 'https://remedio.evgigsoft.com/product/omega-3-6-skin-coat-tonic-for-dogs-cats-yummy-chicken-flavour', 'uploads/banners/1716978872.jpg', 'uploads/banners/1717150633.jpg', 1, 0, '2024-05-06 10:59:54', '2024-07-10 06:08:49'),
(4, 'https://remedio.evgigsoft.com/product/nutricoat-advance-omega6-and-omega3-fatty-acids-liquid-supplement', 'uploads/banners/1719471817.jpg', 'uploads/banners/1719471760.jpg', 2, 0, '2024-05-06 11:00:41', '2024-07-10 06:11:29'),
(6, 'https://remedio.evgigsoft.com/product/omega-3-6-skin-coat-tonic-for-dogs-cats-yummy-chicken-flavour', 'uploads/banners/1716978913.jpg', 'uploads/banners/1717150645.jpg', 1, 0, '2024-05-06 10:59:54', '2024-07-10 06:11:44'),
(7, 'https://remedio.evgigsoft.com/product/omega-3-6-skin-coat-tonic-for-dogs-cats-yummy-chicken-flavour', 'uploads/banners/1716978937.jpg', 'uploads/banners/1717150656.jpg', 1, 0, '2024-05-06 10:59:54', '2024-07-10 06:12:00'),
(8, 'https://remedio.evgigsoft.com/product/nutricoat-advance-omega6-and-omega3-fatty-acids-liquid-supplement', 'uploads/banners/1719471830.jpg', 'uploads/banners/1719471782.jpg', 2, 0, '2024-05-06 11:00:41', '2024-07-10 06:12:21'),
(9, 'https://remedio.evgigsoft.com/product/nutricoat-advance-omega6-and-omega3-fatty-acids-liquid-supplement', 'uploads/banners/1719471837.jpg', 'uploads/banners/1719471803.jpg', 2, 0, '2024-05-06 11:00:41', '2024-07-10 06:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `featured_image` text NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0 For Hide | 1 For Show',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category`, `slug`, `tags`, `description`, `featured_image`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ensure the Safety Of Your Dog With a Microchip And GPS Tracker', 'pet_flight', '', 'Microchip And GPS Tracker, Pet Microchipping', '<p>The biggest concern for any pet parent while travelling with their little one is fear of separation. What if your pet lost their way? Or in case they wander off to somewhere far away?</p><p>It is quite often for the owners to worry about their canines getting lost. So, how do you make sure that you don’t lose your pet during travel?</p><p>The answer lies in utilizing today’s technology. There are many devices these days that you can find that can help you to get back with your little companion. Two such common ones are microchips and GPS trackers. Many people assume that both devices work in a similar manner, but this is not true.</p><p>If you want to know more about these two devices, then you are in the right place. Here, we will discuss microchips and trackers for dogs.</p><p>So, let’s start.</p><h2>Microchip For Dogs</h2><p>This device is a transponder which carries a unique identification number. The main purpose of a microchip is only to carry a specific number. The main purpose of a microchip is only to carry a specific unique number. You, as a pet owner, can’t track your dog with a microchip. In case your pet gets lost, the person who finds your companion can get all the details they need to locate you via microchip.</p><p>Let us see how this chip works:</p><p>The microchip does not contain any battery or moving parts. So how does it work? Usually, a veterinarian or the authorities of an animal shelter use a scanner that puts radio waves over the chip to retrieve the data. The person then types the unique number on the pet recovery database where information about the owner is present. Using the details, the concerned authorities can contact you and reunite you with your pet.</p><p>Dog microchip is a great replacement for pet collars. This is because your details can fade away with time, or even worse, your pet may lose the collar or tag. But microchipping is more of a permanent solution. A vet is the approved person to perform the procedure of microchipping on your four legged friend. They will insert the microchip under your pet’s shoulder blades. Microchipping is a quick process that ensures your dog can reunite with you in case of separation.</p><p>Now that you know about microchips for pets let us move to the next device which is a tracker.</p><h2>GPS Tracker For Dogs</h2><p>A tracker works much differently in comparison to a microchip. This device provides you with real-time updates about your pet. It allows you to know where your pet has been and where they are now. It also alerts you in case your little one is out of the safe designated location.</p><p>Here is how the GPS tracker works:</p><p>Unlike microchips, putting a tracker on your dog doesn’t require a procedure. Usually, the tracker is there along with a collar, or it comes in a compact size, which you can attach to your pet’s harness. After putting the GPS tracker on your canine, you have to connect it with your smartphone. This device usually has no range limitation, which means that you can track your four-legged friends even if they go around far away.</p><p>This device comes in handy when you need to find your pet when they wander off on their own. However, unlike microchips, you need to recharge the tracker.</p><p><strong>Conclusion:</strong> Microchipping and putting a GPS tracker on your pet relieve you from the tension of getting separated from them. We offer microchipping services at <a href=\"https://remediovet.com/petflights/\"><strong>Pet Flights</strong></a>, as well as the best tracker for your little one. So contact us now if you are looking for a platform where you can get all the necessary services to move your pet safely with you.</p>', 'uploads/blogs/1713177060.webp', 'meta-title', 'meta-keyword', 'meta-description', 1, '2024-04-15 09:46:33', '2024-07-03 07:18:56'),
(2, 'Poor Digestion In Dogs? Here Is How You Can Effectively Treat It', 'health', '', 'Anti Diarrheal for Dogs, Poor Digestion In Dogs', '<p>What does a perfect dog bowl look like? A meal consisting of all the essential nutrients. As a pet parent, your everyday quest would be to provide a fulfilling diet that can help enhance your pet’s vitality.</p><p>However sometimes your little one may end up eating things not meant for them. Eating items is not good for them which can further lead to indigestion. Poor digestion in dogs is a nightmare for pet owners as it compels them to clean the mess from vomiting or diarrhea. If your furry friend is also suffering from the same issue, then don’t worry. Here, we are going to discuss symptoms, causes and treatments for indigestion in dogs.</p><p><a href=\"https://remediovet.com/poor-digestion-in-dogs-here-is-how-you-can-effectively-treat-it/#Symptoms\"><strong>Symptoms Of Poor Digestion In Dogs</strong></a></p><p><a href=\"https://remediovet.com/poor-digestion-in-dogs-here-is-how-you-can-effectively-treat-it/#5Reasons\"><strong>5 Reasons Behind Digestive Issues In Dogs</strong></a></p><p><a href=\"https://remediovet.com/poor-digestion-in-dogs-here-is-how-you-can-effectively-treat-it/#Effective\"><strong>Effective Ways To Treat Digestive Issues In Dogs</strong></a></p><h2><strong>Symptoms Of Poor Digestion In Dogs</strong></h2><p><strong>Stomach Problems</strong></p><p>Here are some of the common problems that occur when your pet is suffering from indigestion:</p><ul><li>Vomiting</li><li>Bloating</li><li>Loose motions</li><li>Difficulty in passing stool</li></ul><p><strong>Loss of Appetite</strong></p><p>Is your pet unable to finish their food bowl? Then, it might be because they are suffering from poor digestion. If your canine is unable to finish their meals then this would later lead to improper nutrient nourishment.</p><p><strong>Dull Coat and Dry Skin</strong></p><p>Wondering the reason behind the constant shedding of fur and dry skin in your pet? This could be due to poor nutrition that may occur due to digestive issues.</p><p><strong>Changes in Weight</strong></p><p>Is your pet gaining or losing weight at an unhealthy pace? Then this issue could be due to poor digestive health.</p><p><strong>Behavioural Changes</strong></p><p>Digestive problems not only lead to stomach issues but also can affect your pet’s mood. If your dog has become aggressive, lazy or shows no interest in playing then you need to check whether they are facing this health issue or not.</p><p>There are multiple reasons why your little one could be showing these symptoms. Let us see the major causes behind the problem of indigestion in dogs:</p><h2><strong>5 Reasons Behind Digestive Issues In Dogs</strong></h2><p><strong>Allergy From Certain Food Items</strong></p><p>In case your little one is suffering from vomiting or diarrhea, then it could be due to an allergy to a specific food item.</p><p><strong>Stress</strong></p><p>Dogs feel stressed mostly when they are alone most of the time. Anxiety in canines may even rise when they shift to a new locality or a new member enters the family. The stress can disrupt the digestive system causing diarrhea in pets.</p><p><strong>Illness or Diseases</strong></p><p>If your pet is suffering from a disease or is ill for a long time then it could weaken their digestive system over time.</p><p><strong>Insufficient Fibre</strong></p><p>It is essential to keep your pet’s meals enriched with food items containing fibre. The fibre helps in binding the stool better, so its deficiency will lead to constipation in your pet.</p><p><strong>Consuming Foreign Objects</strong></p><p>In your absence if your dog consumes any foreign object like trash, onion, chocolates, garlic, or any item that is off limit can lead to stomach problems.</p><p>Now that you know about what could cause indigestion in your canine let us move on to finding out effective treatments.</p><figure class=\"image\"><img src=\"https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-232x300.webp\" alt=\"Antidiarrheal chews for dogs\" srcset=\"https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-232x300.webp 232w, https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-793x1024.webp 793w, https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-768x991.webp 768w, https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-640x826.webp 640w, https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus-64x83.webp 64w, https://cdn-ikpghll.nitrocdn.com/lxglThDAJAwyoYWBFnuaJPvsGmDDXIID/assets/images/optimized/rev-0b01168/remediovet.com/wp-content/uploads/2024/02/Canicoccus.webp 846w\" sizes=\"100vw\" width=\"232\"></figure><h2><strong>Effective Ways To Treat Digestive Issues In Dogs</strong></h2><p><strong>Dietary Changes</strong></p><p>For treating mild cases of indigestion, making alterations in diet can work wonderfully. You should aim to introduce more fiber rich foods such as brown rice, blueberries, carrots or pumpkin in your pet’s diet. Also, it would be in the best interests of your little one to provide them with bland food until their digestive issues don’t cure properly.</p><p><strong>Medical Attention</strong></p><p>When you are unable to treat digestive problems in your pet then you need to seek professional help. The vet can discuss with you what medicines you need to give to your pet and the lifestyle changes required.</p><p><strong>Stress Management</strong></p><p>Stress reduction in canines is essential for pet parents aiming to treat gastrointestinal problems. You can make your dog stress-free by spending more time with them. Taking them out for a walk or even a fun playing session outdoors can help alleviate the stress.</p><p><strong>Conclusion:</strong> A healthy gut in dogs means a boost in overall health. If you want to relieve your little one from stomach issues then RemedioVet can help. We provide the best Anti Diarrheal Medicine for Dogs that treats the problem of diarrhea, a common digestive problem, effectively. So contact us now for more information.</p>', 'uploads/blogs/1713177513.webp', NULL, NULL, NULL, 1, '2024-04-15 10:38:33', '2024-05-02 11:05:51'),
(3, 'Travelling With Your Pet To The EU: Here’s What You Need To Know', 'pet_flight', '', 'Europe Pet Travel Policies, Pet Microchipping, Rabies Test', '<p>Flying with your pet to Europe is a dream come true. If you have also planned to travel with your little companion to explore the other side of the world, then that’s amazing. However, while travelling with pets internationally, you need to take care of their safety. On top of that, you also need to comply with rules and regulations laid by the EU authorities for pet travelling.</p><p>Worrying about how you will manage adhering to all the guidelines? Then don’t stress, as this blog will provide all the requirements you must fulfil while travelling with your furry friend.</p><p>So, let’s start.</p><h2>Guidelines For Traveling With Pets To Europe</h2><h4>I. Pet Microchipping</h4><p>The first step involves microchipping even before getting your pet vaccinated. In this procedure, a small chip is inserted under your pet’s blades, which, upon scanning, reveals information about the owner. Pet microchipping is essential because in case your pet separates from you, then at least someone can reach out to you with the help of the chip. While getting your pet microchipped, make sure to use only an ISO 15-digit chip. The vet should do the microchipping before the procedure of vaccination.</p><h4>II. Vaccinations and Rabies Titre Test</h4><p>Here are some crucial things to know while getting a vaccination and Rabies Test for your pet:</p><ol><li>Vaccination is only for pets who are at least 12 weeks old.</li><li>You can get your pet vaccinated only after they are microchipped.</li><li>Make sure to provide the extra doses promptly in case the vaccination previously expired.</li><li>After the vaccination, you must get your pet tested for rabies. You can get this test done for your pet after 30 days of vaccination.</li><li>If your pet’s test results are acceptable, they can enter the EU at least 3 months after the blood test was taken. There is no need for quarantine in the EU if the waiting period is completed in India.</li><li>Ensure that you get your pet vaccinated and tested only by approved professionals; otherwise, these certifications will not be acceptable.</li></ol><h4>III. Valid documents</h4><p>You will need an animal health certificate if you are travelling from a non-EU country to an EU country.</p><p>The health certificate should contain all the following details:</p><ol><li>Identity proof of pet</li><li>Vaccination certificates</li><li>Other information related to your pet’s health</li></ol><p>The health certificate issued by the state should not be older than 10 days. Also, you need to show that this certificate is not made for commercial relocation.</p><h4>IV: Parasite Treatment (for dogs)</h4><p>Pet dogs must get treated for echinococcus tapeworm between 24 hours to 120 hours before travel if you intend to travel with them in countries like Finland, Ireland, Malta, Norway or Northern Island. You must mention this specific treatment in the animal health certificate.</p><h4>V. Additional Travel Policies</h4><ol><li>If you are travelling with more than 5 pets, then you need to prove to the authorities that all of them are over 6 months of age. Alongside you also need to show that the pets are travelling for exhibition/contest/event.</li><li>If you are unable to travel with your little one, then someone else must accompany them. But in this situation, you need to give a written declaration about this situation. After your pet arrives at the destination, you must reunite with them within 5 days.</li><li>A European passport is only for ferrets, cats and dogs. So if you are travelling with any other animal apart from these, then you need to check the pet travel rules of the country you are travelling to.</li></ol><p><strong>Conclusion:</strong> By adhering to these guidelines of the EU authorities you can travel with your four-legged companion without any complications. However, if you find making all these arrangements difficult on your own, then Pet Flights can help you. We cover all the duties of fulfilling the obligations of authorities while ensuring the safety of your pet. So contact us now for more information.</p>', 'uploads/blogs/1713177557.webp', 'dkfjasdf', 'dfasfasd', 'dfasdfas', 1, '2024-04-15 10:39:17', '2024-07-03 07:17:41'),
(4, 'How to Effectively Treat the Problem of Diarrhea in Dogs?', 'health', '', 'antidiarrheal for dogs, Diarrhea in Dogs', '<p>Diarrhea is one problem that veterinarians hear frequently from pet owners. Your pet most likely can get the loose motions several times during their lifetime. Diarrhea is not only discomforting for your pet but also puts you on the duty of constantly cleaning the mess.</p><p>The good part is that diarrhea in dogs doesn’t last for very long. However, you still need to treat the condition for better recovery in your furry friend.</p><p>Don’t know how you can treat the issue of loose motion in your pet? No need to worry!</p><p>In this blog, we will discuss the causes of diarrhea in dogs and the effective methods you can implement to treat it.</p><p>So, let’s start.</p><h2>Common Reasons Behind Diarrhea In Dogs</h2><p>The condition of diarrhea can cause your pet to pass soft stool frequently. Defecating constantly can cause water and nutrient loss. But what could trigger this condition? Here is possibly why your dog is suffering from diarrhea:</p><ul><li><strong>Eating Spoiled Food</strong></li></ul><p>Your dog may consume spoiled or expired food, which would later become the reason for diarrhea. The toxins build up in the spoiled food is what causes an upset stomach in your furry friend.</p><ul><li><strong>New Food Items</strong></li></ul><p>Your pet can get diarrhea due to changes in diet, too. Your dog’s stomach may not digest new food items initially. So, indigestion will further lead to diarrhea.</p><ul><li><strong>Infection From Virus</strong></li></ul><p>Viruses, like parvovirus and distemper, can cause lethargy, vomiting, and fever. And also these viruses can be the reason behind loose motions.</p><ul><li><strong>Human Food</strong></li></ul><p>There are certain human food items rich in high fat, sugar and salt which are not healthy for dogs. The human food being indigestible for dogs on consumption can trigger the condition of diarrhea.</p><ul><li><strong>Stress</strong></li></ul><p>Certain events can cause stress and anxiety, such as separation from the owner for a while or travelling to a new place. The stress can further trigger constant pooping in dogs.</p><ul><li><strong>Allergies</strong></li></ul><p>Your pet may have allergies to particular food items. If your furry friend consumes such an item, then chances are that their body will react to it. The reaction to the allergy might trigger loose motions.</p><ul><li><strong>Medications</strong></li></ul><p>Some medicines for pets may come with side effects. You should avoid giving your pet antibiotics if they cause diarrhea.</p><p>The problem of loose motion can affect your little companion’s health significantly. So, you must take effective measures that help in treating this condition. Here’s how you can do it:</p><h3>Implement These 5 Effective Methods to Treat Dog Diarrhea</h3><ol><li><strong>Right Medication:</strong> One of the easiest and quickest ways to treat diarrhea in pets is to give them appropriate medicine. The <a href=\"https://remediovet.com/product/canicoccus-antidiarrheal-chews-for-dogs/\"><strong>antidiarrheal for dogs</strong></a> by RemedioVet can help fight diarrhea. Also, some medicines for loose motions also may help with boosting immunity in pets. However, before starting any medication, ensure to consult with the veterinarian.</li><li><strong>Bland Diet:</strong> When your little companion is suffering from loose motions, it is best to give them only plain food items. Some of the bland food items that you can give your pet when they are suffering from diarrhea are:<ul><li>Boneless Chicken</li><li>Plain Rice</li><li>Boiled Potatoes</li></ul></li><li><strong>Hydration:</strong> Diarrhea can cause your pet to lose a lot of water from their body. So, ensure that your dog drinks ample water. Also, you can give your pet rice water, which is great for treating loose motions. The scratch in the rice water acts as a binding agent which helps in retaining more water in your pet’s body.</li><li><strong>Probiotics:</strong> Adding probiotics to your pet’s diet would be highly beneficial. Probiotics are live microorganisms that help in fighting bacteria that cause diarrhea. One food item that you can find in your home which has the goodness of probiotics is yoghurt. Another option is to buy probiotics in powder form for dogs from the store.</li><li><strong>Readjust Diet:</strong> Your furry friend may be suffering from loose motions because they might not be able to digest a certain food item. But how do you find your dog is allergic to a particular food item? Well, it is easy. With allergy tests for dogs you can find out which food item is not suitable for your pet.</li></ol><p><strong>Conclusion:</strong> Treating diarrhea in dogs is not that hard. By figuring out the cause and taking appropriate measures accordingly, you can provide relief to your pet. If you want to make the process of treating your dog’s diarrhea more effective and quicker, then RemedioVet’s CaniCoccus can help you. Regular intake of this medicine can help regulate normal stool in your pet.</p><p>So contact us to avail the top quality anti-diarrhea medicine for your dog.</p>', 'uploads/blogs/1713179763.webp', NULL, NULL, NULL, 1, '2024-04-15 11:16:03', '2024-04-15 11:29:35'),
(5, 'Here Are The Pet Policies Of Top Indian Airlines You Need To Know', 'pet_flight', '', 'pet transport, Pet Travel Policies Of Air India, Pet Travel Policies Of Akasa Air', '<p>Now, you don’t have to feel guilty about leaving your furry friend behind at home while you go on a trip. With Indian Airlines welcoming pets on board, you can achieve the dream of travelling with your little one.</p><p>Well, many Indian airlines like Indigo, AirAsia and Vistara allow only service dogs to travel. But don’t feel disappointed. Airlines, like Air India and Akasa Air, have the facility for pet travel. However, you need to meet specific criteria laid out by these airlines for a hassle-free journey.</p><p>So what are the requirements laid out by the Indian airlines? In this blog, we will exactly discover the answer to this question.</p><p>If you are ready to know more about these pet-friendly airline policies, then keep on reading further.</p><h2><strong>Pet Travel Policies Of Air India</strong></h2><ol><li>Air India only allows the import and export of pets from certain cities only in case of international flights. You can only take the flight with your pet from airports located in Bangalore, Chennai, Kolkata, Delhi and Mumbai.</li><li>For the safety of your pets and fellow passengers, you can’t let your little one roam freely in the cabin. So, you must place them in a kennel or cage. While buying the container, make sure that its size doesn’t exceed 46cm/18in x 46cm/18 in x 30cm/12 in. Also, make sure to put labels on the kennel so that the airline staff can easily get information about the owner.</li><li>Before placing your pet inside the kennel, keep a moisture-absorbent mat underneath.</li><li>The airline decides whether your pet will travel in the cabin or as check-in baggage or cargo according to their weight. Here are points that show the criteria set by Air India:<ul><li>Your pet can only travel in a cabin if they don’t weigh more than 5 kg.</li><li>Pets who weigh between 5kg and 32kg will be checked in as baggage.</li><li>Pets weighing more than 32kg will travel as cargo.</li></ul></li><li>Each passenger can travel with only 2 pets in the cabin.</li><li>Your pet needs to be at least 8 weeks old to travel. Also, one more thing to keep in mind is that Air India doesn’t allow pregnant pets on board.</li><li>Here are the certificates that you need to make to travel internationally with your pet:<ul><li>‘No objection certificate’ or ‘pre-import clearance’ from the animal quarantine and certification service.</li><li>A health certificate from the country of origin showing your pet is free from rabies, temper, and leptospirosis.</li><li>If you have a cat or dog over 3 months, you will need to get them vaccinated for rabies at least a month before travel.</li></ul></li><li>The charges for pet transport would depend upon the weight of your pet, kennel and other belongings of your pet. Guide dogs can travel for free, but you need to foresee if they are adequately muzzled and leased.</li><li>Every country may have their own set of requirements, so you need to make sure that you adhere to them.</li><li>Ensure that you follow the quarantine requirements for pets if asked by the destination country. The time you will have to quarantine your pet will vary from country to country.</li></ol><h2><strong>Pet Travel Policies Of Akasa Air</strong></h2><ol><li>Currently, Akasa Air is only allowing cats and dogs above the age of three months to travel.</li><li>You need to obtain a vaccination and health certificate from a registered vet within 72 hours of travel. Your pet can travel in the cabin only if they do not weigh more than 7kg. Pets exceeding this weight will travel as cargo. However, if your pet weighs more than 100kg, then they can’t travel with Akasa Airlines. Pets weighing more than 7 kg but less than 32 kg need to be checked at the airport.</li><li>Each passenger can carry only one pet in the cabin and one in cargo while travelling.</li><li>The container for pets travelling in the cabin should not be more than 19″ L X 12″ W X 10″ H. For check-in cargo, the container should not be more than 36″ L X 28″ W X 28″ H.</li><li>Almost all breeds of cats and dogs can travel with Akasa Air. However, snub-nosed dogs can’t travel in cargo. The reason is that these dogs have a harder time breathing during flight. But in case you decide to travel with your snub-nosed pet in the cabin, then you need to seek airline assistance.</li><li>Your pet needs to stay in the closed container for the entire time during the flight.</li><li>Pets can’t travel by connecting or through flights. So make sure to look for only non-stop flights.</li></ol><p><strong>Conclusion:</strong> By adhering to the above Airline Pet Policies of Air India and Akasa Air, you can travel with your furry friend without any delays or complications. In case you find it challenging to keep up with all the requirements of pet-friendly airlines, then you can seek professional help from <a href=\"https://remediovet.com/petflights/\"><strong>Pet Flights</strong></a>. We provide exceptional assistance at each step, from making all necessary preparations to delivering your pet to the required location. So contact us now for more information.</p>', 'uploads/blogs/1713254199.webp', NULL, NULL, NULL, 1, '2024-04-16 07:56:39', '2024-06-04 05:52:42'),
(6, 'What Are The Emirates Airlines Pet Policies That You Should Know?', 'health', '', NULL, '<p>Travelling with your pet is an unforgettable experience. The memories you create with your furry friend are truly cherishable. However, to make the dream of travelling with a pet come true, you need to prepare well in advance.</p><p>While planning a journey, you must see if the airline you are considering allows pets. One of the popular names that accommodate pets on planes is Emirates. While the airline is pet-friendly globally, you must know its policies.</p><p>Before booking tickets for yourself and your little one, have you checked if you comply with all terms and conditions?</p><p>If you are not aware of the Emirate’s pet policies, then don’t worry. In this blog, we will discuss all the conditions laid out by Emirates regarding pet travel.</p><p>So buckle up as we are going to explore the terms and conditions of the UAE-based airline.</p><h2><strong>Pet Policies of Emirates Airlines</strong></h2><ol><li><strong>Pets Travel in Cabin:</strong> Pets are usually not allowed in the cabin except for guide dogs for blind people.</li><li><strong>Pets Travelling as Excess Baggage:</strong> In a few cases, you can take your pets as excess baggage. However, in these cases, the airlines won’t consider your pet as excess baggage:<ul><li>If your flight is longer than 17 hours</li><li>You are travelling with multiple pets</li><li>The crate is too big</li><li>Import policy doesn’t allow pets as excess baggage</li></ul></li><li><strong>Cargo Requirements:</strong><ul><li>While opting for the excess baggage option, you should ensure that the crate you choose is IATA-accredited.</li><li>For pets travelling as excess baggage, the size of the cargo should not be more than 300cm.</li></ul></li><li><strong>Types of Pets Allowed:</strong> Emirates poses no restriction on the number of pets that can accompany you in your travel as long as you follow their policies. Dogs, cats, pet birds and falcons can travel as excess baggage. The age of the dog and cats should be above 4 months. If you want to travel with any other breed apart from these, then you may have to choose the cargo option. However, in cargo choice, too, some animals are completely prohibited.Here is a list of animals that you cannot travel in with Emirates:<ul><li>Banned Dog Breeds: The dogs prohibited by Emirates include Boston Terrier, Boxer, Brussels Griffon, Bullmastiff, Chihuahua (Apple Headed), Chow Chow, Dogo Argentino, Dogue de Bordeaux, English and French Bulldogs, Japanese Chin, Lhasa Apso, Lowchen, Neapolitan Mastiff, Pekinese, Pit Bull Terrier, Pub (all types), Shar-Pei, Shih Tzu, Staffordshire Bull Terrier, Tibetan Spaniel, Newfoundland, Bulldog (all types), Cavalier King Charles Spaniel and American Cocker Spaniel.</li><li>Banned Cat Breeds: The cat breeds prohibited by Emirates include British Shorthair, Burmese, Exotic Fold, Hamalayan, Scottish Fold Burmese, Exotic Shorthair, and Persian.</li><li>Other Animals: Animals except cats, dogs, pet birds and falcons travel as unaccompanied pets. Emirates allows warm-blooded animals except poisonous reptiles and insects. Animals that leave a bad odour, such as skunks or minks, are also not allowed. You can transport goats and sheep but in limited numbers.</li></ul></li><li><strong>Health and Vaccination Certificates:</strong><ul><li>The airlines ask for a health certificate from a licensed veterinarian, which should be issued within 10 days of travel. The certificate should state that your pet is free from any infection or disease and is fit to travel.</li><li>Some countries demand additional documents such as vaccination certificates, quarantine periods, and treatments for allowing pets to travel. So make sure to check the paperwork requirements of the particular country you decide to travel to.</li></ul></li><li><strong>Temperature Restrictions and Precautions:&nbsp;</strong>Travelling with pets requires more safety to maintain their health. Emirates, considering the safety of animals, restricts pet travel during extreme weather conditions. So, while travelling with your pet, be sure to contact your local Emirates for weather-related restrictions. Also, by choosing a well-ventilated crate, you can ensure that your little one travels without any discomfort.</li><li><strong>Pet Travel Insurance:&nbsp;</strong>While travelling with a pet, it is better to get insurance. With insurance, you don’t need to worry about veterinary expenses that may occur due to unexpected illness or injury in your pet. You can contact Emirates Airlines for more information on the procedure for getting pet travel insurance.</li></ol><p><strong>Conclusion:</strong> By adhering to the Emirate’s pet policies, you can ensure hassle-free travel with your pets. However, if you find preparing all the documents for your pet overwhelming, then don’t worry. You can relieve yourself from the responsibility of preparing necessary papers by relying on Pet Flights. Our pet relocation services help fulfil all the prerequisites of airline pet policies (Emirates Airlines). Also, our experts provide training to the pets so that they can travel in cargo without any anxiety. So contact us now to simplify your pet’s travel with Emirates.</p>', 'uploads/blogs/1713254280.webp', NULL, NULL, NULL, 1, '2024-04-16 07:58:00', '2024-04-16 07:58:00'),
(7, 'Why Do You Need To Microchip Your Dog?', 'pet_flight', '', NULL, '<p>Are you planning to move to another country with your pet?</p><p>Then, ensuring your little one’s safety is the priority of any pet parent. There are many dangers involved in travelling with pets, and the major one is separating from them. If your dog separates from you, then it might be a very challenging task to retrace them. However, by microchipping your pet, you can find them easily in case you lose them during the trip.</p><p>Now, you may wonder what microchipping is.</p><p>Well, it is a simple procedure that can ensure that someone can easily get information about the pet’s owner in case of any mishaps. So, by microchipping, your pet can be stress-free and enjoy the journey with you.</p><p>If you want to know more about pet microchips, then you are in the right place. Here, we will discuss how the microchip works and its benefits in detail.</p><p>So, let’s start.</p><h2><strong>What Is Microchip For Dogs?</strong></h2><p>A microchip is an electronic device that has a size similar to that of a rice grain particle. The chip carries details necessary to identify the owner of a pet. The chip uses an electromagnetic pulse to identify and capture data. One thing to know is that the device does not allow real-time tracking as it does not have GPS. It only contains a unique identification code, which one can scan with the help of a microchip scanner.</p><p>This device is a better alternative to the collar tags that one usually puts on the neck of a pet. Here’s why:</p><ul><li>The microchip is permanently inserted into your pet’s skin. So, it won’t get lost like a dog collar.</li><li>The information on the collar or tags can fade over time, making it unreadable. However, this won’t happen when using an electronic chip.</li></ul><p>We can see that the Dog Micro Chip is the most reliable way to put your details on your pet among all options. It is a must when travelling as not only does it help in reuniting lost pets with their owners, but it also offers many other benefits.</p><p>The following points show the advantages of microchipping your pet:</p><h2><strong>What Are The Benefits Of Microchipping Your Dog?</strong></h2><ol><li><strong>Compliance with Legal Requirements:</strong> Some countries allow you to travel with pets only if they are microchipped. So, if you plan to travel internationally, you must insert a microchip under your dog’s shoulder blades to meet the country’s legal formalities.</li><li><strong>It Comes in Handy to Prove Your Ownership:</strong> Pet thefts are more common than you think. So, it is crucial to be on the safer side by microchipping your pet. You can prove that you are the rightful owner if someone tries to steal your pet or misidentifies your pet with theirs.</li><li><strong>Long-term Solution:</strong> When preparing to move, it’s easy to overlook putting a collar with your pet’s name on it, or the name tag may come off, and your pet could not be identified. In such a situation, microchipping provides a permanent solution, eliminating this ongoing worry. The great thing about microchips is that you can easily update your contact information through the database provider, unlike a collar tag.</li></ol><p>If you are ready to avail the advantages of microchipping your pet, then you can easily do it by following these steps:</p><h2><strong>Microchip Your Dog With 3 Easy Steps</strong></h2><ol><li><strong>Choose the Right Microchip:</strong> While searching for a microchip, ensure that the manufacturer you consider choosing provides a chip that is acceptable worldwide.</li><li><strong>Schedule an Appointment with the Vet:</strong> You can contact your vet nearby to insert a microchip in your dog or contact our experts at Pet Flights. The specialist will swiftly implant a microchip into your pet’s loose skin located between their shoulder blades using an injection.</li><li><strong>Register with the Manufacturer:</strong> After the vet successfully embeds the chip in your pet, the next thing is to provide your details to the manufacturer. The vet may help you in this process by providing a link to the manufacturer’s website. On the site, you can fill in the necessary information like name, contact information, and address. At the end, the vet will check whether one can procure the identification number from the chip by scanning it properly.</li></ol><p><strong>Conclusion:</strong> Microchipping is the most convenient way to make sure that your furry friend reunites with you in case of any mishap. However, if you do not have enough time to take your pet for microchipping, <a href=\"https://remedio.evgigsoft.com/pet-relocation\"><strong>Pet Flights</strong></a> can help you. Our experts know how to insert a microchip under your dog’s skin safely. So contact us today to avail more information.</p>', 'uploads/blogs/1713254378.webp', NULL, NULL, NULL, 1, '2024-04-16 07:59:38', '2024-04-16 07:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` varchar(200) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `position`, `image`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Petique', 'petique', '14', 'uploads/brands/brandeleven.png', 0, '2024-02-08 07:06:45', '2024-07-10 08:53:16', 0),
(2, 'Remediovet', 'remediovet', '1', 'uploads/brands/remedio.png\r\n', 0, '2024-02-15 00:17:20', '2024-07-10 08:53:22', 0),
(3, 'Applaws', 'applaws', '12', 'uploads/brands/brandten.png', 0, '2024-02-08 07:06:45', '2024-07-10 08:53:06', 0),
(4, 'Savavet', 'sawavet', '11', 'uploads/brands/brandnine.png', 0, '2024-02-15 00:17:20', '2024-07-10 07:45:30', 1),
(6, 'Hempy Paws', 'hempy-paws', '10', 'uploads/brands/brandseven.png', 0, '2024-02-15 00:17:20', '2024-07-10 09:06:51', 0),
(7, 'Warren London', 'warren-london', '9', 'uploads/brands/brandone.png', 0, '2024-04-30 13:59:59', '2024-07-10 07:45:16', 1),
(8, 'Orijen', 'orijen', '8', 'uploads/brands/brandtwo.png', 0, '2024-04-30 14:00:39', '2024-07-10 07:45:11', 2),
(9, 'Wag & Love', 'wag-love', '7', 'uploads/brands/brandthree.png', 0, '2024-04-30 14:01:03', '2024-07-10 07:45:06', 1),
(10, 'Kong', 'kong', '4', 'uploads/brands/brandfour.png', 0, '2024-04-30 14:01:17', '2024-07-10 07:44:50', 1),
(11, 'Medfly', 'medfly', '6', 'uploads/brands/brandfive.png', 0, '2024-04-30 14:01:37', '2024-07-10 07:44:45', 1),
(12, 'Pupcake Factory', 'pupcake-factory', '5', 'uploads/brands/brandsix.png', 0, '2024-04-30 14:01:54', '2024-07-10 07:44:34', 1),
(13, 'Pets way', 'pet-ways', '2', 'uploads/brands/brandeight.png', 0, '2024-04-30 14:02:51', '2024-07-10 07:43:44', 1),
(14, 'Sky EC', 'sky-ec', '3', 'uploads/brands/brandtwelve.png', 0, '2024-04-30 14:04:48', '2024-07-10 07:43:49', 1),
(16, 'Petcare', 'petcare', '13', NULL, 1, '2024-05-03 13:25:27', '2024-07-10 09:03:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_main_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `saving` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_color_id`, `product_variation_id`, `addon_main_id`, `quantity`, `saving`, `created_at`, `updated_at`) VALUES
(287, 20, 68, NULL, NULL, NULL, 3, NULL, '2024-06-18 14:54:57', '2024-06-18 16:39:18'),
(288, 21, 62, NULL, 240, NULL, 4, NULL, '2024-06-18 15:19:33', '2024-06-18 15:19:33'),
(289, 21, 62, NULL, 239, NULL, 2, NULL, '2024-06-18 15:19:50', '2024-06-18 15:19:50'),
(290, 21, 64, NULL, 247, NULL, 5, NULL, '2024-06-18 15:21:12', '2024-06-18 15:21:12'),
(291, 21, 64, NULL, 248, NULL, 4, NULL, '2024-06-18 15:21:23', '2024-06-18 15:21:23'),
(293, 20, 56, NULL, NULL, NULL, 60, NULL, '2024-06-18 16:39:01', '2024-06-18 16:39:01'),
(297, 22, 21, NULL, 296, NULL, 2, NULL, '2024-06-20 14:07:53', '2024-06-20 14:07:53'),
(298, 22, 62, NULL, 239, NULL, 1, NULL, '2024-06-20 14:09:10', '2024-06-20 14:09:10'),
(303, 23, 14, NULL, NULL, NULL, 1, NULL, '2024-07-01 09:23:05', '2024-07-01 09:23:05'),
(304, 23, 20, NULL, 188, NULL, 1, NULL, '2024-07-01 09:23:11', '2024-07-01 09:23:11'),
(305, 23, 23, NULL, 222, NULL, 4, NULL, '2024-07-01 09:23:26', '2024-07-01 09:23:26'),
(362, 1, 14, NULL, NULL, NULL, 1, NULL, '2024-07-30 08:29:10', '2024-07-30 08:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `cart_coupons`
--

CREATE TABLE `cart_coupons` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(200) NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_value` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_coupons`
--

INSERT INTO `cart_coupons` (`id`, `user_id`, `coupon`, `coupon_type`, `coupon_value`, `created_at`, `updated_at`) VALUES
(20, 8, 'SPECIAL30', '1', '30', '2024-05-07 07:33:24', '2024-05-07 07:33:24'),
(25, 10, 'HAPPY50', '2', '50', '2024-05-10 14:34:40', '2024-05-10 14:34:40'),
(51, 18, 'SPECIAL30', '1', '30', '2024-06-03 06:23:24', '2024-06-03 06:23:24'),
(54, 20, 'SPECIAL30', '1', '30', '2024-06-18 10:55:56', '2024-06-18 10:55:56'),
(57, 23, 'HAPPY50', '2', '50', '2024-07-01 04:54:30', '2024-07-01 04:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_top` enum('0','1') NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `serial` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=visible, 1=hidden',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image` varchar(200) NOT NULL,
  `banner_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `parent_id`, `is_top`, `meta_title`, `meta_keyword`, `meta_description`, `serial`, `status`, `created_at`, `updated_at`, `banner_image`, `banner_url`) VALUES
(1, 'Dog', 'dog', 'dog', 'uploads/category/1708064430.jpg', 0, '0', 'Shop Dog Products Online | Remediovet', 'Dog Products', 'Shop for dog products online at our website. Find the perfect solution for your furry friend\'s needs.', NULL, 0, '2024-02-08 07:06:01', '2024-07-03 10:40:43', '', '#'),
(2, 'Cat', 'cat', 'Cat', 'uploads/category/1708321032.jpg', 0, '0', 'Explore Cat Products Online | Remediovet', 'Cat Products', 'Explore a variety of cat products at our online shop. Visit us to find the perfect products for your cat needs.', NULL, 0, '2024-02-19 00:07:12', '2024-07-03 10:40:10', '', '#'),
(3, 'Dog Food', 'dog-food', 'Food', 'uploads/category/1708403062.jpg', 1, '1', 'High-Quality Dog Food | Remediovet', 'Dog Food', 'Shop for high-quality dog food online at our store. Discover a variety of options to keep your dog healthy and happy.', 2, 0, '2024-02-19 00:47:58', '2024-07-03 10:37:55', '', '#'),
(4, 'Popular Category', 'popular-category', 'Popular Category', NULL, 1, '0', '', '', '', 3, 0, '2024-02-19 00:48:57', '2024-07-15 10:47:50', '', '#'),
(5, 'Dog Accessories', 'dog-accessories', 'Accessories', 'uploads/category/1708402960.jpg', 1, '1', 'Get Dog Accessories Online | Remediovet', 'Dog Accessories', 'Explore a wide range of dog accessories at our online shop. Find everything you need to pamper your furry friend.', 4, 0, '2024-02-19 00:49:30', '2024-07-03 10:36:38', '', '#'),
(6, 'Dog Dry food', 'dog-dry-food', 'Dry food', NULL, 3, '0', 'Best Dry Dog Food - Remediovet', 'Dry Dog Food', 'Looking for the best dry food for dogs? Discover why Remediovet stands out! Our premium selection ensures your furry friend gets only the finest ingredients for optimal health and happiness.', NULL, 0, '2024-02-19 00:49:49', '2024-07-02 15:25:35', '', '#'),
(7, 'Dog Wet Food', 'dog-wet-food', 'Wet Food', NULL, 3, '0', 'Best Wet Food for Dogs | Wet Puppy Food', 'Wet Food for Dogs', 'Discover the ultimate solution for your puppy with the Best Wet Food for Dogs by Remediovet. Give your dog the nutrition and taste they deserve!', NULL, 0, '2024-02-19 00:50:41', '2024-07-02 15:25:00', 'uploads/category/1718608483.webp', 'https://remedio.evgigsoft.com/product/hemp-gravy-for-dogs-with-real-chicken-chicken-liver-chunks'),
(8, 'Dog Treats', 'dog-treats', 'Treats', NULL, 3, '0', 'Premium Dog Treats Online | Remediovet', 'Dog Treats', 'Shop for high-quality dog treats online at our store. Treat your pet to delicious snacks they\'ll love. Visit us today!', NULL, 0, '2024-02-19 00:51:09', '2024-07-15 11:05:52', '', '#'),
(9, 'Dog Dewormer', 'dog-dewormer', 'Dewormer', NULL, 1, '0', 'Best Dewormer for Dogs and Puppies | Deworming Medicine for Dogs', 'Dewormer for Dogs', 'Discover the best dewormer for dogs and puppies. Our top-rated deworming medicines ensure your pets stay healthy and parasite-free. Get effective deworming solutions now!', NULL, 0, '2024-02-19 00:51:36', '2024-07-02 15:23:14', '', '#'),
(10, 'Dog Grooming', 'dog-grooming', 'Grooming', 'uploads/category/1708404939.jpg', 5, '1', 'Top Grooming Products for Dogs | Remediovet', 'grooming products for dogs', 'Discover the best grooming products for dogs including fur colors, shampoos, nail polish, and more. Ensure your pet looks and feels great with our top-rated grooming tools and accessories.', NULL, 0, '2024-02-19 23:02:31', '2024-07-02 15:22:30', '', '#'),
(11, 'Dog Supplements', 'dog-supplements', 'Supplement', NULL, 3, '0', 'Get The Best Health Supplements for Dogs | Remediovet', 'Supplements for Dogs', 'Give your pet the nutritional boost they need with health supplements for dogs. Our dog growth supplements provide the vitamins and minerals required for your dog\'s overall growth.', NULL, 0, '2024-02-19 23:04:46', '2024-07-02 15:20:26', '', '#'),
(12, 'Dog Puppy Food', 'dog-puppy-food', 'Puppy Food', NULL, 3, '0', 'Best Puppy Food for Small and Large Breeds', 'Puppy Food', 'Get the best puppy food for both small and large breeds at Remediovet. Our food for puppies is specially formulated to keep your little one healthy and happy.', NULL, 0, '2024-02-19 23:05:39', '2024-07-02 15:18:55', '', '#'),
(13, 'Cat Tick & Flea', 'cat-tick-flea', 'Tick & Flea', NULL, 2, '0', 'Best Flea and Tick Medicine for Cats', 'Flea and Tick Medicine for Cats', 'Protect your beloved cat with our top-rated flea and tick medicine for cats. Explore effective solutions for ensuring your feline companion\'s comfort and well-being.', NULL, 0, '2024-02-19 23:06:01', '2024-07-02 15:18:16', '', '#'),
(14, 'Cat Stress & Anxiety', 'cat-stress-anxiety', 'Stress & Anxiety', NULL, 2, '0', 'Shop Stress and Anxiety Products for Cats | Remediovet', 'Stress and Anxiety Products for Cats', 'Browse our extensive range of stress and anxiety products for cats at RemedioVet. Help your feline friend relax and thrive with our premium remedies.', NULL, 0, '2024-02-19 23:06:14', '2024-07-15 10:47:23', '', '#'),
(15, 'Dog Herbal Shampoo', 'dog-herbal-shampoo', 'Herbal Shampoo', NULL, 1, '0', 'Best Herbal Dog Shampoo for Itchy Skin & Allergies', 'Herbal Dog Shampoo', 'Shop the best herbal dog shampoo for itchy skin & allergies with gentle cleansing. Our top picks ensure your furry friend enjoys a bath with the benefits of natural ingredients.', NULL, 0, '2024-02-19 23:06:28', '2024-07-02 15:15:19', '', '#'),
(16, 'Dog Anti-fungal', 'dog-antifungal', 'Anti-fungal', NULL, 1, '0', 'Antifungal Medicine for Dogs | Remediovet', 'Antifungal Medicine for Dogs', 'Ensure your beloved pet stays healthy and happy with antifungal medicine for dogs. Experience fast and effective treatment with complimentary shipping. Order now!', NULL, 0, '2024-02-19 23:06:44', '2024-07-02 15:13:23', '', '#'),
(17, 'Dog Antibiotic', 'dog-antibiotic', 'Antibiotic', NULL, 1, '0', 'Antibiotic Cream & Ointment for Dogs - Remediovet', 'Ointment for Dogs', 'Explore our selection of the best antibiotic cream and ointment for dogs, ensuring rapid healing and optimal pet health.', NULL, 0, '2024-02-19 23:06:56', '2024-07-02 15:12:48', '', '#'),
(18, 'Dog Skin & Coat Supplement', 'dog-skin-coat-supplement', 'Skin & Coat Supplement', NULL, 1, '0', 'Dog Skin and Coat Supplements | Remediovet', 'Dog Skin and Coat Supplements', 'Discover top-rated skin and coat supplements for dogs. Improve your dog\'s health and appearance with our premium dog coat supplements.', NULL, 0, '2024-02-19 23:07:12', '2024-07-02 15:10:56', '', '#'),
(19, 'Dog Liver Supplement', 'dog-liver-supplement', 'Liver Supplement', NULL, 1, '0', 'Liver Support Supplements for Dogs | Remediovet', 'Liver Supplements for Dogs', 'Protect your dog\'s liver health with our premium canine liver supplements. Shop the best liver support supplements to enhance your dog\'s well-being. Order now!', NULL, 0, '2024-02-19 23:07:43', '2024-07-02 15:11:33', '', '#'),
(20, 'Dog Calcium Supplement', 'dog-calcium-supplement', 'Calcium Supplement', NULL, 1, '0', 'Best Dog Calcium Supplements | Calcium for Puppies', 'Dog Calcium Supplements', 'Support your dog\'s bone health with our top-rated dog calcium supplements. Ensure strong growth and development for puppies with essential calcium.', NULL, 0, '2024-02-19 23:08:07', '2024-07-02 15:11:23', '', '#'),
(21, 'Dog Kidney & UTI Supplement', 'dog-kidney-uti-supplement', 'Kidney & UTI Supplement', NULL, 1, '0', 'Best Kidney Support and UTI Supplements for Dogs', 'Kidney Support and UTI Supplements for Dogs', 'Discover top kidney and UTI medicine for dogs. Enhance your dog\'s health with premium kidney support and effective urine infection treatments.', NULL, 0, '2024-02-19 23:08:24', '2024-07-02 15:11:12', '', '#'),
(22, 'Dog Collars & Leashes', 'dog-collars-leashes', 'Collars & Leashes', NULL, 5, '0', 'Premium Dog Collar and Leashes | Remediovet', 'Dog Collar and Leashes', 'Upgrade your pup\'s style with our collection of dog collars and leash. From durable designs to adorable puppy sets, find the perfect match for your furry friend today!', NULL, 0, '2024-02-19 23:08:46', '2024-07-02 15:07:21', '', '#'),
(23, 'Dog Harnesses', 'dog-harnesses', 'Harnesses', NULL, 5, '0', 'Cute and Stylish Dog Harnesses - Remediovet', 'Dog Harnesses', 'Discover the perfect balance of cuteness and style with dog harnesses from Remediovet. Find the ideal fit for your furry friend today!', NULL, 0, '2024-02-19 23:08:57', '2024-07-02 15:06:34', '', '#'),
(24, 'Dog Bowtie & Bandanas', 'dog-bowtie-bandanas', 'Bowtie & Bandanas', NULL, 5, '0', 'Bowtie & Bandanas For Dogs - Remediovet', 'Bowtie & Bandanas For Dogs', 'Dress up your furry friend with stylish Bowties & Bandanas for dogs from Remediovet! Elevate their style and make them stand out. Shop now!', NULL, 0, '2024-02-19 23:09:07', '2024-07-02 15:06:08', '', '#'),
(25, 'Dog Clothes', 'dog-clothes', 'Clothes', NULL, 5, '0', 'Shop Designer Dog Clothes and Stylish Outfits for Dogs Online', 'Clothes for Dogs', 'Explore our exclusive range of designer dog clothes and fashionable outfits for dogs. Dress your furry companion in style with our trendy collection tailored for every occasion.', NULL, 0, '2024-02-19 23:09:20', '2024-07-02 15:14:17', '', '#'),
(26, 'Dog Bags', 'dog-bags', 'Bags', NULL, 5, '0', 'Carrying Case and Backpack for Large Dogs', 'Dog Carrying Case', 'Find the perfect travel solution for your pet with our selection of dog carrying cases, carrier backpacks for large dogs, and travel bags.', NULL, 0, '2024-02-19 23:09:46', '2024-07-02 15:03:43', '', '#'),
(27, 'Dog Travel Essentials', 'dog-travel-essentials', 'Travel Essentials', NULL, 5, '0', 'Essential Travel Products for Dogs | Bowl, Crate, and More', 'Travel Products for Dogs', 'Ensure a comfortable journey for your pet with our top travel products for dogs. Discover travel dog bowls, crates, and other essentials for stress-free and enjoyable trips with your furry friend.', NULL, 0, '2024-02-19 23:09:57', '2024-07-02 15:02:51', '', '#'),
(28, 'Cat Food', 'cat-food', 'Cat Food', 'uploads/category/1708405025.jpg', 2, '1', 'Premium Cat Food | Remediovet', 'cat food', 'Shop for premium cat food options at Remediovet. Discover nutritious meals for your beloved cat on our website.', 2, 0, '2024-02-19 23:12:55', '2024-07-02 15:01:58', '', '#'),
(29, 'Popular Category', 'popular-category', 'Popular Category', NULL, 2, '0', '', '', '', 3, 0, '2024-02-19 23:13:15', '2024-07-15 10:46:49', '', '#'),
(30, 'Cat Accessories', 'cat-accessories', 'Cat Accessories', 'uploads/category/1708404990.jpg', 2, '1', 'Explore High-Quality Cat Accessories | Remediovet', 'Cat Accessories', 'Shop for high-quality cat accessories at our online store. Browse through our collection of toys, houses, and more to find the perfect items for your beloved pet.', 4, 0, '2024-02-19 23:13:44', '2024-07-02 15:00:50', '', '#'),
(31, 'Cat Dry Food', 'cat-dry-food', 'Dry Food', NULL, 28, '0', 'Buy Healthy Dry Cat Food: Kittens, Adults and Seniors | Remediovet', 'Dry Cat Food', 'Looking for the best dry cat food for kittens, adults, and seniors? Check out Remediovet\'s premium selection to buy dry cat food that your furry friend will love!', NULL, 0, '2024-02-19 23:14:09', '2024-07-02 14:59:50', '', '#'),
(32, 'Cat Wet Food', 'cat-wet-food', 'Wet Food', NULL, 28, '0', 'Best Wet Cat Food for Kittens | Remediovet', 'Wet Cat Food', 'Discover the best wet food for cats and kittens. Ensure your feline gets the hydration and nutrition they need with our top-rated wet cat food picks.', NULL, 0, '2024-02-19 23:14:29', '2024-07-02 14:59:12', '', '#'),
(33, 'Cat Treats', 'cat-treats', 'Treats', NULL, 28, '0', 'Explore Delicious Cat Treats Online | Remediovet', 'Cat Treats', 'Indulge your cat with delicious treats from our online shop. Discover a variety of flavors and textures to satisfy your pet\'s cravings.', NULL, 0, '2024-02-19 23:15:14', '2024-07-02 14:58:35', '', '#'),
(34, 'Cat Kitten Food', 'cat-kitten-food', 'Kitten Food', NULL, 28, '0', 'Discover Top Kitten Food | Remediovet', 'Kitten Food', 'Find the perfect kitten food at RemedioVet. Browse our selection of high-quality products to provide your little one with the best nutrition. Shop online today!', NULL, 0, '2024-02-19 23:15:33', '2024-07-15 10:46:26', '', '#'),
(35, 'Cat Dewormer', 'cat-dewormer', 'Cat Dewormer', NULL, 2, '0', 'Natural Dewormer Medicine for Cats | Gentle Worm Treatment', 'Cat Dewormer', 'Safely eliminate worms in your cat with our deworming medicine for cats. Shop now for the best natural dewormer for cats!', NULL, 0, '2024-02-19 23:16:02', '2024-07-02 14:56:22', '', '#'),
(36, 'Dog Tick & Flea', 'dog-tick-flea', 'Tick & Flea', NULL, 1, '0', 'Best Flea and Tick Medicine for Dogs | Remediovet', 'Flea and Tick Medicine for Dogs', 'Protect your dog with the best flea and tick medicine. Our top-rated flea and tick pills and meds keep your pet safe and healthy.', NULL, 0, '2024-02-19 23:16:21', '2024-07-02 14:54:54', '', '#'),
(37, 'Dog Stress & Anxiety', 'dog-stress-anxiety', 'Stress & Anxiety', NULL, 1, '0', 'Best Stress and Anxiety Supplements for Dogs', 'Stress and Anxiety Supplements for Dogs', 'Shop the best stress and anxiety supplements for dogs. Our top-rated calming supplements provide effective relief for your pet\'s anxiety, promoting a sense of calm and well-being.', NULL, 0, '2024-02-19 23:16:49', '2024-07-15 10:45:58', '', '#'),
(38, 'Cat House', 'cat-house', 'Cat House', NULL, 30, '0', 'Stylish Cat Houses for Indoor and Outdoor', 'Cat House', 'Discover the perfect cat house for your feline friend, whether for indoor or outdoor use. Find the modern cat box house to provide comfort and shelter for your beloved pet.', NULL, 0, '2024-02-19 23:17:05', '2024-07-02 14:43:28', '', '#'),
(39, 'Dog Toys', 'dog-toys', 'Toys', 'uploads/category/1708405025.jpg', 5, '0', 'Shop the Best Dog Toys Online | Remediovet', 'Dog Toys', 'Find the best dog toys at our online shop. Explore our collection and choose from a variety of options to keep your dog happy and active.', NULL, 0, '2024-04-25 18:38:13', '2024-07-15 10:45:39', '', '#'),
(41, 'Others', 'others', 'Health Issues', NULL, 1, '0', 'meta title', 'Meta Keyword', 'Meta Description', 1, 0, '2024-05-03 08:18:35', '2024-07-15 10:45:14', 'uploads/category/1720606632.webp', '#'),
(42, 'Dog Hairfall', 'dog-hairfall', 'Hairfall', 'uploads/category/1715579190.jpg', 41, '0', 'a', 'a', 'a', NULL, 0, '2024-05-13 09:46:30', '2024-07-10 11:36:43', 'uploads/category/1720597003.webp', '#'),
(43, 'Cat Dandruff', 'cat-dandruff', 'Dandruff', 'uploads/category/1715579226.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:47:06', '2024-05-13 09:47:06', '', ''),
(44, 'Dog Appetite', 'dog-appetite', 'Appetite', 'uploads/category/1715579261.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:47:41', '2024-05-13 09:47:41', '', ''),
(45, 'Cat Weight', 'cat-weight', 'Weight', 'uploads/category/1715579290.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:48:10', '2024-05-13 09:48:10', '', ''),
(46, 'Dog Joints & Bones', 'dog-joints-bones', 'Joints & Bones', 'uploads/category/1715579325.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:48:45', '2024-05-13 09:48:45', '', ''),
(47, 'Cat Dental', 'cat-dental', 'Dental', 'uploads/category/1715579365.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:49:25', '2024-05-13 09:49:25', '', ''),
(48, 'Cat Skin & Coat', 'cat-skin--coat', 'Skin & Coat', 'uploads/category/1715579396.jpg', 41, '0', 'Premium Skin and Coat Health Products | Remediovet', 'Skin and Coat Health Products', 'Enhance your pet\'s skin and coat health with our premium remedies. Explore our online shop for a variety of products designed to promote a shiny and healthy coat.', NULL, 0, '2024-05-13 09:49:56', '2024-07-15 13:52:55', '', '#'),
(49, 'Dog Digestion', 'dog-digestion', 'Digestion', 'uploads/category/1715579448.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:50:48', '2024-05-13 09:50:48', '', ''),
(50, 'Dog Weakness', 'dog-weakness', 'Weakness', 'uploads/category/1715579473.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:51:13', '2024-05-13 09:51:13', '', ''),
(51, 'Dog Tick n Fleas', 'dog-tick-n-fleas', 'Tick n Fleas', 'uploads/category/1715579501.jpg', 41, '0', NULL, NULL, NULL, NULL, 0, '2024-05-13 09:51:41', '2024-05-13 09:51:41', '', ''),
(52, 'Dog Worms', 'dog-worms', 'Worms', 'uploads/category/1715579530.jpg', 41, '0', 'Shop Effective Pet Worm Products | Remediovet', 'Shop Effective Pet Worm Products | Remediovet', 'Shop Effective Pet Worm Products | Remediovet', NULL, 0, '2024-05-13 09:52:10', '2024-07-15 10:18:36', '', '#'),
(53, 'Dog Ear and Eye', 'dog-ear-and-eye', 'Ear and Eye', 'uploads/category/1715579565.jpg', 41, '0', 'Shop Top-Quality Ear and Eye Care Products for Pets Online!', 'Ear and Eye Care Products for Pets', 'Explore our online shop for top-quality ear and eye care products for your beloved pet. Shop now!', NULL, 0, '2024-05-13 09:52:45', '2024-07-15 10:18:25', '', '#'),
(54, 'Cat Health Issues', 'cat-health-issues', 'Health Issues', NULL, 2, '0', '', '', '', 1, 0, '2024-05-03 08:18:35', '2024-07-15 10:18:15', '', '#'),
(55, 'Cat Hairfall', 'cat-hairfall', 'Hairfall', 'uploads/category/1715579190.jpg', 54, '0', 'Top-Quality Pet Hair Fall Products | Remediovet', 'Pet Hair Fall Products', 'Shop for top-quality pet hair fall solutions at our online store. Find a wide range of products to address your pet\'s hair fall issues effectively.', NULL, 0, '2024-05-13 09:46:30', '2024-07-15 10:17:24', 'uploads/category/1720596854.webp', '#'),
(56, 'Dog Dandruff', 'dog-dandruff', 'Dandruff', 'uploads/category/1715579226.jpg', 54, '0', 'Shop Dog Dandruff Treatments Online | Remediovet', 'Dog Dandruff Treatments', 'Explore our online store for dog dandruff treatments. Choose from a selection of products designed to combat dandruff and improve your dog\'s skin and coat.', NULL, 0, '2024-05-13 09:47:06', '2024-07-15 10:16:52', '', '#'),
(57, 'Cat Appetite', 'cat-appetite', 'Appetite', 'uploads/category/1715579261.jpg', 54, '0', 'Shop Appeitite Products Online | Remediovet', 'Pet Appeitite Products', 'Improve and boost your pet\'s appeitite by picking the right products tailored for them. Shop with Remediovet now!', NULL, 0, '2024-05-13 09:47:41', '2024-07-15 10:16:42', '', '#'),
(58, 'Dog Weight', 'dog-weight', 'Weight', 'uploads/category/1715579290.jpg', 54, '0', 'Effective Dog Weight Management Solutions | Remediovet', 'Dog Weight Management', 'Find the perfect solution for your dog\'s weight management needs at our online shop. Explore our products now!', NULL, 0, '2024-05-13 09:48:10', '2024-07-15 10:16:32', '', '#'),
(59, 'Dog Joints & Bones', 'dog-joints--bones', 'Joints & Bones', 'uploads/category/1715579325.jpg', 54, '0', 'Enhance Your Dog\'s Joint and Bone Health | Remediovet', 'Joint and Bone Health of Pet', 'Improve your dog\'s joint and bone health with our high-quality remedies. Explore our online shop now!', NULL, 0, '2024-05-13 09:48:45', '2024-07-15 10:16:21', '', '#'),
(60, 'Dog Dental', 'dog-dental', 'Dental', 'uploads/category/1715579365.jpg', 54, '0', 'Explore Dental Products for Dogs | Remediovet', 'Dental Products for Dogs', 'Shop for dental products for dogs at our website. Find a wide range of remedies to keep your dog\'s teeth healthy and clean. Visit us today!', NULL, 0, '2024-05-13 09:49:25', '2024-07-15 10:16:10', '', '#'),
(61, 'Cat Skin & Coat', 'cat-skin--coat', 'Skin & Coat', 'uploads/category/1715579396.jpg', 54, '0', 'Premium Skin and Coat Health Products | Remediovet', 'Skin and Coat Health Products', 'Enhance your pet\'s skin and coat health with our premium remedies. Explore our online shop for a variety of products designed to promote a shiny and healthy coat.', NULL, 0, '2024-05-13 09:49:56', '2024-07-15 10:15:58', '', '#'),
(62, 'Cat Digestion', 'cat-digestion', 'Digestion', 'uploads/category/1715579448.jpg', 54, '0', 'Shop Digestion Supplements for Your Pet | Remediovet', 'Digestion Supplements for Pet', 'Find the perfect solution for your pet\'s digestion issues at our online shop. Explore our collection of remedies and supplements to support optimal digestive health. Shop now!', NULL, 0, '2024-05-13 09:50:48', '2024-07-15 10:15:42', '', '#'),
(63, 'Cat Weakness', 'cat-weakness', 'Weakness', 'uploads/category/1715579473.jpg', 54, '0', 'Effective Pet Weakness Supplements | Remediovet', 'Pet Weakness Supplements', 'Improve your pet\'s energy levels and combat weakness with our range of effective remedies. Visit our online shop and discover the perfect solution for your beloved pet.', NULL, 0, '2024-05-13 09:51:13', '2024-07-15 10:14:43', '', '#'),
(64, 'Cat Tick n Fleas', 'cat-tick-n-fleas', 'Tick n Fleas', 'uploads/category/1715579501.jpg', 54, '0', 'Tick and Flea Products for Pets | Remediovet', 'Tick and Flea Products for Pets', 'Looking for tick and flea treatments for your pets? Explore our online shop for a variety of remedies that will help keep your furry friends happy and healthy.', NULL, 0, '2024-05-13 09:51:41', '2024-07-15 10:07:00', '', '#'),
(65, 'Cat Worms', 'cat-worms', 'Worms', 'uploads/category/1715579530.jpg', 54, '0', 'Shop Effective Pet Worm Products | Remediovet', 'pet worms', 'Find the perfect solution for pet worms at our online shop. Explore our range of effective remedies to keep your furry friends in top shape.', NULL, 0, '2024-05-13 09:52:10', '2024-07-15 10:04:28', 'uploads/category/1720597069.webp', '#'),
(70, 'Dog Health Issues', 'dog-health-issues', 'Health Issues', NULL, 1, '0', '', '', '', 1, 0, '2024-05-03 08:18:35', '2024-07-15 10:18:15', '', '#'),
(71, 'CatEar and Eye', 'cat-ear-and-eye', 'Cat Ear and Eye', NULL, 54, '0', NULL, NULL, NULL, NULL, 0, '2024-07-15 11:49:55', '2024-07-15 11:49:55', 'uploads/category/1721029795.webp', '#');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `state_id`) VALUES
(1, 'North and Middle Andaman', 32),
(2, 'South Andaman', 32),
(3, 'Nicobar', 32),
(4, 'Adilabad', 1),
(5, 'Anantapur', 1),
(6, 'Chittoor', 1),
(7, 'East Godavari', 1),
(8, 'Guntur', 1),
(9, 'Hyderabad', 1),
(10, 'Kadapa', 1),
(11, 'Karimnagar', 1),
(12, 'Khammam', 1),
(13, 'Krishna', 1),
(14, 'Kurnool', 1),
(15, 'Mahbubnagar', 1),
(16, 'Medak', 1),
(17, 'Nalgonda', 1),
(18, 'Nellore', 1),
(19, 'Nizamabad', 1),
(20, 'Prakasam', 1),
(21, 'Rangareddi', 1),
(22, 'Srikakulam', 1),
(23, 'Vishakhapatnam', 1),
(24, 'Vizianagaram', 1),
(25, 'Warangal', 1),
(26, 'West Godavari', 1),
(27, 'Anjaw', 3),
(28, 'Changlang', 3),
(29, 'East Kameng', 3),
(30, 'Lohit', 3),
(31, 'Lower Subansiri', 3),
(32, 'Papum Pare', 3),
(33, 'Tirap', 3),
(34, 'Dibang Valley', 3),
(35, 'Upper Subansiri', 3),
(36, 'West Kameng', 3),
(37, 'Barpeta', 2),
(38, 'Bongaigaon', 2),
(39, 'Cachar', 2),
(40, 'Darrang', 2),
(41, 'Dhemaji', 2),
(42, 'Dhubri', 2),
(43, 'Dibrugarh', 2),
(44, 'Goalpara', 2),
(45, 'Golaghat', 2),
(46, 'Hailakandi', 2),
(47, 'Jorhat', 2),
(48, 'Karbi Anglong', 2),
(49, 'Karimganj', 2),
(50, 'Kokrajhar', 2),
(51, 'Lakhimpur', 2),
(52, 'Marigaon', 2),
(53, 'Nagaon', 2),
(54, 'Nalbari', 2),
(55, 'North Cachar Hills', 2),
(56, 'Sibsagar', 2),
(57, 'Sonitpur', 2),
(58, 'Tinsukia', 2),
(59, 'Araria', 4),
(60, 'Aurangabad', 4),
(61, 'Banka', 4),
(62, 'Begusarai', 4),
(63, 'Bhagalpur', 4),
(64, 'Bhojpur', 4),
(65, 'Buxar', 4),
(66, 'Darbhanga', 4),
(67, 'Purba Champaran', 4),
(68, 'Gaya', 4),
(69, 'Gopalganj', 4),
(70, 'Jamui', 4),
(71, 'Jehanabad', 4),
(72, 'Khagaria', 4),
(73, 'Kishanganj', 4),
(74, 'Kaimur', 4),
(75, 'Katihar', 4),
(76, 'Lakhisarai', 4),
(77, 'Madhubani', 4),
(78, 'Munger', 4),
(79, 'Madhepura', 4),
(80, 'Muzaffarpur', 4),
(81, 'Nalanda', 4),
(82, 'Nawada', 4),
(83, 'Patna', 4),
(84, 'Purnia', 4),
(85, 'Rohtas', 4),
(86, 'Saharsa', 4),
(87, 'Samastipur', 4),
(88, 'Sheohar', 4),
(89, 'Sheikhpura', 4),
(90, 'Saran', 4),
(91, 'Sitamarhi', 4),
(92, 'Supaul', 4),
(93, 'Siwan', 4),
(94, 'Vaishali', 4),
(95, 'Pashchim Champaran', 4),
(96, 'Bastar', 36),
(97, 'Bilaspur', 36),
(98, 'Dantewada', 36),
(99, 'Dhamtari', 36),
(100, 'Durg', 36),
(101, 'Jashpur', 36),
(102, 'Janjgir-Champa', 36),
(103, 'Korba', 36),
(104, 'Koriya', 36),
(105, 'Kanker', 36),
(106, 'Kawardha', 36),
(107, 'Mahasamund', 36),
(108, 'Raigarh', 36),
(109, 'Rajnandgaon', 36),
(110, 'Raipur', 36),
(111, 'Surguja', 36),
(112, 'Diu', 29),
(113, 'Daman', 29),
(114, 'Central Delhi', 25),
(115, 'East Delhi', 25),
(116, 'New Delhi', 25),
(117, 'North Delhi', 25),
(118, 'North East Delhi', 25),
(119, 'North West Delhi', 25),
(120, 'South Delhi', 25),
(121, 'South West Delhi', 25),
(122, 'West Delhi', 25),
(123, 'North Goa', 26),
(124, 'South Goa', 26),
(125, 'Ahmedabad', 5),
(126, 'Amreli District', 5),
(127, 'Anand', 5),
(128, 'Banaskantha', 5),
(129, 'Bharuch', 5),
(130, 'Bhavnagar', 5),
(131, 'Dahod', 5),
(132, 'The Dangs', 5),
(133, 'Gandhinagar', 5),
(134, 'Jamnagar', 5),
(135, 'Junagadh', 5),
(136, 'Kutch', 5),
(137, 'Kheda', 5),
(138, 'Mehsana', 5),
(139, 'Narmada', 5),
(140, 'Navsari', 5),
(141, 'Patan', 5),
(142, 'Panchmahal', 5),
(143, 'Porbandar', 5),
(144, 'Rajkot', 5),
(145, 'Sabarkantha', 5),
(146, 'Surendranagar', 5),
(147, 'Surat', 5),
(148, 'Vadodara', 5),
(149, 'Valsad', 5),
(150, 'Ambala', 6),
(151, 'Bhiwani', 6),
(152, 'Faridabad', 6),
(153, 'Fatehabad', 6),
(154, 'Gurgaon', 6),
(155, 'Hissar', 6),
(156, 'Jhajjar', 6),
(157, 'Jind', 6),
(158, 'Karnal', 6),
(159, 'Kaithal', 6),
(160, 'Kurukshetra', 6),
(161, 'Mahendragarh', 6),
(162, 'Mewat', 6),
(163, 'Panchkula', 6),
(164, 'Panipat', 6),
(165, 'Rewari', 6),
(166, 'Rohtak', 6),
(167, 'Sirsa', 6),
(168, 'Sonepat', 6),
(169, 'Yamuna Nagar', 6),
(170, 'Palwal', 6),
(171, 'Bilaspur', 7),
(172, 'Chamba', 7),
(173, 'Hamirpur', 7),
(174, 'Kangra', 7),
(175, 'Kinnaur', 7),
(176, 'Kulu', 7),
(177, 'Lahaul and Spiti', 7),
(178, 'Mandi', 7),
(179, 'Shimla', 7),
(180, 'Sirmaur', 7),
(181, 'Solan', 7),
(182, 'Una', 7),
(183, 'Anantnag', 8),
(184, 'Badgam', 8),
(185, 'Bandipore', 8),
(186, 'Baramula', 8),
(187, 'Doda', 8),
(188, 'Jammu', 8),
(189, 'Kargil', 8),
(190, 'Kathua', 8),
(191, 'Kupwara', 8),
(192, 'Leh', 8),
(193, 'Poonch', 8),
(194, 'Pulwama', 8),
(195, 'Rajauri', 8),
(196, 'Srinagar', 8),
(197, 'Samba', 8),
(198, 'Udhampur', 8),
(199, 'Bokaro', 34),
(200, 'Chatra', 34),
(201, 'Deoghar', 34),
(202, 'Dhanbad', 34),
(203, 'Dumka', 34),
(204, 'Purba Singhbhum', 34),
(205, 'Garhwa', 34),
(206, 'Giridih', 34),
(207, 'Godda', 34),
(208, 'Gumla', 34),
(209, 'Hazaribagh', 34),
(210, 'Koderma', 34),
(211, 'Lohardaga', 34),
(212, 'Pakur', 34),
(213, 'Palamu', 34),
(214, 'Ranchi', 34),
(215, 'Sahibganj', 34),
(216, 'Seraikela and Kharsawan', 34),
(217, 'Pashchim Singhbhum', 34),
(218, 'Ramgarh', 34),
(219, 'Bidar', 9),
(220, 'Belgaum', 9),
(221, 'Bijapur', 9),
(222, 'Bagalkot', 9),
(223, 'Bellary', 9),
(224, 'Bangalore Rural District', 9),
(225, 'Bangalore Urban District', 9),
(226, 'Chamarajnagar', 9),
(227, 'Chikmagalur', 9),
(228, 'Chitradurga', 9),
(229, 'Davanagere', 9),
(230, 'Dharwad', 9),
(231, 'Dakshina Kannada', 9),
(232, 'Gadag', 9),
(233, 'Gulbarga', 9),
(234, 'Hassan', 9),
(235, 'Haveri District', 9),
(236, 'Kodagu', 9),
(237, 'Kolar', 9),
(238, 'Koppal', 9),
(239, 'Mandya', 9),
(240, 'Mysore', 9),
(241, 'Raichur', 9),
(242, 'Shimoga', 9),
(243, 'Tumkur', 9),
(244, 'Udupi', 9),
(245, 'Uttara Kannada', 9),
(246, 'Ramanagara', 9),
(247, 'Chikballapur', 9),
(248, 'Yadagiri', 9),
(249, 'Alappuzha', 10),
(250, 'Ernakulam', 10),
(251, 'Idukki', 10),
(252, 'Kollam', 10),
(253, 'Kannur', 10),
(254, 'Kasaragod', 10),
(255, 'Kottayam', 10),
(256, 'Kozhikode', 10),
(257, 'Malappuram', 10),
(258, 'Palakkad', 10),
(259, 'Pathanamthitta', 10),
(260, 'Thrissur', 10),
(261, 'Thiruvananthapuram', 10),
(262, 'Wayanad', 10),
(263, 'Alirajpur', 11),
(264, 'Anuppur', 11),
(265, 'Ashok Nagar', 11),
(266, 'Balaghat', 11),
(267, 'Barwani', 11),
(268, 'Betul', 11),
(269, 'Bhind', 11),
(270, 'Bhopal', 11),
(271, 'Burhanpur', 11),
(272, 'Chhatarpur', 11),
(273, 'Chhindwara', 11),
(274, 'Damoh', 11),
(275, 'Datia', 11),
(276, 'Dewas', 11),
(277, 'Dhar', 11),
(278, 'Dindori', 11),
(279, 'Guna', 11),
(280, 'Gwalior', 11),
(281, 'Harda', 11),
(282, 'Hoshangabad', 11),
(283, 'Indore', 11),
(284, 'Jabalpur', 11),
(285, 'Jhabua', 11),
(286, 'Katni', 11),
(287, 'Khandwa', 11),
(288, 'Khargone', 11),
(289, 'Mandla', 11),
(290, 'Mandsaur', 11),
(291, 'Morena', 11),
(292, 'Narsinghpur', 11),
(293, 'Neemuch', 11),
(294, 'Panna', 11),
(295, 'Rewa', 11),
(296, 'Rajgarh', 11),
(297, 'Ratlam', 11),
(298, 'Raisen', 11),
(299, 'Sagar', 11),
(300, 'Satna', 11),
(301, 'Sehore', 11),
(302, 'Seoni', 11),
(303, 'Shahdol', 11),
(304, 'Shajapur', 11),
(305, 'Sheopur', 11),
(306, 'Shivpuri', 11),
(307, 'Sidhi', 11),
(308, 'Singrauli', 11),
(309, 'Tikamgarh', 11),
(310, 'Ujjain', 11),
(311, 'Umaria', 11),
(312, 'Vidisha', 11),
(313, 'Ahmednagar', 12),
(314, 'Akola', 12),
(315, 'Amrawati', 12),
(316, 'Aurangabad', 12),
(317, 'Bhandara', 12),
(318, 'Beed', 12),
(319, 'Buldhana', 12),
(320, 'Chandrapur', 12),
(321, 'Dhule', 12),
(322, 'Gadchiroli', 12),
(323, 'Gondiya', 12),
(324, 'Hingoli', 12),
(325, 'Jalgaon', 12),
(326, 'Jalna', 12),
(327, 'Kolhapur', 12),
(328, 'Latur', 12),
(329, 'Mumbai City', 12),
(330, 'Mumbai suburban', 12),
(331, 'Nandurbar', 12),
(332, 'Nanded', 12),
(333, 'Nagpur', 12),
(334, 'Nashik', 12),
(335, 'Osmanabad', 12),
(336, 'Parbhani', 12),
(337, 'Pune', 12),
(338, 'Raigad', 12),
(339, 'Ratnagiri', 12),
(340, 'Sindhudurg', 12),
(341, 'Sangli', 12),
(342, 'Solapur', 12),
(343, 'Satara', 12),
(344, 'Thane', 12),
(345, 'Wardha', 12),
(346, 'Washim', 12),
(347, 'Yavatmal', 12),
(348, 'Bishnupur', 13),
(349, 'Churachandpur', 13),
(350, 'Chandel', 13),
(351, 'Imphal East', 13),
(352, 'Senapati', 13),
(353, 'Tamenglong', 13),
(354, 'Thoubal', 13),
(355, 'Ukhrul', 13),
(356, 'Imphal West', 13),
(357, 'East Garo Hills', 14),
(358, 'East Khasi Hills', 14),
(359, 'Jaintia Hills', 14),
(360, 'Ri-Bhoi', 14),
(361, 'South Garo Hills', 14),
(362, 'West Garo Hills', 14),
(363, 'West Khasi Hills', 14),
(364, 'Aizawl', 15),
(365, 'Champhai', 15),
(366, 'Kolasib', 15),
(367, 'Lawngtlai', 15),
(368, 'Lunglei', 15),
(369, 'Mamit', 15),
(370, 'Saiha', 15),
(371, 'Serchhip', 15),
(372, 'Dimapur', 16),
(373, 'Kohima', 16),
(374, 'Mokokchung', 16),
(375, 'Mon', 16),
(376, 'Phek', 16),
(377, 'Tuensang', 16),
(378, 'Wokha', 16),
(379, 'Zunheboto', 16),
(380, 'Angul', 17),
(381, 'Boudh', 17),
(382, 'Bhadrak', 17),
(383, 'Bolangir', 17),
(384, 'Bargarh', 17),
(385, 'Baleswar', 17),
(386, 'Cuttack', 17),
(387, 'Debagarh', 17),
(388, 'Dhenkanal', 17),
(389, 'Ganjam', 17),
(390, 'Gajapati', 17),
(391, 'Jharsuguda', 17),
(392, 'Jajapur', 17),
(393, 'Jagatsinghpur', 17),
(394, 'Khordha', 17),
(395, 'Kendujhar', 17),
(396, 'Kalahandi', 17),
(397, 'Kandhamal', 17),
(398, 'Koraput', 17),
(399, 'Kendrapara', 17),
(400, 'Malkangiri', 17),
(401, 'Mayurbhanj', 17),
(402, 'Nabarangpur', 17),
(403, 'Nuapada', 17),
(404, 'Nayagarh', 17),
(405, 'Puri', 17),
(406, 'Rayagada', 17),
(407, 'Sambalpur', 17),
(408, 'Subarnapur', 17),
(409, 'Sundargarh', 17),
(410, 'Karaikal', 27),
(411, 'Mahe', 27),
(412, 'Puducherry', 27),
(413, 'Yanam', 27),
(414, 'Amritsar', 18),
(415, 'Bathinda', 18),
(416, 'Firozpur', 18),
(417, 'Faridkot', 18),
(418, 'Fatehgarh Sahib', 18),
(419, 'Gurdaspur', 18),
(420, 'Hoshiarpur', 18),
(421, 'Jalandhar', 18),
(422, 'Kapurthala', 18),
(423, 'Ludhiana', 18),
(424, 'Mansa', 18),
(425, 'Moga', 18),
(426, 'Mukatsar', 18),
(427, 'Nawan Shehar', 18),
(428, 'Patiala', 18),
(429, 'Rupnagar', 18),
(430, 'Sangrur', 18),
(431, 'Ajmer', 19),
(432, 'Alwar', 19),
(433, 'Bikaner', 19),
(434, 'Barmer', 19),
(435, 'Banswara', 19),
(436, 'Bharatpur', 19),
(437, 'Baran', 19),
(438, 'Bundi', 19),
(439, 'Bhilwara', 19),
(440, 'Churu', 19),
(441, 'Chittorgarh', 19),
(442, 'Dausa', 19),
(443, 'Dholpur', 19),
(444, 'Dungapur', 19),
(445, 'Ganganagar', 19),
(446, 'Hanumangarh', 19),
(447, 'Juhnjhunun', 19),
(448, 'Jalore', 19),
(449, 'Jodhpur', 19),
(450, 'Jaipur', 19),
(451, 'Jaisalmer', 19),
(452, 'Jhalawar', 19),
(453, 'Karauli', 19),
(454, 'Kota', 19),
(455, 'Nagaur', 19),
(456, 'Pali', 19),
(457, 'Pratapgarh', 19),
(458, 'Rajsamand', 19),
(459, 'Sikar', 19),
(460, 'Sawai Madhopur', 19),
(461, 'Sirohi', 19),
(462, 'Tonk', 19),
(463, 'Udaipur', 19),
(464, 'East Sikkim', 20),
(465, 'North Sikkim', 20),
(466, 'South Sikkim', 20),
(467, 'West Sikkim', 20),
(468, 'Ariyalur', 21),
(469, 'Chennai', 21),
(470, 'Coimbatore', 21),
(471, 'Cuddalore', 21),
(472, 'Dharmapuri', 21),
(473, 'Dindigul', 21),
(474, 'Erode', 21),
(475, 'Kanchipuram', 21),
(476, 'Kanyakumari', 21),
(477, 'Karur', 21),
(478, 'Madurai', 21),
(479, 'Nagapattinam', 21),
(480, 'The Nilgiris', 21),
(481, 'Namakkal', 21),
(482, 'Perambalur', 21),
(483, 'Pudukkottai', 21),
(484, 'Ramanathapuram', 21),
(485, 'Salem', 21),
(486, 'Sivagangai', 21),
(487, 'Tiruppur', 21),
(488, 'Tiruchirappalli', 21),
(489, 'Theni', 21),
(490, 'Tirunelveli', 21),
(491, 'Thanjavur', 21),
(492, 'Thoothukudi', 21),
(493, 'Thiruvallur', 21),
(494, 'Thiruvarur', 21),
(495, 'Tiruvannamalai', 21),
(496, 'Vellore', 21),
(497, 'Villupuram', 21),
(498, 'Dhalai', 22),
(499, 'North Tripura', 22),
(500, 'South Tripura', 22),
(501, 'West Tripura', 22),
(502, 'Almora', 33),
(503, 'Bageshwar', 33),
(504, 'Chamoli', 33),
(505, 'Champawat', 33),
(506, 'Dehradun', 33),
(507, 'Haridwar', 33),
(508, 'Nainital', 33),
(509, 'Pauri Garhwal', 33),
(510, 'Pithoragharh', 33),
(511, 'Rudraprayag', 33),
(512, 'Tehri Garhwal', 33),
(513, 'Udham Singh Nagar', 33),
(514, 'Uttarkashi', 33),
(515, 'Agra', 23),
(516, 'Allahabad', 23),
(517, 'Aligarh', 23),
(518, 'Ambedkar Nagar', 23),
(519, 'Auraiya', 23),
(520, 'Azamgarh', 23),
(521, 'Barabanki', 23),
(522, 'Badaun', 23),
(523, 'Bagpat', 23),
(524, 'Bahraich', 23),
(525, 'Bijnor', 23),
(526, 'Ballia', 23),
(527, 'Banda', 23),
(528, 'Balrampur', 23),
(529, 'Bareilly', 23),
(530, 'Basti', 23),
(531, 'Bulandshahr', 23),
(532, 'Chandauli', 23),
(533, 'Chitrakoot', 23),
(534, 'Deoria', 23),
(535, 'Etah', 23),
(536, 'Kanshiram Nagar', 23),
(537, 'Etawah', 23),
(538, 'Firozabad', 23),
(539, 'Farrukhabad', 23),
(540, 'Fatehpur', 23),
(541, 'Faizabad', 23),
(542, 'Gautam Buddha Nagar', 23),
(543, 'Gonda', 23),
(544, 'Ghazipur', 23),
(545, 'Gorkakhpur', 23),
(546, 'Ghaziabad', 23),
(547, 'Hamirpur', 23),
(548, 'Hardoi', 23),
(549, 'Mahamaya Nagar', 23),
(550, 'Jhansi', 23),
(551, 'Jalaun', 23),
(552, 'Jyotiba Phule Nagar', 23),
(553, 'Jaunpur District', 23),
(554, 'Kanpur Dehat', 23),
(555, 'Kannauj', 23),
(556, 'Kanpur Nagar', 23),
(557, 'Kaushambi', 23),
(558, 'Kushinagar', 23),
(559, 'Lalitpur', 23),
(560, 'Lakhimpur Kheri', 23),
(561, 'Lucknow', 23),
(562, 'Mau', 23),
(563, 'Meerut', 23),
(564, 'Maharajganj', 23),
(565, 'Mahoba', 23),
(566, 'Mirzapur', 23),
(567, 'Moradabad', 23),
(568, 'Mainpuri', 23),
(569, 'Mathura', 23),
(570, 'Muzaffarnagar', 23),
(571, 'Pilibhit', 23),
(572, 'Pratapgarh', 23),
(573, 'Rampur', 23),
(574, 'Rae Bareli', 23),
(575, 'Saharanpur', 23),
(576, 'Sitapur', 23),
(577, 'Shahjahanpur', 23),
(578, 'Sant Kabir Nagar', 23),
(579, 'Siddharthnagar', 23),
(580, 'Sonbhadra', 23),
(581, 'Sant Ravidas Nagar', 23),
(582, 'Sultanpur', 23),
(583, 'Shravasti', 23),
(584, 'Unnao', 23),
(585, 'Varanasi', 23),
(586, 'Birbhum', 24),
(587, 'Bankura', 24),
(588, 'Bardhaman', 24),
(589, 'Darjeeling', 24),
(590, 'Dakshin Dinajpur', 24),
(591, 'Hooghly', 24),
(592, 'Howrah', 24),
(593, 'Jalpaiguri', 24),
(594, 'Cooch Behar', 24),
(595, 'Kolkata', 24),
(596, 'Malda', 24),
(597, 'Midnapore', 24),
(598, 'Murshidabad', 24),
(599, 'Nadia', 24),
(600, 'North 24 Parganas', 24),
(601, 'South 24 Parganas', 24),
(602, 'Purulia', 24),
(603, 'Uttar Dinajpur', 24);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#080808', 0, '2024-02-08 07:07:04', '2024-02-08 07:07:04'),
(2, 'Red', '#bc0101', 0, '2024-02-15 00:16:50', '2024-02-15 00:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'Contact us - Remediovet', 'Contact', 'We’d love to hear from you – please use the form to send us your message or ideas.', '2024-07-04 11:13:44', '2024-07-04 12:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `contactuss`
--

CREATE TABLE `contactuss` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactuss`
--

INSERT INTO `contactuss` (`id`, `fname`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(7, 'Peter Thomas', 'rinkusharma4543@gmail.com', '745345681', 'test', '2024-05-13 04:34:50', '2024-05-13 04:34:50'),
(8, 'Maddy', 'maddy@yopmail.com', '8596895687', 'testing the code', '2024-05-24 12:03:58', '2024-05-24 12:03:58'),
(9, 'Aman', 'amana@yopmail.com', '745345681', 'test', '2024-05-30 04:27:23', '2024-05-30 04:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `content_management`
--

CREATE TABLE `content_management` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0 For Disable | 1 For Enable',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_management`
--

INSERT INTO `content_management` (`id`, `type`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'shipping', 'Shipping', '<h2><strong>Standard Delivery</strong></h2><p>Pending order verification and credit approval, please allow aprox. 7 – 10 business days for shipping delivery time excluding holidays. Personalized or custom orders require additional time. Once your order has been processed, you will receive your shipping tracking #.</p><h2><strong>Cost</strong></h2><p>The exact shipping charges will be calculated at checkout based on the total value and weight of your order before taxes. Additional charges may apply for oversize items and remote areas.<br>Expedited and Express Delivery options are available.</p><h2><strong>Tax</strong></h2><p>Applicable taxes will be added on all items. Shipping costs are not taxable.</p><h2><strong>International Orders</strong></h2><p>If you wish to ship an order outside of India, please email us at <a href=\"mailto:woof@remediovet.com\">woof@remediovet.com</a><br>or call us at <a href=\"tel:892-057-8443\">892-057-8443</a> and we will be happy to assist you.<br>Please note that we are sorry that we can not be responsible for the loss or damage of packages once they are shipped to an international destination. Customers are responsible for any customs or duty charges.</p>', 1, '2024-04-16 04:38:22', '2024-04-16 07:13:43'),
(2, 'return', 'Return Policy', '<h2><strong>Shipping &amp; Return Policy</strong></h2><p>Orders below INR 500 are subject to shipping charges. Users can select standard or expedited shipping options at the time of checkout. Orders above 500 INR qualify for free shipping.&nbsp;</p><p>Orders received by noon are dispatched the same day. Orders received after noon are shipped the same day on best effort basis otherwise they are shipped the following working day.</p><p>We will accept items for exchange or return for full credit within 14 days from the date of receipt.</p><p>We do not refund shipping charges, unless we have sent you an incorrect item. Upon receipt of returned items, Remedio Health LLP. reserves the right to deny refund if the merchandise does not meet our return policy requirements.</p><p>Custom orders and Final Sale items can not be exchanged or returned at any time.</p><p>With the original receipt, requests for price adjustments will be honored if the merchandise was purchased at full price and if it is marked down within 7 days of receipt of your package.</p><p>A credit will be issued for the purchase price of the returned or exchanged item provided the item is in its original condition, unused and in its original packaging. The packing slip or a copy of the transaction must be included with your return.</p><p>Please ship your Return or Exchange via a traceable shipping method. Please be sure to keep the Return Tracking Number until you receive your refund.</p><p>Return shipping charges and insurance are the responsibility of the customer.</p><p>Customer is responsible for any shipping charges on any bounced or undeliverable packages.</p><p>We will apply your refund to the original form of payment within 2-3 business days of receipt. Remedio Health LLP will notify you via email to the address you have listed on your order when the refund has been applied.<br>Please note that your bank may require additional days to process and post this transaction to your account.</p><h2><strong>Return Address</strong></h2><p>Remedio Health LLP</p><p>Plot 157-A, Shop 9, Sarangpur, Chandigarh 160014,&nbsp;Ph: 8920578443</p><p>Items received as gifts may be exchanged for another item of equal or greater value.</p><p>If you have received an incorrect or damaged item, please contact us at <a href=\"mailto:woof@remediovet.com\">woof@remediovet.com</a></p><p>or phone us at <a href=\"tel:892-057-8443\">892-057-8443</a></p><p>We will issue you a return label to ship the item back and discuss how we can correct the problem.</p>', 1, '2024-04-16 04:39:44', '2024-04-16 07:14:04'),
(3, 'privacy', 'Privacy Policy', '<h2><strong>Who we are</strong></h2><p>Our website address is: <a href=\"https://www.remediovet.com\">https://www.remediovet.com</a></p><h2><strong>Comments</strong></h2><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h2><strong>Media</strong></h2><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h2><strong>Cookies</strong></h2><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select “Remember Me”, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h2><strong>Embedded content from other websites</strong></h2><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h2><strong>Who we share your data with</strong></h2><p>If you request a password reset, your IP address will be included in the reset email.</p><h2><strong>How long we retain your data</strong></h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2><strong>What rights you have over your data</strong></h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2><strong>Where we send your data</strong></h2><p>We have a strict data privacy policy. Your data is only used to suggest your products and for shipping. We do not share or sell your data to any third-party.&nbsp;</p>', 1, '2024-04-16 04:42:21', '2024-04-16 07:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `name`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Bonaire'),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos [Keeling] Islands'),
(40, 'CD', 'Democratic Republic of the Congo'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Republic of the Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Ivory Coast'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curacao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard Island and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Laos'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint Martin'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar [Burma]'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macao'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'Saint Pierre and Miquelon'),
(181, 'PN', 'Pitcairn Islands'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russia'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'São Tomé and Príncipe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'East Timor'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'U.S. Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican City'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'British Virgin Islands'),
(240, 'VI', 'U.S. Virgin Islands'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna'),
(244, 'WS', 'Samoa'),
(245, 'XK', 'Kosovo'),
(246, 'YE', 'Yemen'),
(247, 'YT', 'Mayotte'),
(248, 'ZA', 'South Africa'),
(249, 'ZM', 'Zambia'),
(250, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `directories`
--

CREATE TABLE `directories` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directories`
--

INSERT INTO `directories` (`id`, `type`, `title`, `address`, `city`, `phone`, `url`, `created_at`, `updated_at`) VALUES
(13, 'grooming', 'John', 'No. 143,Ground Floor, Phase 7, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160062', 'Sahibzada Ajit Singh Nagar', '9874561325', 'https://www.google.com/maps/place/THE+SMALL+ANIMAL+PET+HOSPITAL+%26+PET+MALL/@30.7017464,76.6919819,14z/data=!4m7!3m6!1s0x390fef1973d6e943:0xf37d3ff8c52676e2!8m2!3d30.7017464!4d76.7280308!15sCgpwZXQgY2xpbmljWgwiCnBldCBjbGluaWOSAQlwZXRfc3RvcmWaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTlBjRGR0WTNKM1JSQULgAQA!16s%2Fg%2F11rwy6dgbx?shorturl=1', '2024-04-05 09:36:16', '2024-05-13 06:46:59'),
(14, 'vets', 'The Small Animal Pet Hospital & Pet Mall', 'No. 143,Ground Floor, Phase 7, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160062', 'Sahibzada Ajit Singh Nagar', '+91 9878987863', 'https://www.google.com/maps/place/THE+SMALL+ANIMAL+PET+HOSPITAL+%26+PET+MALL/@30.7017464,76.6919819,14z/data=!4m7!3m6!1s0x390fef1973d6e943:0xf37d3ff8c52676e2!8m2!3d30.7017464!4d76.7280308!15sCgpwZXQgY2xpbmljWgwiCnBldCBjbGluaWOSAQlwZXRfc3RvcmWaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTlBjRGR0WTNKM1JSQULgAQA!16s%2Fg%2F11rwy6dgbx?shorturl=1', '2024-05-13 04:09:42', '2024-05-13 04:09:42'),
(15, 'vets', '12 West Pet Clinic & Surgery', 'Khuda Lahora Rd, Khudda Lahora, Chandigarh, 160014', 'Chandigarh', NULL, 'https://www.google.com/maps/place/12WEST+pet+clinic+and+surgery/@30.7729701,76.734922,14z/data=!4m7!3m6!1s0x390ff3802f0b5033:0x3a892ebded598d2b!8m2!3d30.7729701!4d76.7709709!15sCgpwZXQgY2xpbmljkgEPdmV0ZXJpbmFyeV9jYXJl4AEA!16s%2Fg%2F11kcnd4wdd?shorturl=1', '2024-05-13 07:08:35', '2024-05-13 07:08:35'),
(16, 'vets', 'Veterinary Poly Clinic', 'PMGW+QHX, Sector 119, SAS Nagar, Balongi, Sahibzada Ajit Singh Nagar, Punjab 160055', 'Sahibzada Ajit Singh Nagar,', NULL, 'https://www.google.com/maps/place/Veternary+Poly+Clinic/@30.7269771,76.6604307,14z/data=!4m7!3m6!1s0x390fee4f2159b313:0x95736547a8936b24!8m2!3d30.7269771!4d76.6964796!15sCgpwZXQgY2xpbmljkgEPYW5pbWFsX2hvc3BpdGFs4AEA!16s%2Fg%2F1ptyq1t1q?shorturl=1', '2024-05-13 07:09:59', '2024-05-13 07:09:59'),
(17, 'training', 'John', 'No. 143,Ground Floor, Phase 7, Sector 61, Sahibzada Ajit Singh Nagar, Punjab 160062', 'Sahibzada Ajit Singh Nagar', '1234567895', 'https://www.google.com/maps/place/THE+SMALL+ANIMAL+PET+HOSPITAL+%26+PET+MALL/@30.7017464,76.6919819,14z/data=!4m7!3m6!1s0x390fef1973d6e943:0xf37d3ff8c52676e2!8m2!3d30.7017464!4d76.7280308!15sCgpwZXQgY2xpbmljWgwiCnBldCBjbGluaWOSAQlwZXRfc3RvcmWaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTlBjRGR0WTNKM1JSQULgAQA!16s%2Fg%2F11rwy6dgbx?shorturl=1', '2024-05-13 07:12:15', '2024-05-13 07:12:15'),
(18, 'vets', 'Government Pet Hospital', 'Shastri Market Rd, Sector 22D, Sector 22, Chandigarh, 160022', 'Chandigarh', NULL, 'https://www.google.com/maps/place/GOVT.+PET+HOSPITAL/@30.7330072,76.7353886,14z/data=!4m7!3m6!1s0x390feda5ac7568bd:0xa8914b17686737df!8m2!3d30.7330072!4d76.7714375!15sCgpwZXQgY2xpbmljWgwiCnBldCBjbGluaWOSAQ9hbmltYWxfaG9zcGl0YWyaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTmxjelpUTldSbkVBReABAA!16s%2Fg%2F11dxqbdls2?shorturl=1', '2024-05-13 07:14:53', '2024-05-13 07:14:53'),
(19, 'vets', 'Royal K9 Pet Clinic', 'no 134-135 Phase, Booth, 5, Mohali Stadium Rd, Sahibzada Ajit Singh Nagar, Punjab 160059', 'Sahibzada Ajit Singh Nagar', '+91 9815316632', 'https://www.google.com/maps/place/\'\'Royal+K9\'+Pet+Clinic\'/@30.7250596,76.6900158,14z/data=!4m7!3m6!1s0x390fee6213d33133:0xb24ca0c892863042!8m2!3d30.7156854!4d76.7161644!15sCgpwZXQgY2xpbmljWgwiCnBldCBjbGluaWOSAQx2ZXRlcmluYXJpYW6aASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVTkRhWEpYTm1KUkVBReABAA!16s%2Fg%2F11g9qfcxmx?shorturl=1', '2024-05-13 07:16:39', '2024-05-13 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `directory_hours`
--

CREATE TABLE `directory_hours` (
  `id` int(11) NOT NULL,
  `directory_id` int(11) DEFAULT NULL,
  `days` varchar(100) DEFAULT NULL,
  `timing` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directory_hours`
--

INSERT INTO `directory_hours` (`id`, `directory_id`, `days`, `timing`, `created_at`, `updated_at`) VALUES
(12, 14, 'Sun', '10:00 am - 08:00 pm', '2024-05-13 04:09:42', '2024-05-13 04:09:42'),
(13, 14, 'Mon-Fri', '10:00 am - 8:00 pm', '2024-05-13 04:09:42', '2024-05-13 04:09:42'),
(16, 13, 'All Days', '11:00 am - 6:00 pm', '2024-05-13 06:47:41', '2024-05-13 06:47:41'),
(17, 15, 'Sun', '10:00 am - 2:00 pm', '2024-05-13 07:08:35', '2024-05-13 07:08:35'),
(18, 15, 'Mon-Fri', '10:00 am - 8:00 pm', '2024-05-13 07:08:35', '2024-05-13 07:08:35'),
(19, 16, 'Sun', '9:00 am - 9:00 pm', '2024-05-13 07:09:59', '2024-05-13 07:09:59'),
(20, 16, 'Mon-Fri', '9:00 am - 9:00 pm', '2024-05-13 07:09:59', '2024-05-13 07:09:59'),
(21, 17, NULL, '9:00 am 4:00 pm', '2024-05-13 07:12:15', '2024-05-13 07:12:15'),
(22, 18, 'Sun', '9:00 am - 2:00 pm', '2024-05-13 07:14:53', '2024-05-13 07:14:53'),
(23, 18, 'Mon-Fri', '9:00 am - 9:00 pm', '2024-05-13 07:14:53', '2024-05-13 07:14:53'),
(24, 19, 'Sun', '9:00 am - 8:00 pm', '2024-05-13 07:16:39', '2024-05-13 07:16:39'),
(25, 19, 'Mon-Fri', '9:00 am - 8:00 pm', '2024-05-13 07:16:39', '2024-05-13 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 For Role | 2 For Universal',
  `role` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `discount_value` varchar(100) NOT NULL,
  `discount_type` int(11) NOT NULL COMMENT '1 For Percentage | 2 For Flat',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `role`, `code`, `discount_value`, `discount_type`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 'SPECIAL30', '30', 1, '2024-04-22 02:45:06', '2024-04-22 02:45:06'),
(2, 2, NULL, 'HAPPY50', '50', 2, '2024-04-22 02:46:06', '2024-04-22 02:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`id`, `title`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Donate', 'Bezubaan Animal Welfare Foundation', 'Donate', 'Support Bezubaan Animal Welfare Foundation in providing shelter, medical care, and adoption services for stray and abandoned animals.', '2024-07-03 16:17:40', '2024-07-04 11:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `donate_forms`
--

CREATE TABLE `donate_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donate_forms`
--

INSERT INTO `donate_forms` (`id`, `name`, `age`, `phone_number`, `city`, `service`, `created_at`, `updated_at`) VALUES
(3, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:29', '2024-05-06 09:29:29'),
(4, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:33', '2024-05-06 09:29:33'),
(5, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:34', '2024-05-06 09:29:34'),
(6, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:35', '2024-05-06 09:29:35'),
(7, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:38', '2024-05-06 09:29:38'),
(8, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:39', '2024-05-06 09:29:39'),
(9, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:39', '2024-05-06 09:29:39'),
(10, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:41', '2024-05-06 09:29:41'),
(11, 'Gigsoft Pro', 23, '0507400016', 'Mohali', '1', '2024-05-06 09:29:41', '2024-05-06 09:29:41'),
(12, 'Peter Thomas', 25, '7453456815', 'Tasmania', '2', '2024-05-06 09:44:27', '2024-05-06 09:44:27'),
(13, 'Peter Thomas', 25, '7453456815', 'Tasmania', '1', '2024-05-06 09:51:13', '2024-05-06 09:51:13'),
(14, 'Peter Thomas', 23, '7453456813', 'Tasmania', '2', '2024-05-06 09:52:18', '2024-05-06 09:52:18'),
(15, 'jaskaran', 35, '7696467349', 'ropar', '3', '2024-05-07 06:54:20', '2024-05-07 06:54:20'),
(16, 'jaskaran', 35, '7696467349', 'ropar', '3', '2024-05-07 06:54:21', '2024-05-07 06:54:21'),
(17, 'Peter Thomas', 54, '7453456813', 'Tasmania', '2', '2024-05-13 04:35:39', '2024-05-13 04:35:39'),
(18, 'Peter Thomas', 32, '7453456812', 'Tasmania', '2', '2024-05-16 09:00:38', '2024-05-16 09:00:38'),
(19, 'Peter Thomas', 25, '7453456812', 'Tasmania', '1', '2024-05-30 03:54:32', '2024-05-30 03:54:32'),
(20, 'job seeker', 2, '0204449212', 'Kizingo', 'I can donate money', '2024-05-30 04:18:12', '2024-05-30 04:18:12'),
(21, 'job seeker', 32, '0204449212', 'Kizingo', 'I can donate money', '2024-05-30 04:19:53', '2024-05-30 04:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqitems`
--

CREATE TABLE `faqitems` (
  `id` int(11) NOT NULL,
  `faqid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqitems`
--

INSERT INTO `faqitems` (`id`, `faqid`, `title`, `description`, `created_at`, `updated_at`) VALUES
(4, 3, 'What kind of products do you sell?', '<p>We sell an assortment of nutritional supplements such as omega 3 and 6 supplements, calcium supplements and multivitamin and amino acid supplements, food, treats, accessories and toys for dogs and cats. We also sell grooming care items, apparel, and miscellaneous pet-related items (beds, poop bags, etc.) for dogs and cats.</p>', '2024-03-26 05:40:10', '2024-03-26 05:40:10'),
(5, 3, 'What food should I feed my Pet?', '<p>RemedioVet carries many varieties of quality foods. The best food for your pet depends on their specific health needs. Our team members are educated in understanding the nutritional value of each of the pet foods we carry so that they can assist our customers in their pet food selection.</p><p>To get the best food for your pet, let a team member know their:</p><ul><li>Age</li><li>Health concerns</li><li>Previous food brand</li><li>Special dietary needs or sensitivities</li><li>The price point you are looking to stay within</li></ul><p>From that, we can assist you in selecting a food and make more specific suggestions about feeding guidelines. Also, all of our foods come with a 45-day return policy. Should the first can/dry combination not work for your pet, you can return the unused portions (50% or more remaining) in the original packaging for a full refund.</p><p>Finally, we stress the importance of seeking a vet’s care/suggestions for any pet that has potential medical issues before making any changes to your pet’s diet.</p>', '2024-03-26 05:40:34', '2024-03-26 05:40:34'),
(6, 3, 'Can I return an unused and unopened item?', '<p>Yes! Our standard return policy is up to 30 days for unopened, unused product. However, if 30 days have gone by since your purchase and you feel there was some defect, issue with quality, or other concern, please come in and we will do everything in our power to ensure you are 100% satisfied.</p><p>To be eligible for a return, your item must be unused and in the same condition that you received it (in its original packaging).</p>', '2024-03-26 05:41:16', '2024-03-26 05:41:16'),
(11, 4, 'Why can\'t I check out if the order value is less than the minimum amount?', '<p>We believe that it is important from a sustainability perspective that you merge your purchases so that we can send larger orders fewer times to reduce our environmental footprint.<br>Thank you for your understanding!</p>', '2024-03-26 09:47:24', '2024-03-26 09:47:24'),
(12, 4, 'Has my order been placed?', '<p>We will send an order confirmation to the email address you provided as soon as your order has been registered in our system. Please note that it may take up to an hour for this email to be sent.<br>Once your order has been packaged and sent from our warehouse, you will also receive a delivery confirmation that will let you trace your parcel.</p><p>If you are unsure that your order has been placed, there are different ways to check this:</p><p>– When the order was placed, you should have arrived on a page titled “Your order”.<br>– An order confirmation has been sent to your specified email address. Make sure that this email has not ended up in your spam.<br>– You can see your order on your account. By clicking <a href=\"https://remediovet.com/my-account/\">here</a> you will be redirected to “My Page”.</p><p>– You can also use the chat feature to message us directly.</p>', '2024-03-26 09:47:44', '2024-03-26 09:47:44'),
(13, 4, 'I cannot order or find a product - What does this mean?', '<p>To keep our fast deliveries, you can only purchase products that are in stock. If you try to purchase more items than what we have in stock, the order will not go through and the system will automatically revert to the number of items in stock at the moment.</p>', '2024-03-26 09:48:03', '2024-03-26 09:48:03'),
(14, 4, 'Can I cancel my order?', '<p>If you wish to cancel your order, contact our customer service department as soon as possible. Please give us a call at 8920578443 for faster handling time.</p><p>In order to keep our fast delivery times, your order will be processed as soon as it has entered our system. Therefore, we can not guarantee that we can cancel your order.</p>', '2024-03-26 09:48:22', '2024-03-26 09:48:22'),
(15, 4, 'Can I add a product to an order?', '<p>It is not possible to add or remove items in an existing order. However, you can make another order and we will correct the shipping cost afterwards.<br>Contact our customer service and we will confirm when or if the change has been made.</p>', '2024-03-26 09:48:40', '2024-03-26 09:48:40'),
(16, 4, 'Can I order by phone or email?', '<p>In order to protect your privacy and personal information, we cannot place an order for you. We only accept orders made through our website.</p>', '2024-03-26 09:48:55', '2024-03-26 09:48:55'),
(17, 5, 'Can I change my shipping address?', '<p>If you want to change your shipping address, please contact our customer service as soon as possible. In order to keep our fast delivery times, your order is processed as soon as it has entered our system. Once your order has been processed, we cannot make any changes. We can therefore not guarantee that we will be able to make the change for you.</p>', '2024-03-26 09:49:28', '2024-03-26 09:49:28'),
(18, 5, 'What happens if my order is delayed?', '<p>We work with leading shipping suppliers to enable fast deliveries from our warehouse to your home. However, there are sometimes delays, if this happen you are more than welcome to contact our customer service for help. You can also click&nbsp;<a href=\"https://track.babyshop.com/\">here</a>&nbsp;to track your package.</p>', '2024-03-26 09:49:46', '2024-03-26 09:49:46'),
(19, 5, 'When will my order be sent?', '<p>We strive to ship all orders from our warehouse within one business day. Please see our checkout page for shipping options and delivery times.</p>', '2024-03-26 09:50:02', '2024-03-26 09:50:02'),
(20, 5, 'Where is my package?', '<p>To <a href=\"https://remediovet.com/track-order/\">track your order</a>, please add your order number and the email address used when placing your order.<br><br>Once your order has been shipped from our warehouse, we will send a delivery confirmation by email with tracking number / package ID. By clicking the tracking link in the delivery confirmation, you will be directed to the tracking page where you will be able to track your parcel.</p>', '2024-03-26 09:50:24', '2024-03-26 09:50:24'),
(21, 5, 'What if I have not received my order?', '<p>If you have not received your order within the promised time frame, please contact our customer service so we can resolve the issue for you. Please note that a missing parcel claim must be reported to us within 30 days from the day that you placed the order.</p>', '2024-03-26 09:50:39', '2024-03-26 09:50:39'),
(22, 6, 'What different forms of payment do you have?', '<p><strong>RazorPay</strong></p><p>With RazorPay we offer different payment solutions. You can read more about them directly on RazorPay’s website.</p>', '2024-03-26 09:51:20', '2024-03-26 09:51:20'),
(23, 6, 'Where is my invoice?', '<p>Your invoice is always emailed to the email address you provided at checkout. The invoice will be emailed to you once we have sent your order from our warehouse.</p>', '2024-03-26 09:51:35', '2024-03-26 09:51:35'),
(24, 6, 'I am having an issue with paying at checkout.', '<p>If you experience problems with ordering on our website, it may be because you are trying to pay with a card issuer or payment method that we currently do not support. If none of these are applicable, please check with your bank to make sure your card supports online purchases.</p><p>If you have further problems, please contact our customer service.</p>', '2024-03-26 09:51:50', '2024-03-26 09:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Placing an order', NULL, NULL, NULL, 0, '2024-03-22 09:26:35', '2024-03-26 05:34:58'),
(4, 'Shipping & delivery', NULL, NULL, NULL, 0, '2024-03-26 05:41:28', '2024-03-26 05:41:28'),
(5, 'Payment', NULL, NULL, NULL, 0, '2024-03-26 09:49:10', '2024-03-26 09:49:10'),
(6, 'Return & refunds', 'meta title', 'Meta keyword', 'meta description', 0, '2024-03-26 09:50:52', '2024-06-27 11:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `google_reviews`
--

CREATE TABLE `google_reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `review_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `google_reviews`
--

INSERT INTO `google_reviews` (`id`, `name`, `last_name`, `profile_image`, `rating`, `comment`, `review_date`, `created_at`, `updated_at`) VALUES
(9, 'Naresh', 'Kumar', NULL, 5, 'Turbovet Anti-fungal Dusting Powder for Dogs & Cat', '2024-07-07 00:00:00', '2024-07-09 04:53:17', '2024-07-09 06:37:16'),
(10, 'Komal', 'Preet', NULL, 5, 'I\'m immensely grateful to the Remedio Vet team for', '2024-07-03 00:00:00', '2024-07-09 04:54:28', '2024-07-09 06:38:07'),
(11, 'Priya', 'liza', 'uploads/review/1720500919.jpg', 5, 'Recently I bought this Yummy Chicken Flavour Multi', '2024-07-07 00:00:00', '2024-07-09 04:55:19', '2024-07-09 06:38:00'),
(12, 'MP', 'Sidhu', NULL, 5, 'All products are exceptional, and the service is', '2024-07-06 00:00:00', '2024-07-09 04:56:25', '2024-07-09 06:37:57'),
(13, 'Preet', 'Kaur', NULL, 5, '\"Exceptional service! Their expertise and care mad', '2024-07-07 00:00:00', '2024-07-09 04:57:12', '2024-07-09 06:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GuestCart`
--

CREATE TABLE `GuestCart` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `addon_main_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `GuestCart`
--

INSERT INTO `GuestCart` (`id`, `session_id`, `product_id`, `quantity`, `product_variation_id`, `addon_main_id`, `created_at`, `updated_at`) VALUES
(129, 'r2YZu3Y7vK', 63, '1', 243, NULL, '2024-06-03 03:55:58', '2024-06-03 03:55:58'),
(130, '9Vel9GQUQX', 43, '1', NULL, NULL, '2024-06-03 06:23:07', '2024-06-03 06:23:07'),
(131, 'mSqTRi2HJC', 56, '1', NULL, NULL, '2024-06-03 07:18:45', '2024-06-03 07:18:45'),
(132, 'qSlpuDGQ9i', 14, '1', NULL, NULL, '2024-06-03 07:38:46', '2024-06-03 07:38:46'),
(133, 'C08AtR3CJN', 92, '1', NULL, NULL, '2024-06-04 12:03:46', '2024-06-04 12:03:46'),
(135, 'nR7t15Jdn1', 65, '2', 251, NULL, '2024-06-04 14:36:44', '2024-06-04 14:36:44'),
(153, 'fR1v5b9PX2', 14, '13', NULL, NULL, '2024-06-05 09:51:56', '2024-06-05 10:07:29'),
(154, 'fR1v5b9PX2', 35, '1', NULL, 14, '2024-06-05 09:51:56', '2024-06-05 09:51:56'),
(155, 'fR1v5b9PX2', 33, '2', NULL, 14, '2024-06-05 09:51:56', '2024-06-05 10:07:29'),
(156, 'fR1v5b9PX2', 24, '2', NULL, 14, '2024-06-05 09:51:56', '2024-06-05 10:07:29'),
(157, 'fR1v5b9PX2', 15, '1', NULL, 14, '2024-06-05 09:51:56', '2024-06-05 09:51:56'),
(158, 'vqouRo88O3', 62, '1', NULL, NULL, '2024-06-05 11:45:29', '2024-06-05 11:45:29'),
(159, 'xOExOplJAb', 63, '1', 246, NULL, '2024-06-05 16:05:15', '2024-06-05 16:05:15'),
(160, 'iYVOFJXWyp', 15, '1', NULL, NULL, '2024-06-14 04:56:11', '2024-06-14 04:56:11'),
(163, 'iYVOFJXWyp', 60, '3', NULL, NULL, '2024-06-14 04:59:52', '2024-06-14 05:02:08'),
(164, '03TlrR6WjV', 14, '1', NULL, NULL, '2024-06-17 09:02:02', '2024-06-17 09:02:02'),
(167, '03TlrR6WjV', 56, '1', NULL, NULL, '2024-06-17 09:08:01', '2024-06-17 09:08:01'),
(168, '03TlrR6WjV', 21, '1', NULL, NULL, '2024-06-17 09:08:16', '2024-06-17 09:08:16'),
(171, 'TmhFptVJmF', 69, '1', NULL, NULL, '2024-06-18 10:19:20', '2024-06-18 10:19:33'),
(173, '1pfgPOLZXV', 62, '5', NULL, NULL, '2024-06-18 10:48:19', '2024-06-18 10:48:39'),
(174, '1pfgPOLZXV', 64, '5', NULL, NULL, '2024-06-18 10:49:54', '2024-06-18 10:50:18'),
(175, 'BkrXfCHUso', 56, '5', NULL, NULL, '2024-06-18 10:50:56', '2024-06-18 10:51:09'),
(176, 'BkrXfCHUso', 62, '2', NULL, NULL, '2024-06-18 10:52:44', '2024-06-18 10:52:44'),
(182, 'PtKKx8N8o8', 62, '5', 241, NULL, '2024-06-18 11:13:36', '2024-06-18 11:37:23'),
(184, 'DlXAcqMtDs', 62, '2', 240, NULL, '2024-06-18 11:39:54', '2024-06-18 11:39:54'),
(185, 'm1v0yRl8gD', 62, '2', 241, NULL, '2024-06-18 11:44:50', '2024-06-18 11:44:50'),
(186, 'm1v0yRl8gD', 64, '1', NULL, NULL, '2024-06-18 11:45:03', '2024-06-18 11:45:03'),
(187, 'PtKKx8N8o8', 62, '1', 239, NULL, '2024-06-18 11:50:38', '2024-06-18 11:50:38'),
(189, 'MBw5WlB1ru', 14, '1190', NULL, NULL, '2024-06-18 12:32:38', '2024-06-18 12:33:59'),
(190, 'CJD3ypprmo', 62, '1', 240, NULL, '2024-06-18 12:33:51', '2024-06-18 12:33:51'),
(191, 't0iLuHlGc1', 62, '1', 240, NULL, '2024-06-18 12:35:38', '2024-06-18 12:35:38'),
(194, 'qlMzsirHns', 14, '6', NULL, NULL, '2024-06-19 04:33:41', '2024-06-19 04:43:51'),
(195, '8OMHxM7vHD', 62, '1', 241, NULL, '2024-06-19 04:42:55', '2024-06-19 04:42:55'),
(196, 'qlMzsirHns', 46, '98', 226, NULL, '2024-06-19 04:44:13', '2024-06-19 04:44:29'),
(197, 'kc5vtcdmDg', 62, '1', 240, NULL, '2024-06-19 04:45:29', '2024-06-19 04:45:29'),
(200, 'faFCllYucK', 62, '100', 239, NULL, '2024-06-20 05:34:15', '2024-06-20 05:34:15'),
(207, 'ucBVQSLUnE', 63, '2', 243, NULL, '2024-06-20 07:54:32', '2024-06-20 07:56:03'),
(208, 'ucBVQSLUnE', 56, '1', NULL, NULL, '2024-06-20 07:54:41', '2024-06-20 07:54:41'),
(213, 'iPf0Jer639', 21, '2', 296, NULL, '2024-06-20 10:07:24', '2024-06-20 10:07:24'),
(217, 'TTDIZF5DWI', 15, '1', NULL, NULL, '2024-07-01 05:33:25', '2024-07-01 05:33:25'),
(219, 'aGSjE5oorJ', 46, '1', 226, NULL, '2024-07-01 07:21:28', '2024-07-01 07:21:28'),
(221, '672DvXGcAo', 64, '1', 247, NULL, '2024-07-01 11:08:52', '2024-07-01 11:08:52'),
(222, '672DvXGcAo', 46, '2', 226, NULL, '2024-07-01 11:12:17', '2024-07-01 11:12:17'),
(223, 'QwjcfXmqph', 46, '1', 226, NULL, '2024-07-02 04:09:32', '2024-07-02 09:10:29'),
(224, 'QwjcfXmqph', 62, '2', 239, NULL, '2024-07-02 04:23:20', '2024-07-02 09:38:10'),
(225, 'QwjcfXmqph', 14, '1', NULL, NULL, '2024-07-02 04:37:19', '2024-07-02 09:10:34'),
(226, 'OCbOadnPZV', 46, '1', 226, NULL, '2024-07-03 03:38:52', '2024-07-03 03:38:52'),
(227, 'TKHxRRsfex', 46, '1', 226, NULL, '2024-07-03 03:57:21', '2024-07-03 04:08:35'),
(228, 'a7xDn10R3c', 46, '1', 226, NULL, '2024-07-03 04:36:25', '2024-07-03 04:36:25'),
(229, 'n0RHLuNZm2', 62, '1', 239, NULL, '2024-07-03 04:38:05', '2024-07-03 04:38:05'),
(231, 'FtIYHunogD', 46, '4', 226, NULL, '2024-07-03 07:25:36', '2024-07-03 07:57:11'),
(232, 'FtIYHunogD', 62, '2', 239, NULL, '2024-07-03 07:27:25', '2024-07-03 07:57:15'),
(233, 'UCn0sr7ywo', 62, '1', 239, NULL, '2024-07-04 03:32:20', '2024-07-04 03:32:20'),
(235, 'oTxR5j2nwL', 62, '1', 239, NULL, '2024-07-04 03:49:03', '2024-07-04 03:49:03'),
(237, 'N3DFa9dODM', 34, '1', NULL, NULL, '2024-07-05 12:18:00', '2024-07-05 12:18:00'),
(238, 'QjJlK4gKdP', 14, '1', NULL, NULL, '2024-07-10 03:35:27', '2024-07-10 03:35:27'),
(239, 'NObkwEEk9e', 46, '1', 226, NULL, '2024-07-10 03:50:12', '2024-07-10 03:50:12'),
(240, 'TiZeAiesc3', 14, '1', NULL, NULL, '2024-07-11 05:09:13', '2024-07-11 05:10:34'),
(242, 'sngk8I3z3R', 14, '1', NULL, NULL, '2024-07-15 03:44:23', '2024-07-15 03:44:23'),
(245, 'xsAWlO8kar', 14, '1', NULL, NULL, '2024-07-22 03:41:45', '2024-07-22 03:41:45'),
(246, 'xsAWlO8kar', 46, '1', 226, NULL, '2024-07-22 03:51:40', '2024-07-22 03:51:40'),
(248, 'tAdyE5O17u', 14, '1', NULL, NULL, '2024-07-23 10:21:29', '2024-07-23 12:53:19'),
(253, 'x6Qtc0DN3T', 14, '1', NULL, NULL, '2024-07-24 04:26:31', '2024-07-24 04:26:31'),
(254, 'TWmUBMnuGY', 14, '1', NULL, NULL, '2024-07-25 05:34:27', '2024-07-25 05:34:27'),
(257, 'zimjrOl1Ce', 64, '1', 247, NULL, '2024-07-29 03:49:18', '2024-07-29 03:49:18'),
(258, 'DhXC1tdgUs', 56, '1', NULL, NULL, '2024-07-29 03:55:11', '2024-07-29 03:55:11'),
(259, '7DBwIziTCU', 14, '2', NULL, NULL, '2024-07-29 11:45:35', '2024-07-29 13:50:38'),
(260, '7DBwIziTCU', 21, '1', NULL, NULL, '2024-07-29 13:51:33', '2024-07-29 13:51:33'),
(261, 'AUUgHDX17J', 55, '1', NULL, NULL, '2024-07-29 17:39:16', '2024-07-29 17:39:16'),
(262, 'RFnGJj0wly', 14, '2', NULL, NULL, '2024-07-30 03:20:58', '2024-07-30 04:27:42'),
(263, 'pkTRFi5nrm', 14, '2', NULL, NULL, '2024-07-30 05:09:35', '2024-07-30 07:56:08'),
(264, 'pkTRFi5nrm', 15, '1', NULL, NULL, '2024-07-30 07:57:48', '2024-07-30 07:57:48'),
(265, 'tfECK86D7N', 62, '1', 239, NULL, '2026-03-11 05:49:16', '2026-03-11 05:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `guest_cart_coupon`
--

CREATE TABLE `guest_cart_coupon` (
  `id` int(11) NOT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `coupon` varchar(100) DEFAULT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `coupon_value` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest_cart_coupon`
--

INSERT INTO `guest_cart_coupon` (`id`, `session_id`, `coupon`, `coupon_type`, `coupon_value`, `created_at`, `updated_at`) VALUES
(41, 'mSqTRi2HJC', 'SPECIAL30', '1', '30', '2024-06-03 07:19:14', '2024-06-03 07:19:14'),
(42, 'C08AtR3CJN', 'SPECIAL30', '1', '30', '2024-06-04 12:04:11', '2024-06-04 12:04:11'),
(43, 'DlXAcqMtDs', 'SPECIAL30', '1', '30', '2024-06-18 11:40:23', '2024-06-18 11:40:23'),
(48, '0cOq8iVEk1', 'SPECIAL30', '1', '30', '2024-07-01 04:23:52', '2024-07-01 04:23:52'),
(53, 'QwjcfXmqph', 'SPECIAL30', '1', '30', '2024-07-02 09:33:42', '2024-07-02 09:33:42'),
(56, 'UCn0sr7ywo', 'SPECIAL30', '1', '30', '2024-07-04 03:32:40', '2024-07-04 03:32:40'),
(63, 'oTxR5j2nwL', 'SPECIAL30', '1', '30', '2024-07-04 04:11:01', '2024-07-04 04:11:01'),
(65, 'N3DFa9dODM', 'SPECIAL30', '1', '30', '2024-07-05 12:18:13', '2024-07-05 12:18:13'),
(66, 'NObkwEEk9e', 'SPECIAL30', '1', '30', '2024-07-10 03:50:24', '2024-07-10 03:50:24'),
(67, 'TiZeAiesc3', 'SPECIAL30', '1', '30', '2024-07-11 05:10:52', '2024-07-11 05:10:52'),
(69, 'xsAWlO8kar', 'SPECIAL30', '1', '30', '2024-07-22 03:58:41', '2024-07-22 03:58:41'),
(81, 'tAdyE5O17u', 'SPECIAL30', '1', '30', '2024-07-23 12:38:42', '2024-07-23 12:38:42'),
(85, 'TWmUBMnuGY', 'SPECIAL30', '1', '30', '2024-07-25 06:11:08', '2024-07-25 06:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Best Online Pet Store in India | Remediovet', 'Online Pet Store in India', 'Buy pet products online for dogs and cats. Explore a wide range of pet food, accessories, medications, treats, clothing, and toys available for your beloved companions.', '2024-07-04 09:16:43', '2024-07-04 11:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_07_082627_add_details_to_users_table', 1),
(6, '2022_07_14_071255_create_categories_table', 1),
(7, '2022_07_17_103339_create_brands_table', 1),
(8, '2022_07_18_085552_create_products_table', 1),
(9, '2022_07_18_091107_create_product_images_table', 1),
(10, '2022_07_20_044016_create_colors_table', 1),
(11, '2022_07_21_085407_create_product_colors_table', 1),
(12, '2022_07_26_060455_create_sliders_table', 1),
(13, '2022_08_15_082952_add_category_id_to_brands_table', 1),
(14, '2022_09_01_062919_create_wishlists_table', 1),
(15, '2022_09_02_181849_create_carts_table', 1),
(16, '2022_09_15_155913_create_orders_table', 1),
(17, '2022_09_15_160012_create_order_items_table', 1),
(18, '2023_04_10_205133_create_user_details_table', 2),
(19, '2024_02_20_075528_add_is_paid_to_categories', 3),
(20, '2024_02_22_044504_create_sizes_table', 4),
(21, '2024_02_22_052027_create_product_variations_table', 5),
(22, '2024_03_14_063941_create_attributes_table', 6),
(23, '2024_03_14_064320_create_attributes_values_table', 7),
(24, '2024_03_14_070228_create_variations_table', 8),
(25, '2024_03_14_070243_create_variation_values_table', 8),
(26, '2024_03_14_063941_create_product_attributes_table', 9),
(27, '2024_03_14_064320_create_product_attribute_values_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `apartment` mediumtext DEFAULT NULL,
  `is_shipping_address_same` int(11) DEFAULT NULL COMMENT '0 For Not | 1 For Yes',
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_apartment` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL COMMENT '0 For Unpaid | 1 For paid',
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_type` varchar(255) DEFAULT NULL,
  `coupon_value` varchar(255) DEFAULT NULL,
  `sub_total_amount` varchar(255) DEFAULT NULL,
  `shipping_amount` varchar(255) DEFAULT NULL,
  `total_discount` varchar(255) DEFAULT NULL,
  `tax_amount` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tracking_no`, `fullname`, `email`, `phone`, `state`, `city`, `apartment`, `is_shipping_address_same`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_state`, `shipping_city`, `shipping_apartment`, `status_message`, `payment_mode`, `payment_id`, `payment_status`, `coupon_code`, `coupon_type`, `coupon_value`, `sub_total_amount`, `shipping_amount`, `total_discount`, `tax_amount`, `total_amount`, `shipping_method`, `shipping_status`, `created_at`, `updated_at`) VALUES
(26, 1, 'ecom-bYzrJsEl4a', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_1708915755', '1', NULL, NULL, NULL, '40193', NULL, '0', '219.9', '40412.9', NULL, NULL, '2024-05-02 10:56:45', '2024-05-02 10:56:45'),
(27, 2, 'ecom-fIusTsGozM', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_6988620943', '1', NULL, NULL, NULL, '8047', NULL, '0', '319.88', '8366.88', NULL, NULL, '2024-05-03 16:32:34', '2024-05-03 16:32:34'),
(28, 2, 'ecom-2i6Mt1yL64', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_9111296188', '1', NULL, NULL, NULL, '499', NULL, '0', '0', '499', NULL, NULL, '2024-05-03 16:36:44', '2024-05-03 16:36:44'),
(29, 2, 'ecom-LbjiFfnZm8', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_7905679466', '1', NULL, NULL, NULL, '1660', NULL, '0', '0', '1660', NULL, NULL, '2024-05-03 16:38:54', '2024-05-03 16:38:54'),
(30, 3, 'ecom-qsbli4aKDp', 'mat', 'mat@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 1, 'mat', 'mat@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 'pending', 'cashFree', 'order_5711575736', '1', 'SPECIAL30', '1', '30', '849', NULL, '254.7', '0', '594.3', NULL, NULL, '2024-05-06 09:08:01', '2024-05-06 09:08:01'),
(31, 2, 'ecom-etxPxpwd35', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_4991548596', '1', NULL, NULL, NULL, '1228', '10', '0', '0', '1228', NULL, NULL, '2024-05-06 17:39:02', '2024-05-06 17:39:02'),
(32, 2, 'ecom-lX0q40i1Py', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_7186728895', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-06 17:42:12', '2024-05-06 17:42:12'),
(33, 9, 'ecom-UiEjixPF86', 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_8017668933', '1', NULL, NULL, NULL, '499', '10', '0', '0', '509', NULL, NULL, '2024-05-07 13:08:11', '2024-05-07 13:08:11'),
(34, 9, 'ecom-3BWbgnNLJr', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '3b2 Market', 'pending', 'cashFree', 'order_6545678548', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-07 13:28:49', '2024-05-07 13:28:49'),
(35, 1, 'ecom-oviSp1Xqti', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_6030596259', '1', NULL, NULL, NULL, '135', '10', '0', '0', '145', NULL, NULL, '2024-05-08 10:06:13', '2024-05-08 10:06:13'),
(36, 1, 'ecom-OrEzQkDZcc', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 0, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', NULL, 'pending', 'cashFree', 'order_9656297485', '1', NULL, NULL, NULL, '135', '10', '0', '0', '145', NULL, NULL, '2024-05-08 10:27:16', '2024-05-08 10:27:16'),
(38, 2, 'ecom-xD62TJRw7v', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_3147250668', '1', NULL, NULL, NULL, '6798', '10', '0', '0', '6808', NULL, NULL, '2024-05-09 06:39:28', '2024-05-09 06:39:28'),
(39, 2, 'ecom-EyZqup4K6w', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_5276224688', '1', NULL, NULL, NULL, '3399', '10', '0', '0', '3409', NULL, NULL, '2024-05-10 07:38:03', '2024-05-09 07:38:03'),
(40, 2, 'ecom-Y0QRdWb1gx', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cod', '', '0', NULL, NULL, NULL, '758', '10', NULL, '0', '768', NULL, NULL, '2024-05-13 08:17:17', '2024-05-13 08:17:17'),
(41, 6, 'ecom-DGSbajDPHI', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cod', '', '0', NULL, NULL, NULL, '758', '10', NULL, '0', '768', NULL, NULL, '2024-05-14 08:19:20', '2024-05-14 08:19:20'),
(42, 11, 'ecom-4sb2yNo7fn', 'Peter', 'guru4543@yopmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'guru4543@yopmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cod', '', '0', NULL, NULL, NULL, '758', '10', NULL, '0', '768', NULL, NULL, '2024-05-14 08:28:27', '2024-05-14 08:28:27'),
(43, 6, 'ecom-UaU0cQ41CX', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cod', '', '0', NULL, NULL, NULL, '1137', '10', NULL, '0', '1147', NULL, NULL, '2024-05-14 09:06:38', '2024-05-14 09:06:38'),
(44, 6, 'ecom-HgOeJnNomk', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_5396627983', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-14 09:30:50', '2024-05-14 09:30:50'),
(45, 6, 'ecom-pcgbNqI4v5', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_5396627983', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-14 09:31:54', '2024-05-14 09:31:54'),
(46, 6, 'ecom-8zYMEHCwJg', 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_4901482715', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-14 09:35:04', '2024-05-14 09:35:04'),
(47, 12, 'ecom-yGqOMByBKY', 'Peter', 'jacks4543@yopmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'jacks4543@yopmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_7219723676', '1', NULL, NULL, NULL, '1516', '10', '0', '0', '1526', NULL, NULL, '2024-05-14 09:41:00', '2024-05-14 09:41:00'),
(52, 6, 'ecom-qWFxmA8G0e', 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cod', '', '0', 'SPECIAL30', '1', '30', '379', '10', NULL, '0', '275.3', NULL, NULL, '2024-05-14 13:31:59', '2024-05-14 13:31:59'),
(53, 6, 'ecom-oonwbv89Gf', 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', '', '0', 'SPECIAL30', '1', '30', '379', '10', NULL, '0', '275.3', NULL, NULL, '2024-05-14 14:03:03', '2024-05-14 14:03:03'),
(54, 6, 'ecom-Ozn3PiAHOf', 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456814', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_6842000485', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-14 14:04:09', '2024-05-14 14:04:09'),
(55, 6, 'ecom-FPkJBOZJ7k', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_5056464859', '1', 'HAPPY50', '2', '50', '1137', '10', '50', '0', '1097', NULL, NULL, '2024-05-14 14:07:36', '2024-05-14 14:07:36'),
(56, 2, 'ecom-3o3FzHYmgl', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cod', '', '0', NULL, NULL, NULL, '2396', '10', NULL, '0', '2406', NULL, NULL, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(57, 2, 'ecom-j6ilwh0GNs', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cod', '', '0', NULL, NULL, NULL, '2396', '10', NULL, '0', '2406', NULL, NULL, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(58, 6, 'ecom-navjAJA05J', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'out-for-delivery', 'cashFree', 'order_2261199346', '1', 'SPECIAL30', '1', '30', '2047', '10', '614.1', '0', '1442.9', NULL, NULL, '2024-05-16 08:35:59', '2024-05-16 08:38:56'),
(59, 6, 'ecom-ASc10Q2JXf', 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_6719478951', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-05-22 09:49:37', '2024-05-22 09:49:37'),
(60, 6, 'ecom-TiKNvCsI7l', 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456813', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_3992535068', '1', NULL, NULL, NULL, '2077', '10', '0', '0', '2087', NULL, NULL, '2024-05-22 10:18:57', '2024-05-22 10:18:57'),
(61, 2, 'ecom-7RAUYRAj25', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_7094783282', '1', NULL, NULL, NULL, '441', '10', '0', '0', '451', NULL, NULL, '2024-05-24 09:08:08', '2024-05-24 09:08:08'),
(62, 15, 'ecom-WSHg84nZHG', 'Rahul', 'gigsoftpro@gmail.com', '9988224462', 'Punjab', 'mohali', '668 sector 8', 1, 'Rahul', 'gigsoftpro@gmail.com', '9988224462', 'Punjab', 'mohali', '668 sector 8', 'pending', 'cashFree', 'order_2500520582', '1', 'SPECIAL30', '1', '30', '2139', '10', '641.7', '0', '1507.3', NULL, NULL, '2024-05-28 16:34:39', '2024-05-28 16:34:39'),
(63, 2, 'ecom-aHg7H8B63c', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_2009854437', '1', NULL, NULL, NULL, '11724', '10', '0', '0', '11734', NULL, NULL, '2024-05-28 16:47:19', '2024-05-28 16:47:19'),
(64, 2, 'ecom-g1MLqpcTZI', 'Peter4', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'job seeker', 'amana@yopmail.com', '0204449212', 'Chhattisgarh', 'Kizingo', 'David Kayanda Road', 'pending', 'cashFree', 'order_5772311099', '1', 'HAPPY50', '2', '50', '13098', '10', '50', '0', '13058', NULL, NULL, '2024-05-28 18:42:33', '2024-05-28 18:42:33'),
(65, 17, 'ecom-8qI2MhHJXT', 'Amit', 'amit@yopmail.com', '8529856858', 'Punjab', 'Mohali', '3b2 Market', 1, 'Amit', 'amit@yopmail.com', '8529856858', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_4487554261', '1', 'SPECIAL30', '1', '30', '11597', '10', '3479.1', '0', '8127.9', NULL, NULL, '2024-05-29 07:41:12', '2024-05-29 07:41:12'),
(66, 2, 'ecom-5xRF39hMs0', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_7829993740', '1', 'SPECIAL30', '1', '30', '379', '10', '113.7', '0', '275.3', NULL, NULL, '2024-05-29 09:32:07', '2024-05-29 09:32:07'),
(67, 2, 'ecom-vUr7lpOJpF', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_5355708078', '1', 'SPECIAL30', '1', '30', '2699', '10', '809.7', '0', '1899.3', NULL, NULL, '2024-05-29 09:40:08', '2024-05-29 09:40:08'),
(68, 2, 'ecom-2BvsbuatCI', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 0, 'Peter Thomas', 'mat345@yopmail.com', '7453456810', 'Punjab', 'Mohali', '3b2 Market', 'pending', 'cashFree', 'order_9596979753', '1', NULL, NULL, NULL, '849', '10', '0', '0', '859', NULL, NULL, '2024-05-29 11:39:35', '2024-05-29 11:39:35'),
(69, 18, 'ecom-hmmWugV0aQ', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 0, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'ttt', 'pending', 'cashFree', 'order_8406315468', '1', 'HAPPY50', '2', '50', '14795', '10', '50', '0', '14755', NULL, NULL, '2024-05-30 08:21:47', '2024-05-30 08:21:47'),
(70, 18, 'ecom-ay656CVugo', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 0, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'jhgui', 'pending', 'cashFree', 'order_5350183118', '1', 'SPECIAL30', '1', '30', '6199', '10', '1859.7', '0', '4349.3', NULL, NULL, '2024-05-30 08:26:20', '2024-05-30 08:26:20'),
(71, 18, 'ecom-DtQTs7EE5o', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 0, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'dfsd', 'completed', 'cashFree', 'order_8160702315', '1', 'SPECIAL30', '1', '30', '16176', '10', '4852.8', '0', '11333.2', NULL, NULL, '2024-05-30 08:30:20', '2024-05-30 08:31:36'),
(72, 18, 'ecom-I6W1cn3nzx', 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_8894391637', '1', NULL, NULL, NULL, '7456', '10', '0', '0', '7466', NULL, NULL, '2024-05-30 11:01:49', '2024-05-30 11:01:49'),
(73, 2, 'ecom-FOAj68GuGW', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_5558196570', '1', 'SPECIAL30', '1', '30', '499', '10', '149.7', '0', '359.3', NULL, NULL, '2024-05-30 11:27:12', '2024-05-30 11:27:12'),
(74, 2, 'ecom-AT2lRoDMDT', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_6610103578', '1', 'HAPPY50', '2', '50', '499', '10', '50', '0', '459', NULL, NULL, '2024-05-30 11:38:43', '2024-05-30 11:38:43'),
(75, 2, 'ecom-8bZxHIgFy9', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', 'California', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'pending', 'cashFree', 'order_5179723806', '1', 'SPECIAL30', '1', '30', '499', '10', '149.7', '0', '359.3', NULL, NULL, '2024-05-30 11:59:40', '2024-05-30 11:59:40'),
(76, 6, 'ecom-sVtLL1iFih', 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 1, 'Peter', 'rinkusharma4543@gmail.com', '7453456812', 'Tasmania', 'Tasmania', '19 Hodgson St Clifton Beach Tasmania', 'in progress', 'cashFree', 'order_1804231059', '1', 'SPECIAL30', '1', '30', '3170', '10', '951', '0', '2229', NULL, NULL, '2024-05-31 10:03:16', '2024-05-31 10:04:27'),
(77, 18, 'ecom-lH7tw6gl92', 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_6334397058', '1', 'SPECIAL30', '1', '30', '2699', '10', '809.7', '0', '1899.3', NULL, NULL, '2024-06-03 10:22:35', '2024-06-03 10:22:35'),
(78, 22, 'ecom-7O9VgGpOUR', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_6470716827', '1', NULL, NULL, NULL, '5398', '10', '0', '0', '5408', NULL, NULL, '2024-06-19 09:05:38', '2024-06-19 09:05:38'),
(79, 22, 'ecom-R9Qm8QxS77', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_6470716827', '1', NULL, NULL, NULL, '5398', '10', '0', '0', '5408', NULL, NULL, '2024-06-19 09:06:57', '2024-06-19 09:06:57'),
(80, 1, 'ecom-bUjhMx5WaI', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_7119736577', '1', 'HAPPY50', '2', '50', '166359', '10', '50', '0', '166319', NULL, NULL, '2024-07-01 11:31:44', '2024-07-01 11:31:44'),
(81, 1, 'ecom-i1XRmM44Qr', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_2561960837', '1', NULL, NULL, NULL, '379', '10', '0', '0', '389', NULL, NULL, '2024-07-01 12:48:56', '2024-07-01 12:48:56'),
(82, 1, 'ecom-XWtqF0vPL7', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_2455197864', '1', NULL, NULL, NULL, '4150', '10', '0', '0', '4160', NULL, NULL, '2024-07-01 12:51:54', '2024-07-01 12:51:54'),
(83, 1, 'ecom-z0F4UmVSkO', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_5855325583', '1', NULL, NULL, NULL, '415', '10', '0', '0', '425', NULL, NULL, '2024-07-01 13:17:12', '2024-07-01 13:17:12'),
(84, 22, 'ecom-jZqOO6JPh3', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_2335686037', '1', NULL, NULL, NULL, '1170', '10', '0', '0', '1180', NULL, NULL, '2024-07-01 13:18:24', '2024-07-01 13:18:24'),
(85, 1, 'ecom-cEFSq67d7k', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_3165784799', '1', NULL, NULL, NULL, '4150', '10', '0', '0', '4160', NULL, NULL, '2024-07-01 14:13:35', '2024-07-01 14:13:35'),
(86, 1, 'ecom-BWMHFqn8q3', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_8689016550', '1', 'SPECIAL30', '1', '30', '207', '10', '62.1', '0', '154.9', NULL, NULL, '2024-07-03 08:58:32', '2024-07-03 08:58:32'),
(87, 1, 'ecom-68YbYOF86x', 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'ashok@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_4761433987', '1', 'SPECIAL30', '1', '30', '384.62', '10', '115.39', '150', '429.23', NULL, NULL, '2024-07-03 11:19:39', '2024-07-03 11:19:39'),
(88, 18, 'ecom-p3deKpOvCZ', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_5709546970', '1', 'SPECIAL30', '1', '30', '1868.78', '10', '560.63', '91.16', '1409.31', NULL, NULL, '2024-07-04 08:27:04', '2024-07-04 08:27:04'),
(89, 1, 'ecom-0CNW1ESnIb', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'pending', 'cashFree', 'order_7867337473', '1', 'SPECIAL30', '1', '30', '1382.65', '10', '414.8', '72.36', '1050.21', NULL, NULL, '2024-07-04 09:10:46', '2024-07-04 09:10:46'),
(90, 18, 'ecom-HaYheqHVOf', 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 1, 'Gigsoft', 'ravindergigsoftpro9@gmail.com', '0507400016', 'Punjab', 'Mohali', 'E253, Industrial Area', 'completed', 'cashFree', 'order_7329336657', '1', 'SPECIAL30', '1', '30', '344.55', '10', '103.37', '24.12', '275.3', NULL, NULL, '2024-07-15 07:43:41', '2024-07-15 07:45:18'),
(91, 26, 'ecom-jaM5ZAoW15', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_9770547235', '1', NULL, NULL, NULL, '539', '10', '0', '0', '549', NULL, NULL, '2024-07-19 10:23:28', '2024-07-19 10:23:28'),
(92, 26, 'ecom-4XkezLB98t', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_4030535919', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:06:50', '2024-07-19 13:06:50'),
(93, 1, 'ecom-gbZCTEC4RU', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', NULL, '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:27:36', '2024-07-19 13:27:36'),
(94, 1, 'ecom-og8W4RGkW4', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', NULL, '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:30:16', '2024-07-19 13:30:16'),
(95, 1, 'ecom-vBGkX61SG2', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', NULL, '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:31:39', '2024-07-19 13:31:39'),
(96, 1, 'ecom-zmGToeApbv', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_9666211641', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:46:28', '2024-07-19 13:46:28'),
(97, 1, 'ecom-TmW9JClYV8', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_2712447039', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:48:20', '2024-07-19 13:48:20'),
(98, 1, 'ecom-Y6piYNJKcf', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_8737453229', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 13:52:18', '2024-07-19 13:52:18'),
(99, 1, 'ecom-2RS0kMM3Xl', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'cancel', 'cashFree', 'order_2428839085', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 14:32:58', '2024-07-19 14:32:58'),
(100, 1, 'ecom-zUjz4PLZJR', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'cancel', 'cashFree', 'order_1640820553', '1', NULL, NULL, NULL, '689.1', '10', '0', '68.91', '768.01', NULL, NULL, '2024-07-19 14:52:44', '2024-07-19 14:52:44'),
(101, 1, 'ecom-nFilQgbe9O', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'cancel', 'cashFree', 'order_4424719667', '1', NULL, NULL, NULL, '689.1', '10', '0', '68.91', '768.01', NULL, NULL, '2024-07-19 14:55:26', '2024-07-19 14:55:26'),
(102, 1, 'ecom-WTkJrajEqb', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_8217536312', '1', NULL, NULL, NULL, '689.1', '10', '0', '68.91', '768.01', NULL, NULL, '2024-07-19 15:00:03', '2024-07-19 15:00:03'),
(103, 1, 'ecom-DiZClrMo7s', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'cancel', 'cashFree', 'order_6532530151', '1', NULL, NULL, NULL, '344.55', '10', '0', '34.46', '389.01', NULL, NULL, '2024-07-19 15:01:27', '2024-07-19 15:01:27'),
(104, 1, 'ecom-yOm2hHk8o2', 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 1, 'Ashok', 'checkout@yopmail.com', '9856421305', 'Punjab', 'Chandigarh', '100', 'pending', 'cashFree', 'order_7408505969', '1', NULL, NULL, NULL, '1193.55', '10', '0', '34.46', '1238.01', NULL, NULL, '2024-07-19 15:02:25', '2024-07-19 15:02:25'),
(105, 1, 'ecom-CqWpDKDKn8', 'Ashish', 'admin@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 1, 'Ashish', 'admin@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 'cancel', 'cashFree', 'order_3499599316', '1', NULL, NULL, NULL, '362.73', '10', '20', '34.27', '407', NULL, NULL, '2024-07-30 09:11:07', '2024-07-30 09:11:07'),
(106, 27, 'ecom-Ha96RglGRc', 'ashish', 'unifi@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 1, 'ashish', 'unifi@yopmail.com', '9898998983', 'Mohali', 'Mohali', 'phase 5', 'cancel', 'cashFree', 'order_2534635953', '1', NULL, NULL, NULL, '362.73', '10', '20', '34.27', '407', NULL, NULL, '2024-07-30 09:11:45', '2024-07-30 09:11:45'),
(107, 28, 'ecom-aVAIIT53Zv', 'Ashish', 'ashish@yopmail.com', '1234567890', 'UTTAR PRADESH', 'Varanasi', 'phase 5', 1, 'Ashish', 'ashish@yopmail.com', '1234567890', 'UTTAR PRADESH', 'Varanasi', 'phase 5', 'cancel', 'cashFree', 'order_5513857414', '1', NULL, NULL, NULL, '362.73', '10', '20', '34.27', '407', NULL, NULL, '2024-07-30 11:26:20', '2024-07-30 11:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_color_id`, `product_variation_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(24, 26, 22, NULL, NULL, 4, 8399, '2024-05-02 10:56:45', '2024-05-02 10:56:45'),
(28, 27, 16, NULL, NULL, 1, 849, '2024-05-03 16:32:34', '2024-05-03 16:32:34'),
(29, 28, 65, NULL, NULL, 1, 499, '2024-05-03 16:36:44', '2024-05-03 16:36:44'),
(30, 29, 46, NULL, NULL, 4, 415, '2024-05-03 16:38:54', '2024-05-03 16:38:54'),
(31, 30, 20, NULL, NULL, 1, 849, '2024-05-06 09:08:01', '2024-05-06 09:08:01'),
(32, 31, 14, NULL, NULL, 1, 379, '2024-05-06 17:39:03', '2024-05-06 17:39:03'),
(33, 31, 16, NULL, NULL, 1, 849, '2024-05-06 17:39:04', '2024-05-06 17:39:04'),
(34, 32, 14, NULL, NULL, 1, 379, '2024-05-06 17:42:13', '2024-05-06 17:42:13'),
(35, 33, 63, NULL, NULL, 1, 499, '2024-05-07 13:08:11', '2024-05-07 13:08:11'),
(36, 34, 14, NULL, NULL, 1, 379, '2024-05-07 13:28:49', '2024-05-07 13:28:49'),
(37, 35, 78, NULL, NULL, 1, 135, '2024-05-08 10:06:13', '2024-05-08 10:06:13'),
(38, 36, 78, NULL, NULL, 1, 135, '2024-05-08 10:27:16', '2024-05-08 10:27:16'),
(40, 38, 78, NULL, 7, 2, 3399, '2024-05-09 06:39:28', '2024-05-09 06:39:28'),
(41, 39, 78, NULL, 7, 1, 3399, '2024-05-09 07:38:03', '2024-05-09 07:38:03'),
(42, 40, 14, NULL, NULL, 2, 379, '2024-05-13 08:17:17', '2024-05-13 08:17:17'),
(43, 41, 14, NULL, NULL, 2, 379, '2024-05-14 08:19:20', '2024-05-14 08:19:20'),
(44, 42, 14, NULL, NULL, 2, 379, '2024-05-14 08:28:27', '2024-05-14 08:28:27'),
(45, 43, 14, NULL, NULL, 3, 379, '2024-05-14 09:06:38', '2024-05-14 09:06:38'),
(46, 45, 14, NULL, NULL, 1, 379, '2024-05-14 09:31:54', '2024-05-14 09:31:54'),
(47, 46, 14, NULL, NULL, 1, 379, '2024-05-14 09:35:04', '2024-05-14 09:35:04'),
(48, 47, 14, NULL, NULL, 4, 379, '2024-05-14 09:41:00', '2024-05-14 09:41:00'),
(49, 48, 62, NULL, NULL, 2, 499, '2024-05-14 10:11:24', '2024-05-14 10:11:24'),
(50, 49, 14, NULL, NULL, 1, 379, '2024-05-14 13:21:16', '2024-05-14 13:21:16'),
(51, 50, 14, NULL, NULL, 1, 379, '2024-05-14 13:28:10', '2024-05-14 13:28:10'),
(52, 52, 14, NULL, NULL, 1, 379, '2024-05-14 13:31:59', '2024-05-14 13:31:59'),
(53, 53, 14, NULL, NULL, 1, 379, '2024-05-14 14:03:03', '2024-05-14 14:03:03'),
(54, 54, 14, NULL, NULL, 1, 379, '2024-05-14 14:04:09', '2024-05-14 14:04:09'),
(55, 55, 14, NULL, NULL, 3, 379, '2024-05-14 14:07:36', '2024-05-14 14:07:36'),
(56, 57, 15, NULL, NULL, 2, 349, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(57, 56, 15, NULL, NULL, 2, 349, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(58, 56, 16, NULL, NULL, 2, 849, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(59, 57, 16, NULL, NULL, 2, 849, '2024-05-14 14:21:15', '2024-05-14 14:21:15'),
(60, 58, 15, NULL, NULL, 1, 349, '2024-05-16 08:35:59', '2024-05-16 08:35:59'),
(61, 58, 16, NULL, NULL, 2, 849, '2024-05-16 08:35:59', '2024-05-16 08:35:59'),
(62, 59, 14, NULL, NULL, 1, 379, '2024-05-22 09:49:37', '2024-05-22 09:49:37'),
(63, 60, 14, NULL, NULL, 1, 379, '2024-05-22 10:18:57', '2024-05-22 10:18:57'),
(64, 60, 16, NULL, 10, 2, 849, '2024-05-22 10:18:57', '2024-05-22 10:18:57'),
(65, 61, 45, NULL, NULL, 1, 441, '2024-05-24 09:08:08', '2024-05-24 09:08:08'),
(66, 62, 16, NULL, NULL, 2, 849, '2024-05-28 16:34:39', '2024-05-28 16:34:39'),
(67, 62, 45, NULL, NULL, 1, 441, '2024-05-28 16:34:39', '2024-05-28 16:34:39'),
(68, 63, 63, NULL, 243, 4, 499, '2024-05-28 16:47:19', '2024-05-28 16:47:19'),
(69, 63, 63, NULL, 245, 1, 6199, '2024-05-28 16:47:19', '2024-05-28 16:47:19'),
(70, 63, 63, NULL, 244, 1, 2699, '2024-05-28 16:47:19', '2024-05-28 16:47:19'),
(71, 63, 46, NULL, 226, 2, 415, '2024-05-28 16:47:19', '2024-05-28 16:47:19'),
(72, 64, 62, NULL, 240, 1, 2699, '2024-05-28 18:42:33', '2024-05-28 18:42:33'),
(73, 64, 62, NULL, 242, 1, 10399, '2024-05-28 18:42:33', '2024-05-28 18:42:33'),
(74, 65, 63, NULL, 244, 2, 2699, '2024-05-29 07:41:12', '2024-05-29 07:41:12'),
(75, 65, 63, NULL, 245, 1, 6199, '2024-05-29 07:41:12', '2024-05-29 07:41:12'),
(76, 66, 14, NULL, NULL, 1, 379, '2024-05-29 09:32:08', '2024-05-29 09:32:08'),
(77, 67, 63, NULL, 244, 1, 2699, '2024-05-29 09:40:08', '2024-05-29 09:40:08'),
(78, 68, 19, NULL, 175, 1, 849, '2024-05-29 11:39:35', '2024-05-29 11:39:35'),
(79, 69, 20, NULL, 182, 2, 949, '2024-05-30 08:21:47', '2024-05-30 08:21:47'),
(80, 69, 63, NULL, 243, 1, 499, '2024-05-30 08:21:47', '2024-05-30 08:21:47'),
(81, 69, 63, NULL, 245, 2, 6199, '2024-05-30 08:21:47', '2024-05-30 08:21:47'),
(82, 70, 62, NULL, 241, 1, 6199, '2024-05-30 08:26:20', '2024-05-30 08:26:20'),
(83, 71, 63, NULL, 244, 1, 2699, '2024-05-30 08:30:20', '2024-05-30 08:30:20'),
(84, 71, 34, NULL, NULL, 1, 379, '2024-05-30 08:30:21', '2024-05-30 08:30:21'),
(85, 71, 62, NULL, 240, 1, 2699, '2024-05-30 08:30:21', '2024-05-30 08:30:21'),
(86, 71, 62, NULL, 242, 1, 10399, '2024-05-30 08:30:21', '2024-05-30 08:30:21'),
(87, 72, 14, NULL, NULL, 2, 379, '2024-05-30 11:01:49', '2024-05-30 11:01:49'),
(88, 72, 35, NULL, NULL, 1, 1699, '2024-05-30 11:01:49', '2024-05-30 11:01:49'),
(89, 72, 24, NULL, NULL, 1, 4999, '2024-05-30 11:01:49', '2024-05-30 11:01:49'),
(90, 73, 62, NULL, 239, 1, 499, '2024-05-30 11:27:12', '2024-05-30 11:27:12'),
(91, 74, 62, NULL, 239, 1, 499, '2024-05-30 11:38:43', '2024-05-30 11:38:43'),
(92, 75, 63, NULL, 243, 1, 499, '2024-05-30 11:59:40', '2024-05-30 11:59:40'),
(93, 76, 46, NULL, 227, 2, 1170, '2024-05-31 10:03:16', '2024-05-31 10:03:16'),
(94, 76, 46, NULL, 226, 2, 415, '2024-05-31 10:03:16', '2024-05-31 10:03:16'),
(95, 77, 62, NULL, 240, 1, 2699, '2024-06-03 10:22:35', '2024-06-03 10:22:35'),
(96, 78, 62, NULL, 240, 2, 2699, '2024-06-19 09:05:38', '2024-06-19 09:05:38'),
(97, 79, 62, NULL, 240, 2, 2699, '2024-06-19 09:06:58', '2024-06-19 09:06:58'),
(98, 80, 14, NULL, NULL, 1, 379, '2024-07-01 11:31:44', '2024-07-01 11:31:44'),
(99, 80, 64, NULL, 247, 10, 6199, '2024-07-01 11:31:44', '2024-07-01 11:31:44'),
(100, 80, 64, NULL, 248, 10, 10399, '2024-07-01 11:31:44', '2024-07-01 11:31:44'),
(101, 81, 14, NULL, NULL, 1, 379, '2024-07-01 12:48:56', '2024-07-01 12:48:56'),
(102, 82, 46, NULL, 226, 10, 415, '2024-07-01 12:51:54', '2024-07-01 12:51:54'),
(103, 83, 46, NULL, 226, 1, 415, '2024-07-01 13:17:13', '2024-07-01 13:17:13'),
(104, 84, 46, NULL, 227, 1, 1170, '2024-07-01 13:18:24', '2024-07-01 13:18:24'),
(105, 85, 46, NULL, 226, 10, 415, '2024-07-01 14:13:35', '2024-07-01 14:13:35'),
(106, 86, 28, NULL, NULL, 1, 207, '2024-07-03 08:58:32', '2024-07-03 08:58:32'),
(107, 87, 62, NULL, 239, 1, 500, '2024-07-03 11:19:39', '2024-07-03 11:19:39'),
(108, 88, 62, NULL, 239, 1, 500, '2024-07-04 08:27:04', '2024-07-04 08:27:04'),
(109, 88, 54, NULL, NULL, 1, 1499, '2024-07-04 08:27:04', '2024-07-04 08:27:04'),
(110, 89, 14, NULL, NULL, 3, 379, '2024-07-04 09:10:46', '2024-07-04 09:10:46'),
(111, 89, 15, NULL, NULL, 1, 349, '2024-07-04 09:10:46', '2024-07-04 09:10:46'),
(112, 90, 14, NULL, NULL, 1, 379, '2024-07-15 07:43:41', '2024-07-15 07:43:41'),
(113, 91, 43, NULL, NULL, 1, 539, '2024-07-19 10:23:28', '2024-07-19 10:23:28'),
(114, 92, 14, NULL, NULL, 1, 379, '2024-07-19 13:06:50', '2024-07-19 13:06:50'),
(115, 93, 14, NULL, NULL, 1, 379, '2024-07-19 13:27:36', '2024-07-19 13:27:36'),
(116, 94, 14, NULL, NULL, 1, 379, '2024-07-19 13:30:16', '2024-07-19 13:30:16'),
(117, 95, 14, NULL, NULL, 1, 379, '2024-07-19 13:31:40', '2024-07-19 13:31:40'),
(118, 96, 14, NULL, NULL, 1, 379, '2024-07-19 13:46:28', '2024-07-19 13:46:28'),
(119, 97, 14, NULL, NULL, 1, 379, '2024-07-19 13:48:20', '2024-07-19 13:48:20'),
(120, 98, 14, NULL, NULL, 1, 379, '2024-07-19 13:52:18', '2024-07-19 13:52:18'),
(121, 99, 14, NULL, NULL, 1, 379, '2024-07-19 14:32:58', '2024-07-19 14:32:58'),
(122, 100, 14, NULL, NULL, 2, 379, '2024-07-19 14:52:44', '2024-07-19 14:52:44'),
(123, 101, 14, NULL, NULL, 2, 379, '2024-07-19 14:55:26', '2024-07-19 14:55:26'),
(124, 102, 14, NULL, NULL, 2, 379, '2024-07-19 15:00:03', '2024-07-19 15:00:03'),
(125, 103, 14, NULL, NULL, 1, 379, '2024-07-19 15:01:27', '2024-07-19 15:01:27'),
(126, 104, 14, NULL, NULL, 1, 379, '2024-07-19 15:02:25', '2024-07-19 15:02:25'),
(127, 104, 20, NULL, NULL, 1, 849, '2024-07-19 15:02:25', '2024-07-19 15:02:25'),
(128, 105, 14, NULL, NULL, 1, 379, '2024-07-30 09:11:07', '2024-07-30 09:11:07'),
(129, 106, 14, NULL, NULL, 1, 379, '2024-07-30 09:11:45', '2024-07-30 09:11:45'),
(130, 107, 14, NULL, NULL, 1, 379, '2024-07-30 11:26:20', '2024-07-30 11:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `published_key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0 For Disable | 1 For Enable',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `value`, `published_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'COD', 'cod', '454624165469546594162144', '498496514649874646542323', 0, '2024-04-15 07:44:15', '2024-05-16 05:10:36'),
(2, 'CASH FREE', 'cashFree', '45462416546954659416214', '498496514649874646542323', 1, '2024-04-15 08:49:48', '2024-04-15 08:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_flight`
--

CREATE TABLE `pet_flight` (
  `id` int(11) NOT NULL,
  `main_banner` text DEFAULT NULL,
  `best_service_heading` varchar(255) NOT NULL,
  `best_service_sub_heading` varchar(255) NOT NULL,
  `best_service_content` text DEFAULT NULL,
  `best_service_image` text DEFAULT NULL,
  `pet_flight_heading` varchar(255) DEFAULT NULL,
  `pet_flight_content` text DEFAULT NULL,
  `pet_flight_image` text DEFAULT NULL,
  `expert_heading` varchar(255) DEFAULT NULL,
  `expert_content` text DEFAULT NULL,
  `expert_image` text DEFAULT NULL,
  `transport_heading` varchar(255) DEFAULT NULL,
  `transport_content` text DEFAULT NULL,
  `transport_tab_1_heading` varchar(255) DEFAULT NULL,
  `transport_tab_1_content` text DEFAULT NULL,
  `transport_tab_2_heading` varchar(255) DEFAULT NULL,
  `transport_tab_3_heading` varchar(255) DEFAULT NULL,
  `transport_tab_4_heading` varchar(255) DEFAULT NULL,
  `transport_tab_5_heading` varchar(255) DEFAULT NULL,
  `transport_tab_2_content` text DEFAULT NULL,
  `transport_tab_3_content` text DEFAULT NULL,
  `transport_tab_4_content` text DEFAULT NULL,
  `transport_tab_5_content` text DEFAULT NULL,
  `beloved_heading` varchar(255) DEFAULT NULL,
  `beloved_sub_heading` varchar(255) DEFAULT NULL,
  `beloved_phone` varchar(255) DEFAULT NULL,
  `beloved_image` text DEFAULT NULL,
  `expert_handlers` text DEFAULT NULL,
  `safe_travel` text DEFAULT NULL,
  `pet_friendly_travel` text DEFAULT NULL,
  `client_video_1` text DEFAULT NULL,
  `client_video_2` text DEFAULT NULL,
  `client_video_3` text DEFAULT NULL,
  `gallery_img_1` text DEFAULT NULL,
  `gallery_img_2` text DEFAULT NULL,
  `gallery_img_3` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_flight`
--

INSERT INTO `pet_flight` (`id`, `main_banner`, `best_service_heading`, `best_service_sub_heading`, `best_service_content`, `best_service_image`, `pet_flight_heading`, `pet_flight_content`, `pet_flight_image`, `expert_heading`, `expert_content`, `expert_image`, `transport_heading`, `transport_content`, `transport_tab_1_heading`, `transport_tab_1_content`, `transport_tab_2_heading`, `transport_tab_3_heading`, `transport_tab_4_heading`, `transport_tab_5_heading`, `transport_tab_2_content`, `transport_tab_3_content`, `transport_tab_4_content`, `transport_tab_5_content`, `beloved_heading`, `beloved_sub_heading`, `beloved_phone`, `beloved_image`, `expert_handlers`, `safe_travel`, `pet_friendly_travel`, `client_video_1`, `client_video_2`, `client_video_3`, `gallery_img_1`, `gallery_img_2`, `gallery_img_3`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'uploads/pet_flight/1713337316.webp', 'We Relocate your pet Worldwide', 'If you will live in another country and want to bring your pet, don’t worry! We can help you with that. We provide services to transport your pet so you can stay together wherever you go', '<p>Are you planning to embark on a new adventure but want to know the logistics of relocating your furry friend? Look no further! Petflights is here to make your pet’s journey as smooth and stress-free as possible. With our exceptional pet transport services, we ensure that your beloved dog receives the utmost care and attention during their travel experience.</p>', 'uploads/pet_flight/1713335054.webp', 'Making Your Pet\'s Relocation Smooth and Swift', 'With years of experience and expertise in dog relocation services in India, we pay meticulous attention to every transfer detail and offer individualized service levels based on your preferences to make pet transportation as stress-free as possible.', 'uploads/pet_flight/pet_flight_image1717491742.jpg', 'Looking For a Pet Relocating Expert? Now You Know Where to Go!', 'Here are a few of the ways we can help you with pet transportation:\r\n\r\n- Obtain the required licenses and health certifications\r\n- Make reservations for pet-friendly transit\r\n- Assign comfortable and secure travel kennels or carriers\r\n- Provide individualized guidance on pet adjustments and relocation\r\nBy receiving such guidance and support from the best Pet Relocation Company, you can relax knowing that your pet will receive excellent care with our assistance during moving. We will handle everything, allowing you to enjoy your new home with your beloved pet.', 'uploads/pet_flight/expert_image1717502009.jpg', 'Transporting Your Pets with Utmost Care and Safety', 'As supporters of pet welfare and safety, we provide the best Dog and cat relocation services. We want the pet transportation process to be as stress-free as possible for you and your companion. Our top-notch Pet Relocation Services can benefit you in the following ways.', 'Experienced Pet Handlers', 'Pet Flights prides itself on having experienced team members who can handle pets of all breeds and staff members who understand their responsibilities to keep your pet happy throughout the journey.', 'Veterinary Assistance', 'Insurance Coverage', 'Door-to-door Services', 'Personalized Pet Care', 'We work with reputable veterinary clinics and experts, enabling us to offer health examinations, immunizations, and medical certifications necessary for domestic and foreign travel.', 'Pet Flights provides insurance protection for your dog while it is being relocated. Having an extra layer of safety and security with insurance coverage will increase your faith in us.', 'We handle our clients’ belongings swiftly and carefully. Wherever possible, we also offer timely, door-to-door service.', 'We understand that every pet is different and has different needs. So, we provide personalized care to maintain their well-being.', 'Are You Looking To Relocate Your Beloved Pets?', 'We are here to help you', '892-057-8443', 'uploads/pet_flight/beloved_image1716793568.png', '<p>At RemedioVet, we specialize in getting dogs on planes. Our team of experienced professionals understands pet owners’ unique needs and concerns. We have meticulously designed our services to provide your furry friend with a seamless and comfortable journey.</p>', '<p>Your dog’s safety and comfort are our top priorities. We partner with reputable airlines that have established pet-friendly policies and adhere to strict regulations. From spacious kennels to climate-controlled cabins, we ensure your pet feels secure and relaxed throughout the journey.</p>', '<p>Your dog deserves the same comfort and convenience as you do during air travel. That’s why we offer pet-friendly travel options, including direct flights and personalized routing, to minimize travel time and ensure a hassle-free experience for your furry companion.</p>', NULL, NULL, NULL, 'uploads/pet_flight/gallery_img_11713335745.webp', 'uploads/pet_flight/gallery_img_21713335745.webp', 'uploads/pet_flight/gallery_img_31713335745.webp', 'Pet Relocation Services in India: Traveling With Dog', 'Pet Relocation Services', 'Explore India\'s premier international pet transport service for stress-free pet relocation. Discover the ease of traveling with your dog on planes with our expert assistance.', '2024-04-17 01:21:46', '2024-07-03 06:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `pet_flight_forms`
--

CREATE TABLE `pet_flight_forms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_flight_forms`
--

INSERT INTO `pet_flight_forms` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(4, 'Mat', '852589558', '2024-05-13 04:32:05', '2024-05-13 04:32:05'),
(5, 'Peter Thomas', '7453456812', '2024-05-16 06:55:36', '2024-05-16 06:55:36'),
(6, 'Peter Thomas', '5222585821', '2024-05-16 06:55:48', '2024-05-16 06:55:48'),
(7, 'Peter Thomas', '5222585821', '2024-05-16 07:01:03', '2024-05-16 07:01:03'),
(8, 'test', '7453456810', '2024-05-16 07:03:29', '2024-05-16 07:03:29'),
(9, 'shiv', '123456789', '2024-05-29 05:44:46', '2024-05-29 05:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `small_description` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `weight_unit` varchar(100) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `length_unit` varchar(100) DEFAULT NULL,
  `length` varchar(100) DEFAULT NULL,
  `date_available` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `width` varchar(100) DEFAULT NULL,
  `min_quantity` varchar(100) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `trending` tinyint(4) DEFAULT 0 COMMENT '1 = trending, 0 = not-trending',
  `featured` tinyint(4) DEFAULT 0 COMMENT '1 = featured, 0 = not-featured`',
  `seasonal_special` tinyint(4) DEFAULT NULL COMMENT '1 = seasonal, 0 = not-seasonal`',
  `status` tinyint(4) DEFAULT 0 COMMENT '1 = hidden, 0 = visible',
  `offer_type` enum('dog','cat') DEFAULT 'dog',
  `is_public` enum('1','0') NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `featured_image` text DEFAULT NULL,
  `video_1` text DEFAULT NULL,
  `video_2` text DEFAULT NULL,
  `video_3` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_type_id`, `sku`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `weight_unit`, `weight`, `length_unit`, `length`, `date_available`, `height`, `width`, `min_quantity`, `tax`, `trending`, `featured`, `seasonal_special`, `status`, `offer_type`, `is_public`, `meta_title`, `meta_keyword`, `meta_description`, `featured_image`, `video_1`, `video_2`, `video_3`, `created_at`, `updated_at`) VALUES
(14, 1, NULL, NULL, 'chew', 'Canicoccus – Antidiarrheal chews for dogs', 'canicoccus-antidiarrheal-chews-for-dogs', 'Remediovet', '<p>Worried about your furry friend suffering from diarrhea or digestive issues? Are you looking for an easy way to prevent gastrointestinal disorders and obesity in your pets? Why not try our Probiotic Antidiarrhoeal Chews, which are also safe and recommended by veterinarians? This antidiarrheal for dogs contains 30 tablets and aids in normalizing fecal consistency. As a result of its natural ingredients, it is designed to regulate gut activity quickly. Moreover, it is suitable for dogs and puppies of all ages and sizes; hence, there is no need to worry about the age and size of your pet. The formula aids digestion and promotes a healthy balance of gut bacteria</p>', '<p>Worried about your furry friend suffering from diarrhea or digestive issues? Are you looking for an easy way to prevent gastrointestinal disorders and obesity in your pets? Why not try our Probiotic Antidiarrhoeal Chews, which are also safe and recommended by veterinarians?</p><p>This <strong>antidiarrheal for dogs</strong> contains 30 tablets and aids in normalizing fecal consistency. As a result of its natural ingredients, it is designed to regulate gut activity quickly. Moreover, it is suitable for dogs and puppies of all ages and sizes; hence, there is no need to worry about the age and size of your pet.</p><p>The formula aids digestion and promotes a healthy balance of gut bacteria.</p><h3>Here’s what makes Canicoccus special:</h3><ol><li><strong>Fast &amp; Effective Relief: </strong>Our chewable tablets are made from natural ingredients in a way that swiftly normalizes fecal consistency and regulates digestive activity, giving you instant relief from diarrhea.</li><li><strong>Safe for All Dogs:</strong> The Canicoccus <strong>medicine for dog diarrhea</strong> is safe for all dogs of any age, breed, or size. Therefore, you may relax knowing that even the most delicate puppies can use it gently.</li><li><strong>High-quality, All-natural Components: </strong>Canicoccus is made with high-quality ingredients because we believe in the power of nature. Providing your dog with something healthy and effective can make you feel wonderful.</li><li><strong>Delicious &amp; convenient: </strong>Bid farewell to untidy pills and powders! Administering Canicoccus is made simple and pleasurable by the tasty chewable tablets that your dog will adore.</li></ol><h4>Benefits</h4><ul><li>Enhances the quality of stool</li><li>Eliminates bad breath</li><li>Increases immunity</li><li>Elevates mood</li><li>Improves skin &amp; coat</li></ul><p>Dose</p><ul><li>Take 1-2 CaniCoccusTM chews in the morning each day.</li></ul>', 399, 379, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0, 1, NULL, 0, 'dog', '1', 'Antidiarrheal Medicine for Dogs | Best Meds for Dog Diarrhea', 'Antidiarrheal Medicine for Dogs', 'Discover the best medicine for dog diarrhea with our range of canine antidiarrheals. Combat diarrhea in dogs effectively with trusted medications designed to alleviate symptoms and restore your pet\'s health.', 'uploads/product/1715072539.png', NULL, NULL, NULL, '2024-05-01 12:55:50', '2024-07-19 15:02:25'),
(15, 1, NULL, NULL, NULL, 'Remworm – Flavoured Dewormer For Dogs & Puppies', 'remworm-dewormer-for-dogs-puppies', 'Remediovet', '<p>Do you want to make your pet worm-free? This flavored dewormer for dogs &amp; puppies contains praziquantel, Pyrantel Embonate and Febantel, which are effective in treating common worm variants such as Taenia pisiformis and Dipylidium caninum. These chewable deworming tablets have a tasty flavor, making them easy for your pet to consume. Veterinarians recommend this formula, which is both safe and effective. It is gentle on their digestive system and can be used for puppies as young as 2 weeks. Not only is Remworm delicious, but it’s also convenient! Just let the chewable magic do its magic by following the simple dose instructions based on your dog’s weight. Select from various products and flavors to find the ideal fit for your pet’s requirements.</p>', '<p>Do you want to make your pet worm-free? This flavored dewormer for dogs &amp; puppies contains praziquantel, Pyrantel Embonate and Febantel, which are effective in treating common worm variants such as Taenia pisiformis and Dipylidium caninum.</p><p>These chewable <strong>deworming tablets</strong> have a tasty flavor, making them easy for your pet to consume. Veterinarians recommend this formula, which is both safe and effective. It is gentle on their digestive system and can be used for puppies as young as 2 weeks.</p><p>Not only is Remworm delicious, but it’s also convenient! Just let the chewable magic do its magic by following the simple dose instructions based on your dog’s weight. Select from various products and flavors to find the ideal fit for your pet’s requirements.</p><h4>Ingredients &amp; Analysis</h4><p>Each tablet contains:</p><ul><li>Praziquantel USP 50 mg</li><li>Pyrantel Embonate USP 144 mg</li><li>Febantel 150 mg</li></ul>', 399, 349, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, 0, 'dog', '1', 'Remworm - Flavoured Dewormer For Dogs & Puppies', 'Dewormer For Dogs', 'RemedioVet offers the best deworming medicine for your dogs that protects them against insects and worms. To buy the best dewormer for dogs that combines safety and efficacy. Shop Now!', 'uploads/product/1715072166.png', NULL, NULL, NULL, '2024-05-01 13:18:29', '2024-07-04 09:10:46'),
(16, 1, NULL, NULL, NULL, 'Dog Winter Jacket – Airforce', 'dog-winter-jacket-airforce', 'Pets way', '<p>Is your dog a jacket lover? Why not make them try out this ultra-warm, windproof jacket and shower them with love and care? This contrasting color dog winter jacket-Airforce is designed to provide exceptional warmth for your fur baby, thus making them feel cozy during chilly weather. The Winterberry Jacket is designed to help you stay outside for longer periods. It is lightweight and provides excellent warmth, comparable to your winter jacket. Additionally, it can be easily packed and carried around.</p>', '<p>Is your dog a jacket lover? Why not make them try out this ultra-warm, windproof jacket and shower them with love and care?</p><p>This contrasting color dog winter jacket-Airforce is designed to provide exceptional warmth for your fur baby, thus making them feel cozy during chilly weather.</p><p>The Winterberry Jacket is designed to help you stay outside for longer periods. It is lightweight and provides excellent warmth, comparable to your winter jacket. Additionally, it can be easily packed and carried around.</p><h4>Ingredients &amp; Analysis</h4><p><strong>Key features:</strong></p><ul><li><strong>&nbsp; &nbsp; &nbsp;Provides comfort:</strong> This lightweight, soft polyester and microfiber jacket keeps your dog cozy without adding bulk.</li><li><strong>&nbsp; &nbsp; &nbsp;Perfect for festivities</strong>: Suitable for any event, the eye-catching design lends a festive vibe to birthdays, Thanksgiving, New Year’s, and other special occasions.</li><li><strong>&nbsp; &nbsp; &nbsp;Versatility throughout the year:</strong> This windproof sweatshirt provides warmth without being overly bulky, making it perfect for chilly days.</li><li><strong>&nbsp; &nbsp; Easy care:</strong> Because it is a machine-washable material, it is easy to clean. Thus, keep your dog looking fashionable every day.</li></ul><p><strong>Color:</strong> Airforce<br><strong>Fabric:</strong> Polyester</p>', 899, 849, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Stylish Dog Winter Jacket – Airforce | Ultimate Cold Weather Protection', 'Dog Winter Jacket', 'Keep your dog warm and stylish this winter with our Airforce Dog Winter Jacket. Designed for ultimate comfort and cold weather protection, this jacket ensures your furry friend stays cozy and chic during winter walks.', 'uploads/product/1715071830.webp', NULL, NULL, NULL, '2024-05-01 13:27:05', '2024-07-03 13:59:56'),
(19, 1, 5, 25, NULL, 'Dog Winter Sweatshirt – Icefall', 'dog-winter-sweatshirt-icefall', 'Pets way', '<p>It’s time you style your poochy in a comfy yet warm dog winter sweatshirt! These icefall sweatshirts are made to match their style and provide comfort and warmth. They are made with high-quality cotton fleece fabric to keep them stylish and cozy, like a second skin. Our dog sweatshirts and accessories, like the icefall, are made in India with a focus on providing ultimate warmth, insulation, and softness. We prioritize quality in our products because we value your pet’s comfort.</p>', '<p>It’s time you style your poochy in a comfy yet warm dog winter sweatshirt!</p><p>These icefall sweatshirts are made to match their style and provide comfort and warmth. They are made with high-quality cotton fleece fabric to keep them stylish and cozy, like a second skin.</p><p>Our dog sweatshirts and accessories, like the icefall, are made in India with a focus on providing ultimate warmth, insulation, and softness.</p><p>We prioritize quality in our products because we value your pet’s comfort.</p><h4>Ingredients &amp; Analysis</h4><p><strong>Key features:</strong></p><ul><li><strong>Multipurpose wear:</strong> This outfit is perfect for different events and activities. So whether you are taking your dog for a walk, a festive gathering, or just having a cozy night’s sleep, this sweatshirt will make them look comfy in all situations.</li><li><strong>Lightweight comfort:</strong> This shirt is light and won’t make your dog feel heavy. It will fit them comfortably, and your dog can move freely, feeling safe and secure.</li><li><strong>Cozy &amp; breathable:</strong> This sweatshirt is breathable and cozy and also includes a velcro neck, which allows your furry friend to move freely.</li><li><strong>Fashion statement:</strong> The sweatshirt can also enhance your dog’s style. Its adorable design will make your furry companion look exceptionally cute and stand out among other dogs.</li><li><strong>Perfect for skin issues:</strong> This shirt protects dogs with skin issues, preventing them from further irritation or licking wounds. It is especially useful for dogs with allergies or those in the process of healing from injuries.</li></ul><p><strong>Color:</strong> lime<br><strong>Sizes:</strong> XS-5XL</p>', 599, 549, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Stylish Dog Sweatshirts & Cozy Winter Apparel', 'dog sweatshirt', 'Elevate your dog\'s fashion game with our trendy dog sweatshirts, suitable for every season. Explore our exclusive line of dog winter sweatshirts for added warmth and style in colder season.', 'uploads/product/1715074143.webp', NULL, NULL, NULL, '2024-05-02 08:54:10', '2024-07-03 14:00:14'),
(20, 1, 5, 25, NULL, 'Dog Winter Jacket/Coat Coral', 'dog-winter-jacket-coat-coral', 'Pets way', '<p>We understand you cannot see your cute little friend suffering in chilly weather. This is why we are here to provide you with a dog winter jacket to shield them from winter’s chill. This winterberry jacket is specially designed for dogs who love going on long walks during the chilly weather of winter. It is lightweight, ensuring comfort, warmth, and flexibility. This jacket provides the ultimate experience for your beloved furry friend.</p>', '<p>We understand you cannot see your cute little friend suffering in chilly weather. This is why we are here to provide you with a dog winter jacket to shield them from winter’s chill.</p><p>This winterberry jacket is specially designed for dogs who love going on long walks during the chilly weather of winter.</p><p>It is lightweight, ensuring comfort, warmth, and flexibility. This jacket provides the ultimate experience for your beloved furry friend.</p><h4>Ingredients &amp; Analysis</h4><ul><li><strong>Snug Fit:</strong> The elastic cord at the bottom allows for additional adjustment, ensuring that the jacket stays in place during all of its fun adventures. The YKK zipper guarantees a safe and comfortable fit.</li><li><strong>Breathable comfort:</strong> The soft shell upper fabric is made to breathe as much as possible, keeping your dog cool and comfy for the day.</li><li><strong>Provides warmth:</strong> This jacket is eco-friendly and provides warmth for your dog using insulation made from recycled polyester, which helps reduce its impact on the environment.</li><li><strong>Ensures safety:</strong> Reflective, bright trims make sure your pet is well-seen in low light, which keeps them safe when out on walks or adventures.</li><li><strong>Easy to wear:</strong> The zipper jacket makes it easy for you to quickly wear and remove the jacket whenever your dog feels like it.</li></ul><p><strong>Color: </strong>coral<br><strong>Size:</strong> XS-5XL</p>', 899, 849, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Dog Winter Jackets and Coats for the Chilliest Days', 'Dog Winter Jackets', 'Shop our collection of dog winter jackets and coats to keep your furry friend warm and stylish when the temperatures drop. Explore the latest in canine winter fashion with our cozy and durable options. Find the perfect winter coat for your dog\'s comfort and protection. Browse now for top-quality dog winter apparel.', 'uploads/product/1714626119.webp', NULL, NULL, NULL, '2024-05-02 09:01:59', '2024-07-19 15:02:25'),
(21, 1, 0, 0, NULL, 'Dual Colour Dog Leash', 'dual-colour-dog-leash', 'Pets way', '<p>Introducing the Ultimate Dual Colour Dog Leash: Where Style Meets Functionality! Tired of boring black dog leashes? Want something that reflects your dog’s unique personality? Then the Dual Colour Dog Leash is for you! With its two-tone design, you can choose the perfect colour combination to match your dog’s fur, collar, or even your own outfit. But this leash is more than just a fashion statement. It’s also incredibly functional.</p>', '<h3><strong>Introducing the Ultimate Dual Colour Dog Leash: Where Style Meets Functionality!</strong></h3><p>Tired of boring black dog leashes? Want something that reflects your dog’s unique personality? Then the Dual Colour Dog Leash is for you!</p><p>With its two-tone design, you can choose the perfect colour combination to match your dog’s fur, collar, or even your own outfit. But this leash is more than just a fashion statement. It’s also incredibly functional.</p><h4>Why Choose Our Dual-Colored Dog Leash?</h4><p>Here are some of the unique things about the Ultimate Dual Colour Dog Leash:</p><ul><li>It’s available in a variety of two-tone colour combinations, so you can find the perfect one to match your dog’s personality and your own style.</li><li>We exclusively provide leashes crafted from premium materials renowned for their exceptional durability and resilience against varying weather conditions.</li><li>It has a comfortable grip that makes it easy to hold, even when your dog is pulling.</li><li>Designed to cater to dogs of all sizes, ensuring a secure and comfortable fit for your furry companion.</li><li>Our exquisite dual dog leash provides unparalleled control during walks and outings with our dual dog leash, ensuring the utmost safety and impeccable management for your beloved canine companions.</li></ul><p>So whether you’re going for a walk around the park or a hike in the mountains, our Dual Colour Dog Leash is the perfect way to keep your furry friend safe and stylish.</p>', 399, 349, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Dual Colour Dog Leash | Stylish & Durable Pet Accessory', 'Dual Colour Dog Leash', 'Upgrade your dog\'s walk with our Dual Colour Dog Leash. Combining style and durability, this leash is perfect for daily walks and adventures. Available in vibrant color combinations to suit every pet\'s personality.', 'uploads/product/1714627031.webp', NULL, NULL, NULL, '2024-05-02 09:17:11', '2024-07-03 14:01:03'),
(23, 1, 0, 0, NULL, 'Dual Colour Dog Collar', 'dual-colour-dog-collar', 'Pets way', '<p>The Ultimate Dual Colored Dog Collar is Here — Stylish, Safe, and Comfortable All in One! Is your animal companion fashionable? Do you worry about their safety when they go on evening walks?</p>', '<p>The Ultimate Dual Colored Dog Collar is Here — Stylish, Safe, and Comfortable All in One!</p><p>Is your animal companion fashionable?<br>Do you worry about their safety when they go on evening walks?</p><p>Look nowhere else! For pet owners who care about both appearance and safety, our dual-colored dog collar is the ideal option.</p><ul><li>Modern Design: Our two-tone collars are made with your dog’s fashion sense in mind. The striking contrast between the hues not only makes your dog stand out in a crowd but also attractively highlights their coat. The neighbors will be envious of your dog!</li><li>Unsurpassed Quality: Our <strong>colourful dog collars</strong> are made to last because they are made of high-quality materials. The premium nylon webbing is not only long-lasting but also cozy for your pet to wear throughout the day. Don’t worry, this <strong>dog neck belt</strong> can withstand the roughest of playtime.</li><li>Putting safety first: We recognise that the safety of your dog is your first concern. Because of this, the luminous stitching on our collars guarantees that your pet is seen during those early-morning or late-night walks. Always keep your animal friend in a safe and secure environment.</li><li>Perfect Fit: Our collars may be adjusted completely to provide the ideal fit for dogs of all sizes. Our dual-colored collar will offer support and comfort without chafing or irritation, whether you have a tiny terrier or a huge Great Dane.</li><li>It’s simple to use: The collar for your dog is simple to put on and take off thanks to our quick-release buckle. It’s as simple as 1, 2, 3 now—no more fumbling with obstinate clasps or challenging snaps!</li></ul><p>We guarantee customer satisfaction and stand behind the caliber of our products.&nbsp;one of our goods. We provide a no-hassle return policy if you’re not fully satisfied with your dog collar with two colors.</p><p>Don’t skip on your pet’s comfort, safety, or sense of style. With our Dual-Colored <strong>puppy neck belt</strong>, you can up your collar game and see the difference for yourself.</p><p>Place your order right away to give your pet the gift of safety and fashion!</p><p>Make your dog the buzz of the neighborhood by clicking “Add to Cart”!</p><p>&nbsp;</p><h2>Ingredients &amp; Analysis</h2><ul><li>Lead &amp; BPA Free</li><li>Gently Hand Wash With Mild Detergent</li><li>Do Not Bleach</li><li>Made In India</li></ul>', 349, 314, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Choose the Best Puppy and Dog Neck Belt for Your Furry Friend', 'Dog Neck Belt', 'Discover a wide range of puppy neck belts and colorful dog collars designed to enhance the comfort, style, and safety of your canine companion.', 'uploads/product/1714627274.webp', NULL, NULL, NULL, '2024-05-02 09:21:14', '2024-06-18 11:43:09'),
(24, 1, 5, 26, NULL, 'The ultimate pet travel backpack', 'the-ultimate-pet-travel-backpack', 'Petique', '<p>The ultimate travel backpack is light, spacious, and comfortable for your pets. Your pets will feel relaxed as they view the outside world through its large, wide, breathable mesh windows all around the Pet Carrier. After an incredible adventure out with your pets, The ultimate travel backpack folds flat for easy storage!</p>', '<p>The ultimate travel backpack is light, spacious, and comfortable for your pets. Your pets will feel relaxed as they view the outside world through its large, wide, breathable mesh windows all around the Pet Carrier. After an incredible adventure out with your pets, The ultimate travel backpack folds flat for easy storage!</p><p>Features:</p><ul><li>Three entry ways</li><li>Large storage pocket</li><li>Removable reversible mat</li><li>Collapsible for easy storage</li><li>Ultimate safety with reflector</li><li>Ultimate comfort and control with lower back cushion, front chest clip for support, adjustable straps</li></ul><p>Care Instructions:</p><ul><li>Do not bleach, Spot clean only</li><li>Cushion inside – machine washable, tumble dry on low</li></ul><h4>Ingredients &amp; Analysis</h4><p>Measurements: 15.75”L x 11.82”W x 9.45”H Fits: Pets up to 11 Kgs</p>', 5902, 4999, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 'dog', '1', 'Explore the Best Pet Carry Backpacks for Convenient Travel', 'Pet Carry Backpacks', 'Discover top-quality pet travel backpacks designed for comfort and style. Our cat carrying backpacks provide a safe and cozy space for your furry friend during outings.', 'uploads/product/1714627530.webp', NULL, NULL, NULL, '2024-05-02 09:25:30', '2024-07-03 14:01:43'),
(25, 1, 0, 0, NULL, 'Nurture Adult Dog Food For Large & Giant Breeds', 'nurture-adult-dog-food-for-large-giant-breeds', 'Wag & Love', '<p>Introducing Nurture Adult, a unique blend designed to provide your mature dog with the optimal support for a thriving life: 🐾 Optimal Growth: Experience the perfect balance of high lean protein and essential nutrients, including optimal calcium levels. This recipe fuels your adult dog’s growth needs, maintaining their vitality. 🦴 Joint Vitality: Aids in joint health with the potency of Glucosamine and Chondroitin. Our formula keeps your dog’s joints agile and strong, ensuring they remain active and joyful. ✨ Lustrous Coat: Enriched with Norwegian Salmon Oil, Omega-3 &amp; 6, and Zinc, our blend promotes a glossy coat that shines as brightly as your dog’s spirit. 💓 Heart Wellness: Nurture a healthy heart with L-Carnitine, Taurine, and the benefits of Omega-3s. Your adult dog’s heart will beat strong for years to come. 🍃 Digestive Harmony: Elevate digestion with the power of Prebiotics, Probiotics, and Ayurvedic Herbs. This thoughtful blend nurtures your dog’s digestive system for optimal nutrient absorption. 🍖 Naturally Hypoallergenic: Choose a single sourced meat blend, free from beef or pork. This choice is kind to sensitive stomachs and ensures your dog thrives on the purity of our ingredients. 🌈 Nature’s Goodness: Say goodbye to synthetic additives. We embrace nature’s palette, devoid of synthetic colors, preservatives, or flavors. Every bite is infused with authenticity. 🧠 Brain &amp; Vision Boost: Nurture cognitive health and vision with EPA &amp; DHA. Our formula supports your dog’s brain function and visual acuity.</p>', '<h4>&nbsp;</h4><figure class=\"table\"><table><tbody><tr><td><p>Introducing Nurture Adult, a unique blend designed to provide your mature dog with the optimal support for a thriving life:</p><ul><li>Optimal Growth: Experience the perfect balance of high lean protein and essential nutrients, including optimal calcium levels. This recipe fuels your adult dog’s growth needs, maintaining their vitality.</li><li>Joint Vitality: Aids in joint health with the potency of Glucosamine and Chondroitin. Our formula keeps your dog’s joints agile and strong, ensuring they remain active and joyful.</li><li>Lustrous Coat: Enriched with Norwegian Salmon Oil, Omega-3 &amp; 6, and Zinc, our blend promotes a glossy coat that shines as brightly as your dog’s spirit.</li><li>Heart Wellness: Nurture a healthy heart with L-Carnitine, Taurine, and the benefits of Omega-3s. Your adult dog’s heart will beat strong for years to come.</li><li>Digestive Harmony: Elevate digestion with the power of Prebiotics, Probiotics, and Ayurvedic Herbs. This thoughtful blend nurtures your dog’s digestive system for optimal nutrient absorption.</li><li>Naturally Hypoallergenic: Choose a single sourced meat blend, free from beef or pork. This choice is kind to sensitive stomachs and ensures your dog thrives on the purity of our ingredients.</li><li>Nature’s Goodness: Say goodbye to synthetic additives. We embrace nature’s palette, devoid of synthetic colors, preservatives, or flavors. Every bite is infused with authenticity.</li><li>Brain &amp; Vision Boost: Nurture cognitive health and vision with EPA &amp; DHA. Our formula supports your dog’s brain function and visual acuity.</li></ul><p>Elevate your dog’s journey with Nurture Adult—a blend meticulously curated to cater to the specific needs of your adult companion. Optimal growth, joint vitality, heart health, and more come together in every bowl, embodying a commitment to your dog’s well-being.</p></td></tr></tbody></table></figure><h2>Ingredients &amp; Analysis</h2><p>Rice, Dutch Chicken Meat, Chicken Fat, Dried Beet Pulp (Prebiotic), Atlantic Dried Fish, Flax Seed, Carob Pods, Brewer’s Yeast (Probiotic), Norwegian Salmon Oil, Dried Eggs, Basil, Thyme, Glucosamine, Chondroitin.. Analytical Constituents:</p><ul><li>Crude Protein 26 %</li><li>Crude Fat 16 %</li><li>Crude Fibre 1.8 %</li><li>Crude Ash 5.9 %</li><li>Calcium 1.4 %</li><li>Phosphorus 1.0 %</li><li>Total Omega-3,6 3.8 %</li><li>EPA 0.01 %</li><li>DHA 0.01 %</li><li>Energy (Kcal/Kg ME) 3765</li></ul>', 1490, 1341, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Nurture Adult Dog Food For Large & Giant Breeds', 'Nurture Adult Dog Food', 'Introducing Nurture Adult, a unique blend designed to provide your mature dog with the optimal support for a thriving life.', 'uploads/product/1714627710.webp', NULL, NULL, NULL, '2024-05-02 09:28:30', '2024-06-18 11:51:12'),
(26, 1, 5, 27, NULL, '5 in 1 Pet Carrier', '5-in-1-pet-carrier', 'Petique', '<p>The 5-in-1 Pet Carrier is your newest travel companion, aside from your pets! When your pets are tired from walking or there’s too many people around, you simply put your furry friend in the safety of our 5-in-1 Pet Carrier! You can carry it as a back pack roll your dog around with our luggage feature attach it to your luggage attach it to the car like a car seat or attach it to the 5-in-1 Pet Stroller that was solely made for the 5-in-1 Pet Carrier.</p>', '<p>The 5-in-1 Pet Carrier is your newest travel companion, aside from your pets! When your pets are tired from walking or there’s too many people around, you simply put your furry friend in the safety of our 5-in-1 Pet Carrier! You can</p><ul><li>carry it as a back pack</li><li>roll your dog around with our luggage feature</li><li>attach it to your luggage</li><li>attach it to the car like a car seat or</li><li>attach it to the 5-in-1 Pet Stroller that was solely made for the 5-in-1 Pet Carrier.</li></ul><p>FEATURES:</p><ul><li>Lightweight durable, heavy duty materials</li><li>3 easy and convenient carrying solutions&nbsp;– Telescoping Handle, Strap Handle and Backpack Straps</li><li>No-fuss zipper closures, three ventilated mesh panels</li><li>Small item storage with pockets on both sides</li><li>Can be used as a backpack, luggage, pet car seat, rolling carrier</li><li>Can be used as a stroller by securing it on the stroller frame</li><li>Collapsible for easy storage and removable reversible padding</li></ul><p>CARE INSTRUCTIONS</p><ul><li>Cushion – Cover is machine washable, tumble dry on low</li><li>Spot clean only, do not leave in the sun to dry</li></ul><p>Why this is the ultimate carrier ?</p><ul><li>Petique’s 5-in-1 pet carrier is the ultimate travel carrier for safely transporting your dog, cat, rabbit or any other small pet; The pet stroller converts into a car seat, backpack and quad wheelchair with smooth 360-degree rotation!</li><li>Travel friendly:&nbsp;Approved by most airlines, this pet carrier is ideal for travel; The pet stroller offers 3 easy and convenient transportation solutions:&nbsp;telescopic handles, fabric handles and backpack straps; Lightweight and foldable for easy storage and portability</li><li>Actual design:&nbsp;Equipped with a large pocket in the back that can turn into a compartment to put in your luggage; Simply unzip the bottom of the bag to access; Ideal for transporting your pet and everything you need. Designed with five pockets including a water compartment</li><li>Comfort for pets:&nbsp;Keep your pet warm with four large mesh windows for ventilation – two side doors and two top windows; Complete with a magnetic front flap for your pet’s privacy</li></ul><h4>Ingredients &amp; Analysis</h4><p>Measurements:</p><ul><li>13”L x 11”W x 20.8”H</li></ul><p>Colours:</p><ul><li>Pink Camo</li><li>Army Camo</li><li>Pepper</li><li>Sunset Strip Pets</li></ul><p>&nbsp; Carrying Capacity:</p><ul><li>Up to 11 Kgs</li></ul>', 17273, 14799, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 'dog', '1', 'Pet Carrier for Cats and Dogs - Safe and Stylish Travel Solution', 'Pet Carrier', 'Find the perfect pet carrier for your furry friend. Our cat and dog carriers combine safety and style, ensuring a comfortable journey for your beloved companions. Whether you\'re traveling to the vet or going on an adventure, our pet carriers provide security and convenience.', 'uploads/product/1714627811.webp', NULL, NULL, NULL, '2024-05-02 09:30:11', '2024-07-03 14:04:41'),
(27, 1, 0, 0, '123', 'Nurture Adult Dog Food For Small & Medium Breeds', 'nurture-adult-dog-food-for-small-medium-breeds', 'Wag & Love', '<p>Experience the wholesome goodness of Wag &amp; Love Nurture Low Grain Adult Dry Dog Food for Small and Medium Breeds. Watching your favorite puppy grow into a lovely adult dog is fantastic. Therefore, ensuring they receive the proper nourishment during this crucial stage is crucial. Small and medium breed dogs 12 months of age and older have specific nutritional requirements, which are catered to by our carefully formulated Nurture Low Grain Adult Dry Dog Food. With a dedication to quality and your pet’s welfare, we deliver PAN India in only four business days. Additionally, we provide easy returns to guarantee your pleasure with each transaction.</p>', '<p>Experience the wholesome goodness of Wag &amp; Love Nurture Low Grain Adult Dry Dog Food for Small and Medium Breeds.</p><p>Watching your favorite puppy grow into a lovely adult dog is fantastic. Therefore, ensuring they receive the proper nourishment during this crucial stage is crucial.</p><p>Small and medium breed dogs 12 months of age and older have specific nutritional requirements, which are catered to by our carefully formulated Nurture Low Grain Adult Dry Dog Food. With a dedication to quality and your pet’s welfare, we deliver PAN India in only four business days. Additionally, we provide easy returns to guarantee your pleasure with each transaction.</p><h3>What Makes Wag &amp; Love Nurture Low Grain Adult Dry Dog Food So Popular?</h3><p><strong>Amazing source of protein:</strong> The one we provide uses boneless Dutch Chicken, a fantastic source of lean protein. In addition to having a deep, wild flavor, it is also simple to digest and has a high bioavailability of nutrients.</p><p><strong>Nature’s bounty balanced nutrition:</strong> We firmly believe in the efficacy of organic components. Our formula is enhanced with a blend of fruits, vegetables, and exotic herbs to give a robust blend of antioxidants and more than 20 vital vitamins and minerals for healthy maintenance.</p><p><strong>Pure and natural:</strong> We strongly dislike synthetic ingredients. Artificial colors, preservatives, and tastes are not included in our product. It is GMO-free and intended to encourage your beloved pet to live longer, healthier, and more active lives.</p><p><strong>Innovative packaging for freshness:</strong> Our groundbreaking “Mini Packs” are metal-coated and flushed with N2/CO2, except for the 15kg variation. This guarantees extraordinary freshness and flavor while protecting essential nutrients. Additionally, they make storing easy.</p><h4>Ingredients &amp; Analysis</h4><ul><li>Boneless Fresh Dutch Chicken (20%)</li><li>Dried Chicken (20%)</li><li>Peas, Chicken Fat, Potato, Sweet Potato</li><li>Pure Norwegian Salmon Oil, Carob Pods, Flax Seed</li><li>Brewer’s Yeast, Egg Powder</li><li>(Chelated) Minerals, Inulin (Source Of FOS)</li><li>Carrot (0.2%), Nettle, Echinacea, Apple, Mango, Banana</li><li>Thyme, Basil, Spirulina, Cranberry (0.1%)</li><li>Celery, Glucosamine (0.02%), Chondroitin (0.02%)</li><li>Yucca Extract</li></ul>', 1490, 1341, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Nurture Adult Dog Food For Small & Medium Breeds', 'Nurture Adult Dog Food', 'Introducing Nurture Adult, a unique blend designed to provide your mature dog with the optimal support for a thriving life.', 'uploads/product/1714628105.webp', NULL, NULL, NULL, '2024-05-02 09:35:05', '2024-07-15 11:19:58'),
(28, 1, 3, 11, NULL, 'Hemp Infused Herbal Liver Tonic For Dogs & Cats', 'hemp-infused-herbal-liver-tonic-for-dogs-cats', 'Petique', '<p>Introducing products that promote optimal health for your beloved fur babies:<br>Herbal liver tonic from hemp!<br><br>Does your fluffy friend deserve the best in health and happiness? We think so, and that’s why we’ve created a revolutionary hemp herbal liver tonic, specifically designed to support overall health. your dog and cat.<br><br><strong>Natural healing power:</strong> Our tonic harnesses the incredible healing power of hemp, a natural herbal ingredient known for its soothing and balancing properties. It is packed with advantageous substances that can encourage rest, assist in maintaining a healthy inflammatory response, and offer soothing support for a number of biological functions.<br><br><strong>Good liver:</strong> A healthy liver is essential for metabolism, digestion, and detoxification. A carefully chosen herbal blend supports and nourishes the liver encourages maximum performance and helps the body remove impurities.<br><br><strong>Comprehensive Harmony:</strong> We understand that a balanced and harmonious system is essential for the vitality of your pets. Our formulas are designed to work holistically, addressing many aspects of your pet’s health, from digestion to immune function, while promoting feelings of calm and well-being.<br><br>Perfect for picky eaters: Worried your furry friend won’t like it? Do not be afraid ! Our hemp herbal liver tonic is carefully crafted for an irresistible delicious taste, making it the treat your pet looks forward to. No more struggling with unpalatable pills or supplements.</p>', '<p>Introducing products that promote optimal health for your beloved fur babies:<br>Herbal liver tonic from hemp!<br><br>Does your fluffy friend deserve the best in health and happiness? We think so, and that’s why we’ve created a revolutionary hemp herbal liver tonic, specifically designed to support overall health. your dog and cat.<br><br><strong>Natural healing power:</strong> Our tonic harnesses the incredible healing power of hemp, a natural herbal ingredient known for its soothing and balancing properties. It is packed with advantageous substances that can encourage rest, assist in maintaining a healthy inflammatory response, and offer soothing support for a number of biological functions.<br><br><strong>Good liver:</strong> A healthy liver is essential for metabolism, digestion, and detoxification. A carefully chosen herbal blend supports and nourishes the liver encourages maximum performance and helps the body remove impurities.<br><br><strong>Comprehensive Harmony:</strong> We understand that a balanced and harmonious system is essential for the vitality of your pets. Our formulas are designed to work holistically, addressing many aspects of your pet’s health, from digestion to immune function, while promoting feelings of calm and well-being.<br><br>Perfect for picky eaters: Worried your furry friend won’t like it? Do not be afraid ! Our hemp herbal liver tonic is carefully crafted for an irresistible delicious taste, making it the treat your pet looks forward to. No more struggling with unpalatable pills or supplements.<br>&nbsp;</p><h3>Why Choose Our Liver Tonic?</h3><p><strong>Superior quality:</strong> We use only the best ingredients, which are clearly sourced and lab tested. Your pet deserves the best and we are committed to providing it.<br><br><strong>Veterinarian approved:</strong> Our formula was developed in consultation with veterinarians, ensuring it is safe, effective and beneficial for your furry companions.<br><br><strong>Providing peace of mind:</strong> We provide the products that are made in a state-of-the-art facility to the highest standards, giving you confidence that your pet is receiving the best care possible.<br><br>Give your pet the ultimate gift of health!<br><br>Join the thousands of pet parents who trust our hemp herbal liver tonic to keep their furry friends happy and healthy. and full of life. Order now and experience the positive difference it can make to your pet’s health! After all, a healthy companion is a happier companion!</p><h4>Ingredients &amp; Analysis</h4><p>Proprietary Ayurvedic Formulation infused with hemp seed oil</p>', 230, 207, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 'dog', '1', 'The Best Liver Tonic and Syrup For Dogs and Puppies', 'Liver Tonic For Dogs', 'Our carefully curated selection of liver syrup for dogs and puppies is designed to support their well-being and vitality. Choose the right tonic for your furry friend today.', 'uploads/product/1714629126.webp', NULL, NULL, NULL, '2024-05-02 09:52:06', '2024-07-03 14:08:43'),
(29, 1, 0, 0, '123', 'Nurture Puppy Dog Food For Large & Giant Breeds', 'nurture-puppy-dog-food-for-large-giant-breeds', 'Wag & Love', '<ul><li>Dutch Chicken Delight: Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption. Perfectly suited to support your puppy’s rapid growth.</li><li>Veggies &amp; Ayurvedic Herbs: Nurture your pup’s development with a blend of wholesome veggies and Ayurvedic herbs. Abounding in antioxidants, vitamins, and minerals, this combination propels your puppy’s growth and well-being.</li><li>Purely Natural Goodness: Say no to artificial colors, preservatives, and flavors. Our commitment to purity ensures that your puppy enjoys a GMO-free diet, contributing to a lifetime of vitality and vigor.</li><li>Innovative “Mini-Pack” Marvel: Experience freshness like never before with our revolutionary “Mini-Pack.” Adorned with a sleek metal coating and N2/CO2 flushing, this packaging preserves nutrients, enhances palatability, and makes storage a breeze—ensuring every meal is a delightful treat.</li><li>Opt for our Nurture Puppy blend, where the exceptional richness of Dutch chicken, the nourishment of veggies and Ayurvedic herbs, the dedication to natural goodness, and the innovation of the “Mini-Pack” combine to lay a strong foundation for your puppy’s healthy and happy futu</li></ul>', '<h4>&nbsp;</h4><figure class=\"table\"><table><tbody><tr><td><p>&nbsp;</p><ul><li>Dutch Chicken Delight: Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption. Perfectly suited to support your puppy’s rapid growth.</li><li>Veggies &amp; Ayurvedic Herbs: Nurture your pup’s development with a blend of wholesome veggies and Ayurvedic herbs. Abounding in antioxidants, vitamins, and minerals, this combination propels your puppy’s growth and well-being.</li><li>Purely Natural Goodness: Say no to artificial colors, preservatives, and flavors. Our commitment to purity ensures that your puppy enjoys a GMO-free diet, contributing to a lifetime of vitality and vigor.</li><li>Innovative “Mini-Pack” Marvel: Experience freshness like never before with our revolutionary “Mini-Pack.” Adorned with a sleek metal coating and N2/CO2 flushing, this packaging preserves nutrients, enhances palatability, and makes storage a breeze—ensuring every meal is a delightful treat.</li></ul><p>Opt for our Nurture Puppy blend, where the exceptional richness of Dutch chicken, the nourishment of veggies and Ayurvedic herbs, the dedication to natural goodness, and the innovation of the “Mini-Pack” combine to lay a strong foundation for your puppy’s healthy and happy future.</p></td></tr></tbody></table></figure><h4>Ingredients &amp; Analysis</h4><figure class=\"table\"><table><tbody><tr><td><p>Dutch Chicken Meat, Corn, Barley, Chicken Fat, Rice, Carob Pods, Dried Beet Pulp (Prebiotic), Flax Seed, Brewer’s Yeast (Probiotic), Norwegian Salmon Oil, Dried Eggs, Basil, Thyme, Glucosamine, Chondroitin</p><p>Analytical Constituents:</p><p>&nbsp;</p><ul><li>Crude Protein 32 %</li><li>Crude Fat 18 %</li><li>Crude Fibre 2.5 %</li><li>Calcium 1.0 %</li><li>Phosphorus 0.8 %</li><li>Total Omega-3,6 4.4 %</li><li>EPA 0.1 %</li><li>DHA 0.1 %</li><li>Energy (Kcal/Kg ME) 3935</li></ul></td></tr></tbody></table></figure><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td></tr></tbody></table></figure>', 1490, 1341, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Adult Vigour Dog Food For Large & Giant Breeds', 'Adult Vigour Dog Food', 'Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption.', 'uploads/product/1714629405.webp', NULL, NULL, NULL, '2024-05-02 09:56:45', '2024-07-15 11:22:25'),
(30, 1, 0, 0, NULL, 'Adult Vigour Dog Food For Large & Giant Breeds', 'adult-vigour-dog-food-for-large-giant-breeds-chicken-carrot-cranberry', 'Wag & Love', '<figure class=\"table\"><table><tbody><tr><td><ul><li>Holistic Nutrition: Embrace the power of nature with a blend that includes the goodness of fruits, Ayurvedic herbs, and prebiotics. Our formula goes beyond mere sustenance, providing your dog with holistic nourishment for a vibrant life.</li><li>Healthy Heart: Care for your dog’s heart with a touch of excellence. Packed with Salmon Oil, L-Carnitine, and Taurine, our recipe supports cardiovascular well-being, ensuring your dog’s heart stays strong and active.</li><li>Antioxidant Boost: Elevate health with antioxidants, herbs, cranberry, and prebiotics. This combination promotes overall well-being by bolstering the immune system and aiding in digestion.</li><li>Joint Support: Ensure your dog’s mobility with the goodness of Glucosamine and Chondroitin. Our blend promotes joint health, allowing your dog to enjoy an active lifestyle for years to come.</li></ul></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><td><ul><li>Holistic Nutrition: Embrace the power of nature with a blend that includes the goodness of fruits, Ayurvedic herbs, and prebiotics. Our formula goes beyond mere sustenance, providing your dog with holistic nourishment for a vibrant life.</li><li>Healthy Heart: Care for your dog’s heart with a touch of excellence. Packed with Salmon Oil, L-Carnitine, and Taurine, our recipe supports cardiovascular well-being, ensuring your dog’s heart stays strong and active.</li><li>Antioxidant Boost: Elevate health with antioxidants, herbs, cranberry, and prebiotics. This combination promotes overall well-being by bolstering the immune system and aiding in digestion.</li><li>Joint Support: Ensure your dog’s mobility with the goodness of Glucosamine and Chondroitin. Our blend promotes joint health, allowing your dog to enjoy an active lifestyle for years to come.</li><li>Shining Coat: Radiance comes naturally with our blend enriched in Omega-3 &amp; 6, Zinc, and Selenium. Give your dog’s coat the attention it deserves, and watch as it gleams with health.</li><li>Naturally Hypoallergenic: Opt for single-sourced meat without beef or pork. This choice reduces allergenic potential and sets the stage for a diet that’s easy on sensitive tummies.</li><li>Grain-Free: Say no to common allergens. Our formula is free from corn, wheat, soy, rice, or other grains, allowing your dog to indulge in delicious, grain-free goodness.</li><li>Nature’s Goodness: Embrace authenticity with no synthetic colors, preservatives, or flavors. Every bite is a taste of nature’s pure goodness.</li><li>Discover the essence of premium nutrition tailored to your adult dog’s needs. Our blend encompasses all these unique features, nurturing your dog’s vitality, longevity, and happiness.</li></ul><p>Fed directly as per feeding chart</p></td></tr></tbody></table></figure><h4>Ingredients &amp; Analysis</h4><figure class=\"table\"><table><tbody><tr><td><p>Boneless Fresh Dutch Chicken (20%), Dried Chicken (20%), Peas, Sweet Potato, Potato, Beet Pulp, Chicken Fat, Pure Norwegian Salmon Oil, Carob Pods, Flax Seed, Egg Powder, Brewer’s Yeast, (Chelated) Minerals, Inulin (Source Of FOS), Carrot (0.2%), Nettle, Echinacea, Apple, Mango, Banana, Thyme, Basil, Spirulina, Cranberry (0.1%), Celery, Glucosamine (0.03%), Chondroitin (0.03%), Yucca Extract.</p><p><strong>Analytical Constituents:</strong></p><p>Crude Protein 26 % Crude Fat 13 % Crude Fibre 5.3 % Calcium 1.3 % Phosphorus 1.1 % Total Omega-3,6 2.5 % EPA 0.2 % DHA 0.3 % Energy (Kcal/Kg ME) 3320</p></td></tr></tbody></table></figure>', 799, 719, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Adult Vigour Dog Food For Large & Giant Breeds', 'Peas Sweet Potato Potato Beet Pulp Chicken', 'Our blend promotes joint health, allowing your dog to enjoy an active lifestyle for years to come', 'uploads/product/1714630667.webp', NULL, NULL, NULL, '2024-05-02 10:17:47', '2024-07-03 14:12:00'),
(31, 1, 0, 0, NULL, 'Adult Vigour Dog Food For Small & Medium Breeds', 'adult-vigour-dog-food-for-small-medium-breeds-chicken-carrot-cranberry', 'Wag & Love', '<p>Introducing the specifically prepared Adult Vigor Dog Food for small and medium-sized breeds. This meticulously developed combination, offered in a handy 7 kg pack, is made to provide the best nourishment for dogs over the age of 12 months. This recipe emphasizes quality and flavor and includes a wide variety of healthy ingredients to enhance the general health and vigor of your pet.</p>', '<p>Introducing the specifically prepared Adult Vigor Dog Food for small and medium-sized breeds. This meticulously developed combination, offered in a handy 7 kg pack, is made to provide the best nourishment for dogs over the age of 12 months. This recipe emphasizes quality and flavor and includes a wide variety of healthy ingredients to enhance the general health and vigor of your pet.</p><h4>Product Details:</h4><p><strong>Weight:</strong> 7 kg</p><p><strong>Type:</strong> Suitable for dogs above 12 months of age</p><p><strong>Care:</strong> Store in a cool and dry place. Avoid direct sunlight and contact with moisture.</p><h4>Ingredients &amp; Analysis</h4><ul><li>De-boned Fresh Dutch Chicken</li><li>Dried Chicken Peas</li><li>Chicken Fat</li><li>Potato</li><li>Sweet Potato</li><li>Pure Salmon Oil</li><li>Carob Pods</li><li>Flax Seed</li><li>Brewer’s Yeast</li><li>Egg Powder</li><li>(Chelated) Minerals</li><li>Inulin (Source Of FOS)</li><li>Carrot (0.2%)</li><li>Nettle</li><li>Echinacea</li><li>Apple</li><li>Mango</li><li>Banana</li><li>Thyme</li><li>Basil</li><li>Spirulina</li><li>Cranberry (0.1%)</li><li>Celery</li><li>Glucosamine (0.03%)</li><li>Chondroitin (0.03%)</li><li>Yucca Extract.</li></ul><p>Buy now from Remedio today.</p>', 849, 764, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Adult Vigour Dog Food For Small & Medium Breeds', 'Adult Vigour Dog Food', 'A premium dog food, carefully crafted for your furry friend&#039;s vigour and vitality. With a balanced composition that reflects our commitment to quality.', 'uploads/product/1714631503.webp', NULL, NULL, NULL, '2024-05-02 10:31:43', '2024-07-03 14:26:32');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_type_id`, `sku`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `weight_unit`, `weight`, `length_unit`, `length`, `date_available`, `height`, `width`, `min_quantity`, `tax`, `trending`, `featured`, `seasonal_special`, `status`, `offer_type`, `is_public`, `meta_title`, `meta_keyword`, `meta_description`, `featured_image`, `video_1`, `video_2`, `video_3`, `created_at`, `updated_at`) VALUES
(32, 1, 0, 0, NULL, 'Puppy Bloom Dog Food For Large Breeds', 'puppy-bloom-dog-food-for-large-breeds', 'Wag & Love', '<figure class=\"table\"><table><tbody><tr><td><p>Introducing our premium puppy food blend, carefully crafted to nurture your furry friend’s growth and vitality. With a balanced composition that reflects our commitment to quality, your puppy is in for a truly exceptional culinary experience.</p><ul><li>Boneless Dutch Chicken: Unleash the power of lean protein with our top-grade boneless Dutch chicken. Not only does it provide a delicious taste, but it also ensures easy digestion and maximum nutrient absorption—ideal for your pup’s rapid development.</li><li>Abundant Fruits, Veggies &amp; Exotic Herbs: Enriched with a vibrant array of antioxidants, over 20 essential vitamins, and vital minerals, our formula champions your puppy’s growth and overall well-being. This curated medley of natural ingredients lays the foundation for a healthy and happy life.</li><li>100% Natural Goodness: We take pride in what we exclude just as much as what we include. Say goodbye to artificial colors, preservatives, and flavors. Our GMO-free recipe promotes longevity, ensuring your pup enjoys more joyful and active years by your side.</li></ul></td></tr></tbody></table></figure>', '<figure class=\"table\"><table><tbody><tr><td><p>Introducing our premium puppy food blend, carefully crafted to nurture your furry friend’s growth and vitality. With a balanced composition that reflects our commitment to quality, your puppy is in for a truly exceptional culinary experience.</p><ul><li>Boneless Dutch Chicken: Unleash the power of lean protein with our top-grade boneless Dutch chicken. Not only does it provide a delicious taste, but it also ensures easy digestion and maximum nutrient absorption—ideal for your pup’s rapid development.</li><li>Abundant Fruits, Veggies &amp; Exotic Herbs: Enriched with a vibrant array of antioxidants, over 20 essential vitamins, and vital minerals, our formula champions your puppy’s growth and overall well-being. This curated medley of natural ingredients lays the foundation for a healthy and happy life.</li><li>100% Natural Goodness: We take pride in what we exclude just as much as what we include. Say goodbye to artificial colors, preservatives, and flavors. Our GMO-free recipe promotes longevity, ensuring your pup enjoys more joyful and active years by your side.</li><li>Revolutionary “Mini-Pack” Innovation: Elevating freshness to a whole new level, our revolutionary “Mini-Pack” boasts a sleek metal coating and the magic of N2/CO2 flushing. This cutting-edge packaging not only preserves nutrients but also enhances palatability. Plus, it’s incredibly convenient for storage, ensuring that every meal is as delightful as the first.</li><li>Crafted with Love: Our commitment to your puppy’s health and happiness shines through every kibble. With 55% chicken and animal ingredients, 45% fruits, veggies, herbs, and supplements, and a 100% dose of love, this blend encapsulates the essence of premium nutrition, setting the stage for a bond-filled journey of companionship</li></ul><p>&nbsp;</p><p>Feed directly as per feeding chart</p></td></tr></tbody></table></figure><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><figure class=\"table\"><table><tbody><tr><td><p>De-Boned Dutch Fresh Chicken (20%), Dried Chicken (20%), Peas, Chicken Fat, Sweet Potato Norwegian Salmon Oil, Carob Pods, Flax Seed, Brewer’s Yeast, Egg Powder, (Chelated) Minerals, Inulin (Source Of FOS), Carrot, Nettle, Echinacea, Apple (0.15%), Mango, Banana, Thyme (0.15%), Basil, Spirulina, Cranberry, Celery, Glucosamine (0.02%), Chondroitin (0.02%), Yucca.</p><p><strong>Analytical Constituents:</strong> Crude Protein 29 % Crude Fat 17 % Crude Fibre 3.6 % Calcium 1.1 % Phosphorus 0.9 % Total Omega-3,6 3.4 % EPA 0.3 % DHA 0.4 % Energy (Kcal/Kg ME) 3680</p></td></tr></tbody></table></figure>', 890, 801, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Puppy Bloom Dog Food For Large Breeds', 'Bloom Dog Food', 'A premium puppy food blend, carefully crafted to nurture your furry friend\'s growth and vitality. With a balanced composition that reflects our commitment to quality.', 'uploads/product/1714631808.webp', NULL, NULL, NULL, '2024-05-02 10:36:48', '2024-07-03 14:27:04'),
(33, 1, 0, 0, NULL, 'Puppy Bloom Dog Food For Small Breeds', 'puppy-bloom-dog-food-for-small-breeds', 'Wag & Love', '<p>Wag &amp; Love’s Fresh Boneless Chicken, Apple &amp; Thyme formula will give your small breed puppy the most fantastic start in life. This dry food, specially made for puppies throughout critical growth periods, offers many advantages.<br><br><strong>Immunity shield:</strong> This recipe offers top-notch protein sources that support the immune system. It is packed with boneless fresh chicken and dried chicken. Vitamins, minerals, and antioxidants are added by natural ingredients like carrot and nettle, further boosting your dog’s immune system as a whole.<br><br><strong>Shining coat:</strong> Your pet dog deserves a shiny coat. Pure salmon oil, flax seed, and chicken fat, all excellent sources of omega-3 and omega-6 fatty acids, are used by Wag &amp; Love to accomplish this. Carrots, basil, and cranberries are antioxidant-rich foods that guard against oxidative damage and promote a healthy, lustrous coat.<br><br><strong>Agile puppy:</strong> A developing puppy needs to improve their muscles. With boneless fresh chicken and dried chicken included in this protein-rich mix, vigorous and agile growth is supported. To keep your dog active and vibrant, additional glucosamine and chondroitin support joint health and mobility.</p>', '<p>Wag &amp; Love’s Fresh Boneless Chicken, Apple &amp; Thyme formula will give your small breed puppy the most fantastic start in life. This dry food, specially made for puppies throughout critical growth periods, offers many advantages.<br><br><strong>Immunity shield:</strong> This recipe offers top-notch protein sources that support the immune system. It is packed with boneless fresh chicken and dried chicken. Vitamins, minerals, and antioxidants are added by natural ingredients like carrot and nettle, further boosting your dog’s immune system as a whole.<br><br><strong>Shining coat:</strong> Your pet dog deserves a shiny coat. Pure salmon oil, flax seed, and chicken fat, all excellent sources of omega-3 and omega-6 fatty acids, are used by Wag &amp; Love to accomplish this. Carrots, basil, and cranberries are antioxidant-rich foods that guard against oxidative damage and promote a healthy, lustrous coat.<br><br><strong>Agile puppy:</strong> A developing puppy needs to improve their muscles. With boneless fresh chicken and dried chicken included in this protein-rich mix, vigorous and agile growth is supported. To keep your dog active and vibrant, additional glucosamine and chondroitin support joint health and mobility.<br><br><strong>Small-breed specific nutrition:</strong> Wag &amp; Love created this food in response to the special requirements of tiny breed puppies, taking into account their greater metabolic rate and smaller stomach capacity. It provides a well-rounded combination of nutrients designed for their critical growth phases.<br><br><strong>Easy digestion:</strong> Peas and sweet potato are two carbohydrate sources in this recipe that are gentle on your dog’s delicate abdomen. Brewer’s yeast, beet pulp, and inulin (a source of FOS) function as prebiotics and probiotics, promoting healthy gut flora and assisting in digestion.<br><br>With this carefully designed formula, Wag &amp; Love puts your dog’s health and well-being first. Each of the 14 packages in the bag weighs 7.5 kilograms, so you can be sure your animal friend will have a bright future. Customized nutrition is the perfect gift for your dog. Buy today from Remediovet!<br>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><figure class=\"table\"><table><tbody><tr><td><p>De-Boned Dutch Fresh Chicken (20%), Dried Chicken (20%), Peas, Chicken Fat, Sweet Potato, Beet Pulp, Pure Norwegian Salmon Oil, Carob Pods, Flax Seed, Egg Powder, Brewer’s Yeast, (Chelated) Minerals, Inulin (Source Of FOS), Carrot, Nettle, Echinacea, Apple (0.15%), Mango, Banana, Thyme (0.15%), Basil, Spirulina, Cranberry, Celery, Glucosamine (0.02%), Chondroitin (0.02%), Yucca Extract. Analytical Constituents</p><ul><li>Crude Protein – 31 %</li><li>Crude Fat – 19 %</li><li>Crude Fibre – 4.8 %</li><li>Calcium – 1.2 %</li><li>Phosphorus – 1.0 %</li><li>Total Omega 3 &amp; 6 – 3.8 %</li><li>EPA – 0.2 %</li><li>DHA – 0.3 %</li><li>Energy (Kcal/Kg ME) – 3615</li></ul></td></tr></tbody></table></figure>', 890, 799, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Puppy Bloom Dog Food For Small Breeds', 'Puppy Bloom Dog Food', 'our premium puppy food blend is carefully crafted to nurture your furry friend&#039;s growth and vitality. A truly exceptional culinary experience for your puppy', 'uploads/product/1714632513.webp', NULL, NULL, NULL, '2024-05-02 10:48:33', '2024-07-03 14:27:30'),
(34, 1, 0, 0, NULL, 'Cake mix for dogs', 'cake-mix-for-dogs', 'Pupcake Factory', '<p>Introducing our delicious pet-friendly cake premix, specially designed for celebrations and special moments for your four-legged friends.</p><p>Main features:</p><ul><li>Tail wagging flavor:&nbsp;Our Premix comes in a variety of flavors that your pet will love. Choose from delicious treats like chicken, beef, salmon, or peanut butter to suit your pet’s taste buds.</li><li>Healthy ingredients:&nbsp;We understand the importance of nutrition for your pet. That’s why our premix is ​​made with healthy, pet-safe ingredients. You won’t find any harmful additives or artificial flavors here.</li><li>Easy to bake:&nbsp;Baking your pet’s cake has never been easier! Simply mix the premix with water, pour into the cake pan and bake. It’s a hassle-free process that anyone can master.</li></ul>', '<p>Introducing our delicious pet-friendly cake premix, specially designed for celebrations and special moments for your four-legged friends.<br>Main features:</p><ul><li>Tail wagging flavor:&nbsp;Our Premix comes in a variety of flavors that your pet will love. Choose from delicious treats like chicken, beef, salmon, or peanut butter to suit your pet’s taste buds.</li><li>Healthy ingredients:&nbsp;We understand the importance of nutrition for your pet. That’s why our premix is ​​made with healthy, pet-safe ingredients. You won’t find any harmful additives or artificial flavors here.</li><li>Easy to bake:&nbsp;Baking your pet’s cake has never been easier! Simply mix the premix with water, pour into the cake pan and bake. It’s a hassle-free process that anyone can master.</li><li>Safe for all breeds:&nbsp;Our baking mixes are suitable for dogs, cats and other small animals. It’s a versatile treat that all your furry companions can enjoy.</li><li>Celebrating special occasions:&nbsp;Whether it’s your pet’s birthday, adoption day or just a day for them to show more love, our pre-mixed mix will help you create a special moment to celebrate. cherish together.</li><li>Customizable:&nbsp;Get creative with your pet’s cake by adding pet-friendly toppings like yogurt, carrots or some of their favorite whipped cream. Personalize it to make your pet’s celebration truly unique.</li><li>Perfect texture:&nbsp;The result is a moist and soft cake that is easy for animals to eat and digest. No need to worry about hard or crumbly textures.</li><li>Safe and reliable:&nbsp;Remediovet brand is committed to your pet’s health and happiness. We adhere to strict safety and quality standards, ensuring your pet gets the best.</li></ul><p>Give your beloved pet a treat with our pet-friendly premix. Celebrate important moments with a delicious homemade cake that will feature wagging tails and wagging mustaches with delight. Because pets are part of the family and they deserve the best!</p><p>Available Flavours:</p><ul><li>Chicken</li><li>Chicken Liver</li><li>Banana Peanut Butter</li><li>Carrot Peanut Butter</li></ul><h4>Ingredients &amp; Analysis</h4><ul><li>No Sugar</li><li>No Salt</li><li>No Chemical</li><li>No Preservatives</li><li>All Natural</li><li>Gluten Free</li><li>Dairy Free</li><li>1 Year Shelf Life</li></ul>', 399, 379, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Delicious Birthday Cake Mix for Dogs', 'Cake Mix for Dogs', 'Celebrate your furry friend\'s birthday with a delightful puppy cake made especially for dogs. Discover the perfect dog birthday cake locally and treat your pup to a tasty and memorable celebration.', 'uploads/product/1714632981.webp', NULL, NULL, NULL, '2024-05-02 10:56:21', '2024-07-03 14:27:53'),
(35, 1, 5, 27, NULL, 'The ultimate portable water and food bowl for pets', 'the-ultimate-portable-water-and-food-bowl-for-pets', 'Petique', '<p>The ultimate portable water and food bowl is travel ready with its dual collapsible bowls and compact storage design. Whether you’re going on a hike or off to brunch, you can effortlessly provide meals to your pets anywhere you go. Its double bowl design works as a full meal with food and water or feeding two furry friends at the same time. Durable and reusable, our foldable bowls can be painlessly detached to be rinsed as usual or wiped clean after each use. You can now provide your pet with basic necessities without the clunk, clutter, and hassle!</p>', '<p>The ultimate portable water and food bowl&nbsp;is travel ready with its dual collapsible bowls and compact storage design. Whether you’re going on a hike or off to brunch, you can effortlessly provide meals to your pets anywhere you go. Its double bowl design works as a full meal with food and water or feeding two furry friends at the same time. Durable and reusable, our foldable bowls can be painlessly detached to be rinsed as usual or wiped clean after each use. You can now provide your pet with basic necessities without the clunk, clutter, and hassle!</p><p>FEATURES</p><ul><li>Easily packed and carried along for any trip</li><li>Durable and reusable</li><li>Foldable</li></ul><h4>Ingredients &amp; Analysis</h4><ul><li>Tested and passed FDA requirements for Non-toxic pet safe materials</li><li>Water capacity&nbsp;– Holds up to 700 ml</li><li>Food Capacity – Holds up to 750 grams</li></ul>', 2499, 1699, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Premium Quality Feeding Bowl for Dogs', 'Feeding Bowl for Dogs', 'Discover the ideal dog food and water bowl for pets that combine functionality and style. Make every bite and sip enjoyable for your canine companion.', 'uploads/product/1716796037.webp', NULL, NULL, NULL, '2024-05-03 08:15:05', '2024-07-03 14:28:26'),
(38, 1, 5, 10, NULL, 'Critter Color – Temporary Dog Fur Coloring', 'critter-color-temporary-dog-fur-coloring', 'Warren London', '<p>Introducing our Exquisite Dog Fur Color range – Critter Color by Warren London USA – the ultimate way to accentuate your furry friend’s natural beauty and express their unique personality!</p>', '<p>Introducing our Exquisite Dog Fur Color range – Critter Color by Warren London USA – the ultimate way to accentuate your furry friend’s natural beauty and express their unique personality!</p><ol><li>Unleash their true colors:&nbsp;Our specially formulated dog coat color is designed to be safe, non-toxic and gentle on your beloved pet’s coat. Choose from a range of vibrant colors that complement their natural tones, or choose a bold, eye-catching look that catches the eye wherever you go.</li><li>Improvements suitable for pets:&nbsp;Our dog color products are vet approved and created for your pet’s health. They are easy to use, dry quickly and are easy to wash, keeping your dog comfortable and allowing you to change up your style as often as you like.</li><li>Special occasions and daily charms:&nbsp;Whether it’s a birthday, holiday or just a casual day when you want to spruce up your puppy’s look, our dog coat colors are perfect for any occasion. Get ready for endless compliments and photo-worthy moments that you will cherish forever.</li><li>Show your personality:&nbsp;Just like we express ourselves through fashion and hairstyles, why not let your furry friend show off their unique personality with a pop of color? From trendy pastels to bold neon colors, you can create a style that’s as unique as your child’s personality.</li><li>Engage &amp; Have Fun:&nbsp;Applying our dog coat colors can be a fun bonding experience for you and your puppy. It’s a chance to pamper them, show them love and have fun together. Plus, it’s a conversation that starts immediately when you’re out for a walk or at the dog park, making the two of you new friends!</li><li>Paw-completely safe:&nbsp;Our dog color products are manufactured to the highest quality standards, ensuring the safety of your pet’s skin and coat. We are committed to providing products you can trust and that’s why pet owners around the world choose us.</li><li>Join the trend:&nbsp;Dog coat color isn’t just a trend; It’s a way to celebrate your pet’s personality and add a little excitement to your life. Whether you want a subtle pop of color or a bold makeup look, our products are the perfect choice.</li></ol><p>Don’t wait! Enhance your dog’s game style with our Dog Color products and watch them shine like a star. Order now and get ready for a colorful journey of endless fun, love and tail wagging!</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>H20, Carbopol, TEA, Caprylyl Glycol, Phenoxyethanol, Hexylene, Polysobsorbate 20,&nbsp;Color</p>', 1499, 1349, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Critter Color – Temporary Dog Coat Coloring', 'Critter Color for Dog', 'Our specially formulated dog coat color is designed to be safe, non-toxic and gentle on your beloved pet\'s coat. Choose from a range of vibrant colors.', 'uploads/product/1714712336.webp', NULL, NULL, NULL, '2024-05-03 08:58:56', '2024-07-03 14:28:59'),
(39, 1, 5, 10, NULL, 'Pawdicure Dog Nail Polish', 'pawdicure-dog-nail-polish', 'Warren London', '<p>Introducing Pawdicure Polish Pens – Made in USA The perfect nail polish color for stylish pets! Are you tired of your hairy baby’s nails looking monotonous and dull? Do you want to add a little charm to your pet’s paws? Looking for a safe, non-toxic way to care for your furry friend?</p>', '<p>Introducing Pawdicure Polish Pens – Made in USA</p><p>The perfect nail polish color for stylish pets!</p><p>🐾 Are you tired of your hairy baby’s nails looking monotonous and dull?<br>🐶 Do you want to add a little charm to your pet’s paws?<br>🐱 Looking for a safe, non-toxic way to care for your furry friend?</p><p>Look no further! Pawdicure is a premium nail polish designed specifically for dogs and cats, bringing fashion and fun to your pet’s life.</p><ol><li>Vivid colors:<br>PawPolish offers a variety of trendy colors to suit any style and any occasion. From classic reds and pretty pinks to cool blues and deep purples, our palette has it all. Mix and match for a truly unique look!</li><li>Pet-friendly formula:<br>We understand the importance of safety when it comes to your pets. That’s why PawPolish is formulated with non-toxic, pet-safe ingredients. Our water-based formula is gentle on nails, ensuring a pleasant, carefree experience for you and your furry friend.</li><li>Ease of construction:<br>Pawdicure has a quick-drying formula that is easy to apply. The convenient applicator brush provides even, smooth coverage, so you can achieve professional-looking results without the hassle.</li><li>Trendy and fun:&nbsp;Whether it’s a special event, a pet get-together or just a day to show off your pet’s personality, PawPolish will add extra charm and appeal to your pet’s paws. Featured with claws that match your pet’s unique style.</li><li>Special Occasion:Adopting Pawdicure can be a fun bonding experience for you and your furry friend. Watch your pet’s eyes light up with excitement, knowing they’re being loved and cared for a little more.</li><li>Perfect gift: Pawdicure&nbsp;is an ideal gift for animal lovers! Share the joy of pampering with other pet owners and let their pets join in the fun of fashion. Join the PawPolish movement today and give your pet the stylish nails they deserve. Make a statement, show off your pet’s personality and create lasting memories with Pawdicure!</li></ol><h4>Ingredients &amp; Analysis</h4><p>Water, Acrylates, Copolymer, Propylene Glycol, Propylene Glycol Butyl Ether, Dipropylene Glycol Butyl Ether, Trimthyl Pentanyl Disobutyrate, Sodium PCA, Ammonium Hydroxide, Butoxyethanol, Alkylaryl Polyether, Glutaronite</p>', 1050, 999, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Pawdicure Dog Nail Polish Pens', 'Dog Nail Polish', 'Do you want to add a little charm to your pet’s paws? Look no further! Pawdicure is a premium nail polish designed specifically for dogs and cats, bringing fashion and fun to your pet’s life.', 'uploads/product/1714712866.webp', NULL, NULL, NULL, '2024-05-03 09:07:46', '2024-07-03 14:30:03'),
(42, 1, 4, 21, NULL, 'Herbal Tonic For Kidney & Urinary Tract Infection in Dogs & Cats', 'herbal-tonic-for-kidney-urinary-tract-infection-in-dogs-cats', 'Petique', '<p>Introducing our breakthrough herbal tonic, specially formulated to improve kidney function and reduce urinary tract infections in dogs and cats!</p>', '<p>Introducing our breakthrough herbal tonic, specially formulated to improve kidney function and reduce urinary tract infections in dogs and cats!</p><ol><li>Natural healing power:&nbsp;Our tonic harnesses the power of proven herbal ingredients, carefully selected to promote overall kidney health and combat urinary tract problems in your beloved pet. Say goodbye to harsh chemicals and embrace the gentleness and effectiveness of nature.</li><li>Fight urinary tract infections:&nbsp;Is your hairy baby upset from a urinary tract infection? Our herbal blend is designed to target these infections at the root, providing relief for your furry friend and peace of mind for you, the pet parent.</li><li>Optimize kidney function:&nbsp;The kidneys play an important role in your pet’s overall health. Our tonic works to support and optimize kidney function, ensuring that waste products are effectively filtered out of the body and maintaining proper hydration levels.</li><li>Fun and active animals:&nbsp;Witness the joy of fun, active pets once again! Our herbal tonic not only treats existing kidney and urinary problems but also helps prevent future complications, allowing your pet to live a vibrant and energetic life. .</li><li>Comprehensive care:&nbsp;We understand that your pet is a lovely member of your family who deserves the best care possible. Our herbal toners are a natural extension of that care, providing comprehensive support in line with your commitment to their well-being.</li><li>Veterinarian approved:&nbsp;Our supplements have received approval from leading veterinarians who have recognized the value of herbal treatments to improve the health of their pets. Trust their expertise and the power of our meticulously crafted formula.</li><li>Easy to manage:&nbsp;No need to grapple with pills or complicated diets. Our herbal tonic is designed to be easy to use, making it a stress-free addition to your pet’s daily routine.</li></ol><p>Take the initiative to choose for the health and well-being of your furry companion. Choose our herbal tonic to improve kidney function and reduce urinary tract infections. Your pet deserves the best, and we’re here to deliver!</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Proprietary Ayurvedic Formulation</p>', 349, 315, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Revitalize Your Dog\'s Health with a Premium Kidney Tonic', 'Kidney Tonic for Dog', 'Explore our range of kidney tonic for dogs, formulated to promote renal well-being and vitality. Our expert-recommended selection of supplements can help support your dog\'s kidney health, ensuring a happy and active life.', 'uploads/product/1714714715.webp', NULL, NULL, NULL, '2024-05-03 09:38:35', '2024-07-03 14:30:19'),
(43, 2, 29, 37, NULL, 'Calming Hemp Balm For Dogs & Cats', 'calming-hemp-balm-for-dogs-cats', 'Hempy Paws', '<p>Protects nose, skin and paws against elements such as ice, snow, hot surface, gravel, extreme temperatures etc.</p>', '<p>Why Choose Hemp Balm?</p><ul><li>Protects nose, skin and paws against elements such as ice, snow, hot surface, gravel, extreme temperatures etc.</li><li>Anti-bacterial</li><li>Anti-fungal</li><li>Made from premium organic hemp extracts</li><li>Natural and non-toxic ingredients,</li><li>Non-Allergenic</li><li>Soothes and moisturizes</li><li>Promotes overall pet wellness</li><li>Crafted with love for your furry family members</li></ul><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Hemp Seed Oil Honey Bee Wax Petroleum Jelly</p>', 599, 539, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Protect Your Pup\'s Feet with Premium Dog Paw Balm', 'Dog Paw Balm', 'Give your furry friend\'s paws the care they deserve with our selection of top-notch dog paw balm. Our balm for dogs and cats provides essential nourishment and relief from roughness to cracking.', 'uploads/product/1714714963.webp', NULL, NULL, NULL, '2024-05-03 09:42:43', '2024-07-19 10:23:28'),
(44, 1, 3, 11, NULL, 'Hemp Protein For Dogs & Cats', 'hemp-protein-for-dogs-cats', 'Petique', '<p>Rich in Protein: Just like humans, dogs need high-quality protein to grow. Hemp protein is an excellent source of plant-based protein, containing all the essential amino acids your dog needs to maintain strong muscles, support growth, and stay active.</p>', '<p>Here’s the ultimate health boost for your furry friend:</p><p>Hemp Protein for Dogs!</p><p>At Remediovet, we believe every dog ​​deserves the best nutrition to lead a vibrant, active life. That’s why in collaboration with hempy paws we’ve harnessed the incredible power of hemp to create a protein-rich superfood specially formulated for your canine companion. Here’s why our hemp protein is a must-have for any pet owner:</p><ol><li>Rich in Protein:&nbsp;Just like humans, dogs need high-quality protein to grow. Hemp protein is an excellent source of plant-based protein, containing all the essential amino acids your dog needs to maintain strong muscles, support growth, and stay active.</li><li>Gentle on digestion: Our hemp <strong>dog protein powder</strong> is easy to digest and gentle on your dog’s stomach. It’s a great choice for dogs with sensitive stomachs or food allergies, making it a great alternative to traditional animal protein.</li><li>Rich in nutrients:&nbsp;Hemp protein is more than just a protein, it’s a nutritional powerhouse! It is high in essential fatty acids, including omega-3 and omega-6, which help promote healthy skin, shiny coat and overall health.</li><li>Vitamins and minerals:&nbsp;Hemp protein is packed with vitamins and minerals, including B vitamins, vitamin E, magnesium and zinc, all of which contribute to your dog’s vitality and immune system.</li><li>Sustainably sourced:&nbsp;Our hemp protein is sourced from organically grown hemp, ensuring the highest quality and minimal environmental impact. It’s a good sustainable choice for your dog and the planet.</li><li>Easy to combine:&nbsp;Adding our hemp protein to your dog’s diet is easy. Simply sprinkle it on their regular food, blend it into homemade treats or blend it into a delicious, nutrient-rich smoothie.</li><li>Happy and healthy dogs:&nbsp;Countless pet owners have witnessed the positive effects of hemp protein on their dogs: increased energy, improved coat condition and a new zest for life!</li></ol><p>Give your furry friend the gift of health and happiness with our hemp <strong>protein for dogs</strong>. They will love the taste and you will love the results. Order now and watch your dog grow like never before!</p><h4>Ingredients &amp; Analysis</h4><p>100% Pure Hemp Protein – 300 grams</p>', 449, 399, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Natural Hemp Protein Powder for Dogs | Boost Your Pet\'s Health', 'Hemp Protein Powder for Dogs', 'Elevate your dog\'s nutrition with premium protein for dogs and cats. Our range of dog protein powder offers joint health, gut health, skin and coat health.', 'uploads/product/1714715276.webp', NULL, NULL, NULL, '2024-05-03 09:47:56', '2024-07-03 14:30:48'),
(45, 2, 29, 0, NULL, 'Hemp Seed Oil For Dogs & Cats', 'hemp-seed-oil-for-dogs-cats', 'Petique', '<p>Natural foods: Hemp seed oil is a pure, all-natural supplement derived from the seeds of the hemp plant. Packed with essential nutrients, it provides a complete and balanced source of omega-3 and omega-6 fatty acids, which are essential to maintaining your pet’s overall health.</p>', '<p>Introducing the perfect wellness solution for your four-legged friends:<br>Hemp Seed Oil for Dogs and Cats</p><ul><li>Natural foods:<br>Hemp seed oil is a pure, all-natural supplement derived from the seeds of the hemp plant. Packed with essential nutrients, it provides a complete and balanced source of omega-3 and omega-6 fatty acids, which are essential to maintaining your pet’s overall health.</li><li>Happy joints:<br>Our hemp seed oil helps support joint health in dogs and cats of all ages, making it ideal for young, active pets as well as older companions. Watch them move with new agility and ease and enjoy their playful antics for years to come.</li><li>Shiny coat, fresh skin:<br>Say goodbye to dull coat and dry, itchy skin! Hemp seed oil promotes a luxurious, shiny coat and healthy skin. The fatty acids in our oils are known for their moisturising properties, helping your pet feel as good as they look.</li><li>Cognitive support:<br>Keep your pet lively and engaged. Hemp seed oil contains compounds that support cognitive function, keeping your furry friends alert and responsive.</li><li>Comprehensive health:<br>We believe in holistic health and our hemp seed oil is a great addition to your pet’s balanced diet. It’s non-GMO, additive-free and safe for everyday use.</li><li>Tail wagging:<br>Our hemp seed oil is not only beneficial but delicious! Pets love the natural nutty flavour that makes it easy to administer – just mix it in their food or give it as a treat.</li><li>Quality:<br>Our hemp seed oil is carefully selected and rigorously tested to ensure the highest quality and purity. We put your pet’s health first, so you can be sure you’re giving them the best.</li><li>Give your four-legged friends the gift of happiness with our premium hemp seed oil. They will thank you with endless love, boundless energy, and a healthier, happier life. Order now and experience the outstanding benefits of hemp seed oil for your beloved pet!</li></ul><h4>Ingredients &amp; Analysis</h4><p>Broad Spectrum Hemp Seed Oil</p>', 490, 441, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Hemp Seed Oil For Dogs & Cats', 'Hemp Seed Oil For Dogs', 'Promote appetite and improve digestion, and reduce joint pain and inflammation of your dogs and cats with our vet-approved pure hemp seed oil.', 'uploads/product/1714715740.webp', NULL, NULL, NULL, '2024-05-03 09:55:40', '2024-07-03 14:31:04'),
(46, 1, 3, 7, NULL, 'Hemp Gravy For Dogs With Real Chicken & Chicken Liver Chunks', 'hemp-gravy-for-dogs-with-real-chicken-chicken-liver-chunks', 'Petique', '<p>Are you looking for a way to elevate your pup’s mealtime experience? We’ve got something truly special for your four-legged family member. Our Hemp-Infused Gravy is a tail-wagging, drool-inducing culinary masterpiece that your dog will absolutely adore.</p>', '<p>Introducing the Ultimate Delight for Your Furry Friend: Hemp-Infused Gravy with Real Chicken and Chicken Liver!</p><p>Are you looking for a way to elevate your pup’s mealtime experience? We’ve got something truly special for your four-legged family member. Our Hemp-Infused Gravy is a tail-wagging, drool-inducing culinary masterpiece that your dog will absolutely adore.</p><p>Holistic Goodness: Our gravy is enriched with the natural goodness of hemp, known for its potential to promote overall wellness in dogs. Hemp contains essential fatty acids, vitamins, and minerals that support a healthy coat, skin, and immune system, making it the perfect addition to your pup’s diet.</p><p>Real Chicken and Chicken Liver: We believe in providing the best for your dog, which is why our gravy is crafted with real, high-quality chicken and chicken liver. These protein-packed ingredients not only tantalize your pup’s taste buds but also provide the essential nutrients needed for muscle development and energy.</p><p>Irresistible Flavor: Imagine the aroma of savory chicken combined with the rich, umami goodness of chicken liver – a combination that will have your dog licking their bowl clean every time. Our gravy turns every meal into a gourmet delight that your dog will look forward to with eager anticipation.</p><p>Easy to Use: Preparing a sumptuous meal for your dog has never been easier. Simply pour our Hemp-Infused Gravy over your dog’s regular food, and watch as they dig in with pure joy. It’s the perfect way to enhance the flavor of dry kibble or to make homemade meals even more delectable.</p><p>Tailored Nutrition: We understand that every dog is unique. That’s why our gravy complements a variety of diets and can be a fantastic addition to any dog’s daily regimen. Whether you have a playful pup, a sophisticated senior, or a furry friend with specific dietary needs, our gravy fits right in.</p><p>Made with Love and Care: Our Hemp-Infused Gravy is crafted with love and care, ensuring the highest quality standards for your dog’s well-being. We prioritize their health and happiness, making this gravy a guilt-free treat you can feel great about giving.</p><p>Make mealtime a delightful experience for your dog with our Hemp-Infused Gravy featuring real chicken and chicken liver. Give your furry friend the flavors they crave while supporting their overall health. Order now and watch your dog’s excitement grow with each delicious serving!</p><h4>Ingredients &amp; Analysis</h4><ul><li>100% Hemp Seed Oil</li><li>Real Chicken</li><li>Chicken Liver</li><li>Meat</li><li>Eggs</li><li>Rice</li><li>Vegetables</li><li>Gravy</li><li>Natural Flavours</li><li>Organic Vitamins &amp; Minerals</li></ul>', 455, 415, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 0, 1, 1, 0, 'dog', '1', 'Hemp Gravy For Dogs With Real Chicken & Chicken Liver Chunks', 'Hemp Gravy For Dogs', 'Did you know our hemp gravy Dogs With Real Chicken & Chicken Liver Chunks? This yummy blend is perfect for muscle growth and promotes immunity and vitality.', 'uploads/product/1714716255.webp', NULL, NULL, NULL, '2024-05-03 10:04:15', '2024-07-03 14:31:33'),
(47, 1, 4, 15, '232', 'Trucoat Gold Wash Best Herbal Dog Shampoo', 'trucoat-gold-wash-herbal-dog-shampoo', 'Remediovet', '<p>With TRUCOAT® gold wash best herbal dog shampoo your companion gets a fresh, bright, non-deoderized and lustrous coat which is soft and irresistibly smooth to touch, ensuring you have a quality and heavy petting time with your companion. TRUCOAT® is formulated using premium conditioners and infusion of 16 botanical extracts including Amla, Bhringraj, Aloevera, Onion, Reetha, and Chandan. Say goodbye to harsh chemicals and say hello to healing herbs. TRUCOAT® gold wash‘s proprietary formula has a balanced canine Ph and works for all skin and coat types. It is free from harsh chemicals such as parabens and sulphates. TRUCOAT® stops dryness or itching, leaving you dog’s fur soft, shiny and smelling fresh. TRUCOAT® goldwash has antibacterial and anti-inflammatory properties. TRUCOAT® is biodegradable and environment friendly. Embrace the power of nature with TRUCOAT® goldwash. TRUCOAT® gold wash is suitable for all dog breeds above the age of 3 months.</p>', '<p>With TRUCOAT® gold wash <strong>best herbal dog shampoo</strong> your companion gets a fresh, bright, non-deoderized and lustrous coat which is soft and irresistibly smooth to touch, ensuring you have a quality and heavy petting time with your companion. TRUCOAT®&nbsp;is formulated using premium conditioners and infusion of 16 botanical extracts including Amla, Bhringraj, Aloevera, Onion, Reetha, and Chandan. Say goodbye to harsh chemicals and say hello to healing herbs. TRUCOAT® gold wash‘s proprietary formula has a balanced canine Ph and works for all skin and coat types. It is free from harsh chemicals such as parabens and sulphates. TRUCOAT® stops&nbsp;dryness or itching, leaving you dog’s fur soft, shiny and smelling fresh. TRUCOAT® goldwash has antibacterial and anti-inflammatory properties. TRUCOAT® &nbsp;is biodegradable and environment friendly. Embrace the power of nature with TRUCOAT® goldwash.</p><p>TRUCOAT® gold wash is suitable for all dog breeds above the age of 3 months.</p><h3><strong>How Does TRUCOAT® Herbal Dog Shampoo Benefit Your Pet?</strong></h3><ol><li><strong>Heals Inflammation:</strong> Inflammation on your dog’s skin can occur mainly due to infection or skin disease. This problem can greatly put your pet in discomfort. In such conditions, TRUCOAT®&nbsp;containing aloe vera and chandan can helps fight inflammation. Our powerful herbal ingredients also help reduce irritation that commonly occurs after inflammation.</li><li><strong>No More Dry Skin:</strong> Our brand ensures that shampoo is free from any parabens. We have made TRUCOAT® by using plant extracts, so there is no chance that your furry friend will face any skin dryness.</li><li><strong>Promotes Healthy Skin and Coat:</strong> We know how beneficial herbal extracts have been for years to make our hair healthy. So, if we can use natural ingredients for ourselves, why not do the same for pets? The 16 herbal ingredients present in TRUCOAT® shampoo can make a difference in your dog’s skin and coat health. TRUCOAT® is made from organic raw materials that can transform your pet’s coat from brittle and dull to strong and lustrous.</li><li><strong>Protect Coat From Fleas:</strong> We understand how difficult it can become for you to get rid of fleas and ticks from your pet’s coat. To prevent the situation of flea infestation in your pet, use our herbal dog shampoo. TRUCOAT® creates a barrier that protects your pet’s fur from fleas by thoroughly removing dirt particles that can invite fleas. So, no more scratching by using herbal shampoo.</li><li><strong>Safe for All:</strong> It can be a challenging task to find a shampoo that is safe for your dog’s breed. However, your search for an ideal shampoo ends with Trucoat Gold Wash Dog Shampoo. As our shampoo is free from toxic chemicals, it is suitable for every breed.</li></ol><p><strong>Directions of Use</strong></p><p>Bathing your dog with herbal shampoo is no rocket science. Just follow these steps to give your pet an enjoyable bathing session:</p><ol><li>Mix one portion of Trucoat Gold Wash Natural Dog Shampoo with three portions of water.</li><li>Thoroughly massage the shampoo lather on your pet’s coat and skin.</li><li>Rinse off the lather with water.</li><li>Dry your dog with a towel or dryer for pets.</li></ol><p>By taking advantage of the carefully blended plant extracts that our herbal shampoo offers, you can ensure good skin and coat health for your pet. So get our <strong>herbal dog shampoo</strong> to make your pet’s coat long and shiny.</p><h4>Ingredients &amp; Analysis</h4>', 299, 289, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'The Best Herbal Shampoo for Dogs', 'Herbal Shampoo for Dogs', 'Discover the ultimate herbal dog shampoo that combines the power of nature with gentle cleansing. Our top picks ensure your furry friend enjoys a bath with the benefits of natural ingredients.', 'uploads/product/1714716595.webp', NULL, NULL, NULL, '2024-05-03 10:09:55', '2024-07-15 11:25:29'),
(48, 1, 4, 13, '123455', 'Fiprofort Tick n Flea Spot-on For Dogs Upto 10 Kg', 'fiprofort-tick-n-flea-spot-on-for-dogs-upto-10-kg', 'Savavet', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden.Suitable for dogs upto 10 Kg.</p>', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden.</p><p>Suitable for dogs upto 10 Kg.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>This spot-on contains Fipronil that paralyzes &amp; kills adult fleas&nbsp; and ticks and S-methoprene, an insect growth hormone regulator that breaks the life cycle of fleas. It offers one-month protection from fleas and ticks.</p>', 210, 149, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Fiprofort Tick n Flea- A spot on solution for dogs - Remediovet', 'Fiprofort Tick', 'Fiprofort Tick and Flea is a special liquid medicine that helps keep dogs safe from ticks and fleas. You can keep those pesky bugs away with it. Contact RemedioVet to know more', 'uploads/product/1714716845.webp', NULL, NULL, NULL, '2024-05-03 10:14:05', '2024-07-15 08:49:37'),
(49, 1, 4, 13, '2342', 'Fiprofort Tick n Flea Spot-on For Dogs 10-20 Kg', 'fiprofort-tick-n-flea-spot-on-for-dogs-10-20-kg', 'Savavet', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden. Suitable for dogs between 10-20 Kg.</p>', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden.</p><p>Suitable for dogs between 10-20 Kg.</p><p>&nbsp;</p><h2>Ingredients &amp; Analysis</h2><p>This spot-on contains Fipronil that paralyzes &amp; kills adult fleas&nbsp; and ticks and S-methoprene, an insect growth hormone regulator that breaks the life cycle of fleas. It offers one-month protection from fleas and ticks.</p>', 350, 299, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Fiprofort Spot on a solution for medium dogs (10-20kgs) - Remediovet', 'Fiprofort Spot', 'Protect your medium-sized dogs (10-20kgs) with Fiprofort Spot on solution! Our safe, effective treatment guards against pests. Trust RemedioVet for your pet\'s wellness.', 'uploads/product/1714717076.webp', NULL, NULL, NULL, '2024-05-03 10:17:56', '2024-07-15 11:30:09'),
(50, 1, 4, 13, 'hello', 'Fiprofort Tick n Flea Spot-on For Dogs 20-40 Kg', 'fiprofort-tick-n-flea-spot-on-for-dogs-20-40-kg', 'Savavet', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden. Suitable for dogs between 20-40 Kg.</p>', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden.</p><p>Suitable for dogs between 20-40 Kg.</p><p>&nbsp;</p><h2>Ingredients &amp; Analysis</h2><p>This spot-on contains Fipronil that paralyzes &amp; kills adult fleas&nbsp; and ticks and S-methoprene, an insect growth hormone regulator that breaks the life cycle of fleas. It offers one-month protection from fleas and ticks.</p>', 460, 399, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 0, 1, 1, 0, 'dog', '1', 'Fiprofort Plus Spot On- safe and effective treatment (20-40kgs) - Remediovet', 'Fiprofort Plus Spot On', 'FIPROFORT PLUS is a medicine that veterinarians say is safe for pets. It helps get rid of fleas and stops them from coming back. Call RemedioVet to buy now!', 'uploads/product/1714717358.webp', NULL, NULL, NULL, '2024-05-03 10:22:38', '2024-07-24 15:30:37'),
(51, 1, 4, 13, NULL, 'Fiprofort Tick n Flea Spot-on For Dogs 40-60 Kg', 'fiprofort-tick-n-flea-spot-on-for-dogs-40-60-kg', 'Savavet', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden. Suitable for dogs between 40-60 Kg. Ticks and fleas, an all-too-common issue that pet parents frequently turn to us for help with. These minuscule critters seem to really enjoy being close to a dog’s warm body and plush fur. Yet, once they establish themselves and begin feasting on your pet’s precious blood, they unleash a host of potential health concerns, including skin infections and the ominous specter of Lyme disease.</p>', '<p>FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles &amp; preventing re-infestation. Clinical studies have shown that FIPROFORT PLUS reduces the egg laying and hatching capacity in female ticks. Monthly use of FIPROFORT PLUS along with integrated pest management measures can reduce flea and tick burden.</p><p>Suitable for dogs between 40-60 Kg.</p><p>Ticks and fleas, an all-too-common issue that pet parents frequently turn to us for help with.<br>These minuscule critters seem to really enjoy being close to a dog’s warm body and plush fur. Yet, once they establish themselves and begin feasting on your pet’s precious blood, they unleash a host of potential health concerns, including skin infections and the ominous specter of Lyme disease.</p><h4>Potential Health Issues:</h4><p>Without timely intervention, ticks and fleas can usher in a slew of health problems, such as:</p><ul><li>Skin irritation and infections</li><li>Unpleasant rashes and inflamed skin</li><li>Unsightly scabs and scales</li><li>Psychological distress from incessant scratching</li></ul><p>It’s important to take proactive measures to minimize the risk of an infestation. With the right plan and products, you can effectively avert the nightmare of a flea and tick takeover.</p><h4>Best Treatment Option</h4><p>If your dog falls within the 40-60 kg range, look no further than <strong>fiprofort spot on for dogs</strong>. It’s the top pick to keep those pesky ticks and fleas at bay. This trusted solution quickly gets rid of them and keeps your dog feeling great. Say goodbye to the problems caused by pests and make your pet’s life happier and healthier with Fiprofort Plus.</p><h4>Ingredients &amp; Analysis</h4><p>This spot-on contains Fipronil that paralyzes &amp; kills adult fleas&nbsp; and ticks and S-methoprene, an insect growth hormone regulator that breaks the life cycle of fleas. It offers one-month protection from fleas and ticks.</p>', 560, 499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Protect Your Large Breed Dogs with Fiprofort Tick n Flea Spot-On - Remediovet', 'Fiprofort Tick n Flea Spot-On', 'Get Fiprofort Tick n Flea Spot-on For Dogs 40-60 Kg and safeguard your furry friend from ticks and fleas! Effective, easy-to-use, and vet-approved, it\'s the protection your large dog needs. Call now!', 'uploads/product/1714717658.webp', NULL, NULL, NULL, '2024-05-03 10:27:38', '2024-07-03 14:32:47');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_type_id`, `sku`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `weight_unit`, `weight`, `length_unit`, `length`, `date_available`, `height`, `width`, `min_quantity`, `tax`, `trending`, `featured`, `seasonal_special`, `status`, `offer_type`, `is_public`, `meta_title`, `meta_keyword`, `meta_description`, `featured_image`, `video_1`, `video_2`, `video_3`, `created_at`, `updated_at`) VALUES
(52, 1, 41, 0, NULL, 'Kong Classic Dog Toy', 'kong-classic-dog-toy', 'Kong', '<p>Imagine a toy that can withstand even the most enthusiastic chewers, providing endless entertainment and mental stimulation for your beloved pup. The Kong is designed with an innovative, ultra-durable rubber material that stands up to the toughest play sessions. Whether your dog loves to chew, fetch, or play tug-of-war, the Kong can handle it all.</p>', '<p>Imagine a toy that can withstand even the most enthusiastic chewers, providing endless entertainment and mental stimulation for your beloved pup. The Kong is designed with an innovative, ultra-durable rubber material that stands up to the toughest play sessions.&nbsp;</p><p>Whether your dog loves to chew, fetch, or play tug-of-war, the Kong can handle it all.</p><p>But that’s not all—the Kong is more than just a toy. It’s a puzzle that challenges your dog’s intelligence and keeps them engaged. With its unique shape and hollow center, the Kong can be filled with delicious treats or peanut butter, turning playtime into a rewarding and mentally stimulating experience. It’s like a delicious treasure hunt for your furry friend!</p><p>Not only does the Kong keep your dog entertained, but it also promotes dental health. Its textured surface helps clean teeth and massage gums, reducing plaque and tartar buildup.&nbsp;</p><p>Say goodbye to expensive dental bills and hello to a happy, healthy smile!</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Introducing the ultimate dog toy revolution: the Kong!&nbsp;</p><p>Are you tired of your furry friend tearing through every toy you buy in a matter of minutes? Do you wish there was a durable and engaging toy that could keep your dog entertained for hours on end? Look no further! The Kong is here to save the day. The Kong comes in a variety of sizes and colors, ensuring the perfect fit for dogs of all breeds and ages. Whether you have a tiny Chihuahua or a large Labrador, there’s a Kong that will provide the ideal level of engagement and durability. Join the millions of satisfied dog owners who have discovered the magic of the Kong. Say goodbye to destroyed toys and hello to endless hours of fun and stimulation. Invest in the Kong today, and give your furry friend the gift of playtime that will last a lifetime. Remember, a happy dog is a Kong dog!&nbsp;</p>', 999, 783, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Buy Classic Kong Dog Toy From Remediovet', 'Kong Dog Toy', 'Now get the Kong Classic Dogs Toy online for a good price in India. This toy is great for dogs that like to chew and also want to have fun playing. Call RemedioVet to buy now', 'uploads/product/1714717890.webp', NULL, NULL, NULL, '2024-05-03 10:31:30', '2024-07-03 14:33:04'),
(53, 1, 41, 0, NULL, 'Kong Extreme Dog Toy', 'kong-extreme-dog-toy', 'Kong', '<p>Imagine a toy that can withstand even the most enthusiastic chewers, providing endless entertainment and mental stimulation for your beloved pup. The Kong is designed with an innovative, ultra-durable rubber material that stands up to the toughest play sessions. Whether your dog loves to chew, fetch, or play tug-of-war, the Kong can handle it all.</p>', '<p>Imagine a toy that can withstand even the most enthusiastic chewers, providing endless entertainment and mental stimulation for your beloved pup. The Kong is designed with an innovative, ultra-durable rubber material that stands up to the toughest play sessions.&nbsp;</p><p>Whether your dog loves to chew, fetch, or play tug-of-war, the Kong can handle it all.</p><p>But that’s not all—the Kong is more than just a toy. It’s a puzzle that challenges your dog’s intelligence and keeps them engaged. With its unique shape and hollow center, the Kong can be filled with delicious treats or peanut butter, turning playtime into a rewarding and mentally stimulating experience. It’s like a delicious treasure hunt for your furry friend!</p><p>Not only does the Kong keep your dog entertained, but it also promotes dental health. Its textured surface helps clean teeth and massage gums, reducing plaque and tartar buildup.&nbsp;</p><p>Say goodbye to expensive dental bills and hello to a happy, healthy smile!</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Introducing the ultimate dog toy revolution: the Kong!&nbsp;</p><p>Are you tired of your furry friend tearing through every toy you buy in a matter of minutes? Do you wish there was a durable and engaging toy that could keep your dog entertained for hours on end? Look no further! The Kong is here to save the day. The Kong comes in a variety of sizes and colors, ensuring the perfect fit for dogs of all breeds and ages. Whether you have a tiny Chihuahua or a large Labrador, there’s a Kong that will provide the ideal level of engagement and durability. Join the millions of satisfied dog owners who have discovered the magic of the Kong. Say goodbye to destroyed toys and hello to endless hours of fun and stimulation. Invest in the Kong today, and give your furry friend the gift of playtime that will last a lifetime. Remember, a happy dog is a Kong dog!&nbsp;</p>', 1299, 975, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Buy Kong Extreme Dog Toy Online From RemedioVet', 'Kong Extreme', 'Made of strong rubber, this Kong Extreme dog toy is made for dogs who chew a lot. Whether your pup likes to chew, fetch, or play tug-of-war, this toy can handle it all. Call now', 'uploads/product/1714718148.webp', NULL, NULL, NULL, '2024-05-03 10:35:48', '2024-07-03 14:33:18'),
(54, 1, 41, 0, NULL, 'The ultimate dog leash for medium and large breeds', 'the-ultimate-dog-leash-for-medium-and-large-breeds', 'Remediovet', '<p>A durable dog leash made from climbing rope. Designed to withstand the harshest conditions, this leash ensures your pet’s safety and peace of mind. Discover the unbeatable features that make this leash a must-have for any dog ​​owner.</p>', '<p>A durable dog leash made from climbing rope. Designed to withstand the harshest conditions, this leash ensures your pet’s safety and peace of mind. Discover the unbeatable features that make this leash a must-have for any dog ​​owner.</p><p><strong>Unprecedented durability:</strong></p><p>Made from high quality climbing rope, this leash is built to last. Known for its exceptional strength and resilience, climbing ropes can withstand even the most energetic dogs. No need to worry about fraying,tearing or wearing out – this leash will last a long time.</p><p><strong>Better control and security:</strong></p><p>A sturdy dog ​​leash gives you maximum control over your furry friend. The stable and sturdy construction makes it easy to handle even the most powerful pullers. A leash makes walks safer and more enjoyable by minimizing the risk of your dog becoming dislodged or having an unforeseen accident.</p><p><strong>Comfortable grip:</strong></p><p>We know how important a comfortable grip is to dog owners. This sturdy dog ​​leash has a soft yet sturdy handle that provides a firm grip without causing discomfort or strain. Enjoy long walks and adventures with your trusty companion without worrying about hand fatigue.&nbsp;</p><p><strong>Versatility for outdoor activities:</strong></p><p>This leash is not limited to daily walks. The climbing rope design is suitable for a variety of outdoor activities such as hiking, camping and exploring rough terrain. It offers both security and flexibility, making it the perfect companion for any adventure.</p><p><strong>Easy to clean and maintain:</strong></p><p>Designed with practicality in mind, this leash is easy to clean and maintain. Simply wash off the dirt and grime and it will be like new and ready to go on your next adventure together.</p><p>Don’t settle for a flimsy leash that won’t meet the demands of your active dog. Invest in a heavy duty climbing rope dog leash and experience unmatched quality, strength and reliability. Enhance your pet’s walking experience today and enjoy the safety that comes with a durable leash. Order now and give your four-legged friend the freedom and security they deserve!&nbsp;</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Made from high quality climbing rope,&nbsp;This ultimate dog leash is constructed with sturdy, rust-resistant metal locks and heavy-duty hardware. &nbsp;5 Ft length with hook and loop.</p>', 1999, 1499, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 1, 0, 'dog', '1', 'Buy the Ultimate Dog Leash For Your Furry Friend Now', 'Ultimate Dog Leash', 'Discover the perfect Dog Leash for Medium and Large Breeds from our range. Offering supreme comfort and control, ideal for your four-legged friend\'s needs! Shop now!', 'uploads/product/1714718441.webp', NULL, NULL, NULL, '2024-05-03 10:40:41', '2024-07-04 08:27:04'),
(55, 1, 41, 0, NULL, 'The ultimate dog leash and collar set for medium & large breeds', 'the-ultimate-dog-leash-and-collar-set', 'Remediovet', '<p>Unleash the perfect bond with your furry friend!Tired of dealing with flimsy, uncomfortable dog leash and collars that don’t meet your needs? Look no further! We are proud to introduce a premium dog leash and collar set that enhances both style and functionality to give you and your beloved companion the ultimate walking experience.</p>', '<h3>Introducing the ultimate dog leash and collar set by Remediovet</h3><p>Unleash the perfect bond with your furry friend!</p><p>Tired of dealing with flimsy, uncomfortable dog leash and collars that don’t meet your needs? Look no further! We are proud to introduce a premium dog leash and collar set that enhances both style and functionality to give you and your beloved companion the ultimate walking experience.</p><p><strong>Unmatched Quality:</strong></p><p>Crafted with meticulous attention to detail, our dog leash and collar set is made from durable, high-quality materials to ensure long-lasting performance. Say goodbye to frayed edges and flimsy closures. Our leash and collar sets are built to withstand your dog’s most adventurous adventures, providing peace of mind and a reliable accessory that will last for years.&nbsp;</p><p><strong>Maximum comfort:</strong></p><p>We understand that your dog’s comfort is our top priority. That’s why we developed a leash and collar set that focuses on your dog’s health. The inside of the collar is softly padded to prevent chafing and irritation, keeping your furry friend happy and content on your walks. The leash is equipped with a comfortable, ergonomic handle that ensures a secure grip and minimizes hand strain.</p><p><strong>Stylish and Trendy:</strong></p><p>Who said functionality can’t be stylish? Our dog leash and collar set comes in a variety of bright colors and on-trend patterns so your furry friend can show off their stuff in style. Whether you prefer a classic, sophisticated look or a bold, eye-catching design, we have the perfect set to match your dog’s personality and personal tastes. .</p><p><strong>Advanced security features:</strong></p><p>We know how important your dog’s safety is to you, so we’ve incorporated several innovative features into our leash and collar sets to provide extra security. The collar has durable stitching to make your dog more secure on walks. A sturdy heavy duty leash closure also ensures a secure bond between you and your puppy, preventing accidental escapes.</p><p><strong>Versatile and Customizable:</strong></p><p>Our dog leash and collar set is suitable for dogs of all shapes and sizes. The collar has an adjustable strap for a perfect fit, ensuring both comfort and safety. Ideal for both urban environments and rural adventures, the lead length allows freedom of movement without sacrificing control.</p><p><strong>Inseparable relationship:</strong></p><p>At the heart of our leash and collar set is our desire to strengthen the bond between you and your loyal companion. Premium materials, a design focused on comfort, and stylish aesthetics make it a companion for all your walks, workouts, and outdoor expeditions. Have the best leash and collar by your side and experience the joy of spending quality time with your dog.</p><p>Don’t miss this opportunity to revolutionize your dog walking experience. Join countless happy customers who have upgraded their furry friends’ gear and seen a noticeable difference. Invest in our dog leash and collar set today and experience the perfect balance of style, comfort and safety.&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Made with super comfortable and durable satin cord,&nbsp;This ultimate leash is constructed with sturdy, rust-resistant metal locks and heavy-duty hardware to keep it attached and secure. This set is suitable for all medium and large canines, including Labrador, Golden Retriever, Great Dane, Pitbull, Saint Bernard, Mastiff, Doberman, German Shepherd, Dutch Shepherd etc. Collar : 1.25 Inches Width x 30 Inches Length Leash: 5 Feet Length</p>', 2999, 2499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Secure Your Furry Friend with The Ultimate Dog Leash and Collar Set', 'dog ropes, leashes for dog, extra strong leash, comfortable rope or leash', 'Discover the ultimate dog leash and collar set for medium & large breeds. Durable, stylish, and suitable for training. Order now for a happier, safer pet walk!', 'uploads/product/1714718742.webp', NULL, NULL, NULL, '2024-05-03 10:45:42', '2024-07-03 14:34:10'),
(56, 1, 4, 18, NULL, 'Trucoat – Skin & Coat Treats For Dogs With Salmon Oil (Omega 3,6,9)', 'omega-3-6-skin-coat-tonic-for-dogs-cats-yummy-chicken-flavour', 'Remediovet', '<p>Need healthy fur and a shiny coat ? Get Trucoat Treats. With Omega 3 in EPA, DHA form and Omega 6, Zinc &amp; Biotin, Trucoat gets your pet a cuddle ready soft and shiny coat. It is highly recommended by vets and it comes in a yummy chicken flavor, simply mix in regular food and see the difference within days.</p>', '<p>Need healthy fur and a shiny coat ? Get Trucoat Treats.<br>With Omega 3 in EPA, DHA form and Omega 6, Zinc &amp; Biotin, Trucoat gets your pet a cuddle ready soft and shiny coat. It is highly recommended by vets and it comes in a yummy chicken flavor, simply mix in regular food and see the difference within days.</p><h3>Supplement Your Dog’s Diet with Essential Amino Acids</h3><p>As pet owners, we all desire our beloved furry companions to live long and healthy lives. But hold on! Are we taking the necessary steps to ensure their well-being? With summer in full swing, now is the opportune time to prioritize the health and maintenance of our pets’ fur and overall health.</p><p>If you need help figuring out where to begin, consider investing in a <strong>Dogs Coat Supplement</strong>. A great option is the Omega 3 6 &amp; 9 Skin &amp; Coat Treat, which is suitable for dogs.&nbsp;</p><p>This supplement promotes healthy skin and a shiny coat, ensuring your furry friend looks and feels their best. Incorporating this supplement into your pet’s diet can help address any concerns with their skin or coat and improve their overall well-being. So why not try it and see the positive effects for yourself?</p><p>We aim to provide you with a comprehensive understanding of these products and their ingredients to alleviate any concerns regarding their quality.</p><h3>Benefits of Omega 3 for Dogs</h3><p>Omega-3 is a highly effective supplement that can significantly improve your furry friend’s health. A number of scientific studies have demonstrated the following positive impacts of omega-3 fatty acids on dogs:</p><ul><li>Promoting healthy brain development in puppies</li><li>Boosting the immune system</li><li>Reducing inflammation</li><li>Aiding in cancer prevention</li><li>Promoting heart health</li></ul><p>Adding omega-3 to your dog’s diet can be an excellent way to enhance their overall well-being. Another healthy source of omega 3 &amp; 6 is salmon oil. That is why <strong>salmon oil for dogs</strong> is beneficial.</p><h3>Benefits of Omega 6 for Dogs</h3><ul><li>Omega-6 fatty acids play a role in the structure and function of cell membranes.</li><li>Omega-6 fatty acids, like Omega-3 fatty acids, are a form of fat that adds calories to your dog’s diet.</li><li>They are required for normal reproduction</li><li>Better immune function</li><li>Healthy skin and coat health.</li></ul><p>Ensure the well-being of your beloved furry companion and maintain their lustrous coat with the comprehensive Omega 369 supplement. Don’t hesitate any longer and procure <strong>Omega 369 for Dogs</strong> to enhance your pet’s health.</p>', 999, 949, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Salmon Oil for Dogs | Omega 369 Supplement for Dogs | Trucoat', 'Omega 369 for Dogs', 'Maintain the well-being of your pet by purchasing Omega 3 and Salmon Oil for Dogs from Remediovet. Browse a wide range of high-quality omega 369 supplements for your furry friend now.', 'uploads/product/1714720069.webp', NULL, NULL, NULL, '2024-05-03 11:07:49', '2024-07-03 14:40:12'),
(57, 1, 4, 17, NULL, 'Anti-bacterial ointment for dogs and cats – 10 gm', 'anti-bacterial-ointment-for-dogs-and-cats-10-gm', 'Remediovet', '<p>It provides fast relief from inflammation and pruritus associated with skin conditions. ICHNIL™ is effective in steroid-responsive inflammatory disorders of the skin, where secondary bacterial infections are present.</p>', '<p>It provides fast relief from inflammation and pruritus associated with skin conditions. ICHNIL™ is effective in steroid-responsive inflammatory disorders of the skin, where secondary bacterial infections are present.</p><p>Indications</p><ul><li>Inflammation</li><li>Dermatitis, Pruritus, Psoriasis, Flea Bite Allergy, and Eczema</li><li>Surgical Wounds &amp; Incisions</li></ul><p>Application</p><ul><li>Apply a thin film of ICHNIL ointment to the affected skin area twice daily.</li></ul><h4>Ingredients &amp; Analysis</h4><p>ICHNIL™ topical ointment contains:</p><ul><li>Fluticasone Propionate – 0.005 % w/w</li><li>Mupirocin – 2 % w/w</li></ul>', 255, 199, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Best Ointment for Dog and Cat wounds - Remediovet', 'ointment for dogs', 'Promote quick healing and prevent infection with our dog wound ointment. We offer trustworthy solutions for treating and protecting wounds using the ointment for dogs. Order now!', 'uploads/product/1714720353.webp', NULL, NULL, NULL, '2024-05-03 11:12:33', '2024-07-03 14:46:07'),
(58, 1, 4, 16, NULL, 'Turbovet anti-fungal dusting powder for dogs & cats – 100gm', 'terbinafine-hcl-1-dusting-powder-for-dogs-cats-100gm', 'Remediovet', '<p>TURBOVET contains Terbinafine HCL, an anti-fungal medication approved by the FDA. Terbinafine is an allylamine antifungal agent which acts by inhibiting squalene monooxygenase, thus blocking the biosynthesis of ergosterol, an essential component of fungal cell membranes but its mechanism for inhibiting ergosterol is different from other azole antifungals.</p>', '<p>TURBOVET contains Terbinafine HCL, an anti-fungal medication approved by the FDA. Terbinafine is an allylamine antifungal agent which acts by inhibiting squalene monooxygenase, thus blocking the biosynthesis of ergosterol, an essential component of fungal cell membranes but its mechanism for inhibiting ergosterol is different from other azole antifungals.</p><p>Terbinafine eliminates fungus infections by attacking the fungal spores at their source. It causes the cell walls of the spores to weaken preventing the fungal spores from reproducing and attaching property. As a result the fungus dies cell by cell and the infection goes away. It is used to treat fingernail or toenail fungal infections. It is the most common drug prescribed to treat both fungal infections of the nails and candida infections.</p><h4>Ingredients &amp; Analysis</h4><p>TURBOVET™ contains Terbinafine hydrochloride 1% dusting powder, an FDA approved drug for Tinea and Yeast infections. It prevents the recurrence of skin fungal infections like ringworm and yeast infections in dogs and cats while improving skin health.</p>', 260, 199, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Terbinafine HCL 1% Dusting Anti-fungal Powder for Dogs and Cats', 'dusting powder', 'Keep your dog fresh, clean, and itch-free with our anti fungal dusting powder. Specially formulated for dogs, our dusting powder effectively eliminates odors. Call us now', 'uploads/product/1714720734.webp', NULL, NULL, NULL, '2024-05-03 11:18:54', '2024-07-03 14:46:25'),
(59, 1, 4, 9, NULL, 'Skyworm Puppy Dewormer Suspension – 15ML', 'skyworm-puppy-dewormer-suspension-15ml', 'Sky EC', '<p>Skyworm puppy dewormer encompasses a synergistic combination of Pyrantel embonate &amp; Febantel which is safe for use in puppies and gives more than 90% efficacy. It is used to control and remove tapeworm, roundworm, hookworm and whipworm.</p>', '<p>Skyworm puppy dewormer encompasses a synergistic combination of Pyrantel embonate &amp; Febantel which is safe for use in puppies and gives more than 90% efficacy. It is used to control and remove tapeworm, roundworm, hookworm and whipworm.</p><p>Dosage:</p><p>Use 1 ml per kg body weight. Start deworming when the puppy is 14 days old and then repeat every 14 days until the puppy is 2 months old. After 2 months, deworming should continue every month until the puppy grows to 6 months of age. After 6 months, start deworming every 3 months once or as advised by a practicing veterinarian. Switch to deworming tablets after 6 months of age.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Each ml contains:</p><ul><li>Pyrantel Embonate : 14.4 mg</li><li>Febantel : 15 mg</li></ul>', 125, 111, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Skyworm - Best Dewormer medicine for Puppies', 'Skyworm', 'Ensure your puppy\'s well-being with Skyworm Liquid Puppy Dewormer. It is a reliable and effective solution to combat and prevent intestinal worms for your puppy. Order now!', 'uploads/product/1714720978.webp', NULL, NULL, NULL, '2024-05-03 11:22:58', '2024-07-03 14:46:36'),
(60, 1, 4, 9, NULL, 'Defender Pro Herbal Dewormer for Puppies & Dogs – 10 Tablets', 'defender-pro-herbal-dewormer-for-puppies-dogs-10-tablets', 'Medfly', '<p>Defender PRO has a herbal enzyme &amp; probiotic based deworming formula for dogs. It has no harmful chemicals and consists of all natural ingredients. Simply follow the dosage chart and ensure a healthy gut for your furbaby all year round.</p>', '<p>Defender PRO has a herbal enzyme &amp; probiotic based deworming formula for dogs. It has no harmful chemicals and consists of all natural ingredients. Simply follow the dosage chart and ensure a healthy gut for your furbaby all year round.</p><p><strong>Defender PRO tablet</strong> is Indicated for:</p><p>Tapeworms</p><p>Hookworms</p><p>Whipworms</p><h4>Ingredients &amp; Analysis</h4><p>Composition: Papain 56000 FCC PU Cellulase 500 CU Cloves Extract 30 mg Ginger Extract 10 mg Pumpkin Seed 50 mg Lactobacillus Sporogenes 1*103 CFU Excipients Q.S &nbsp;</p>', 550, 450, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Defender Pro Herbal Natural Dewormer for Puppies & Dogs', 'Dewormer for Puppies & Dogs', 'Now protect your dogs against all worms using natural dewormers for dogs known as Defender PRO. It has natural ingredients and contains no harmful chemicals. Buy now!', 'uploads/product/1714721201.webp', NULL, NULL, NULL, '2024-05-03 11:26:41', '2024-07-03 14:46:52'),
(61, 1, 4, 9, NULL, 'Defender Plus Dewormer for Puppies & Adult Dogs – 10 Tablets', 'medfly-defender-plus-dewormer-for-puppies-adult-dogs-10-tablets', 'Medfly', '<p>Defender Plus is a vet approved safe &amp; effective broad spectrum dewormer for puppies and adult dogs. It acts against all types of worms and is gentle on the system. Dose guidelines: Deworming must be done at an interval of 3 months. Simply feed one tablet per 10 kg of body weight of the dog. For example if your dog is weighing 20 kg, feed 2 tablets in one go. Alternatively you can also feed 2 tablets at different times as long as it is administered within 48 hours of interval. For example: 1 tablet can be fed during the day and other in the evening or 1 tablet today and the other tomorrow. For puppies between 3-5 kg, feed half a tablet. For puppies between 5-10 kg body weight, feed 1 tablet.</p>', '<p>Defender Plus is a vet approved safe &amp; effective broad spectrum dewormer for puppies and adult dogs. It acts against all types of worms and is gentle on the system.</p><p>Dose guidelines: Deworming must be done at an interval of 3 months. Simply feed one tablet per 10 kg of body weight of the dog. For example if your dog is weighing 20 kg, feed 2 tablets in one go. Alternatively you can also feed 2 tablets at different times as long as it is administered within 48 hours of interval. For example: 1 tablet can be fed during the day and other in the evening or 1 tablet today and the other tomorrow.&nbsp;</p><p>For puppies between 3-5 kg, feed half a tablet. For puppies between 5-10 kg body weight, feed 1 tablet.&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Each Tablet contains Praziquantel,&nbsp;Pyrantel &amp;&nbsp;Febantel.</p>', 600, 499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Defender Plus Dewormer for Puppies and Adult Dogs', 'Dewormer for Puppies and Adult Dogs', 'Get worm medicine for puppies and adult dogs and protect your beloved pet with Defender Plus Dewormer, the trusted solution for effective parasite control. Order now!', 'uploads/product/1714721442.webp', NULL, NULL, NULL, '2024-05-03 11:30:42', '2024-07-03 14:47:25'),
(62, 1, 3, 6, NULL, 'Orijen Grain Free Dry Food – Senior', 'orijen-grain-free-senior-dry-dog-food-for-all-breeds', 'Orijen', '<p>The gray wolf is the ancestor and closest relative of all domestic dogs. While years of breeding have produced hundreds of ‘different looking wolves’, the internal workings of wolves and dogs remain unchanged so it’s no surprise that their food requirements remain the same too. Our 5 Biologically Appropriate principles are simple and mirror the freshness and variety of meats that dogs are evolved to eat.</p>', '<h4><strong>BIOLOGICALLY APPROPRIATE | FOR SENIOR DOGS</strong></h4><p>Fresh free-run chicken and turkey, nest-laid eggs and wild-caught fish</p><p>Senior dogs are best fed a diet rich in protein to promote lean muscle mass, yet limited in calories to promote a healthy body weight.</p><p>&nbsp;</p><ul><li>With 38% richly nourishing protein, and a limited 19% low-glycemic carbohydrates, ORIJEN nourishes all senior dogs according to their evolutionary and biological needs.</li><li>Unmatched by any other senior dog food, 2/3 of meats are FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 meat ingredients.</li><li>1/3 of poultry and fish are prepared at 90°C from fresh chicken, turkey and fish to create a concentrated source of richly nourishing protein that cannot be supplied by fresh meats alone.</li><li>Nutrient-dense WholePrey ratios of fresh meats, organs, and cartilage plus fresh whole fish and fresh whole eggs provide a natural source of virtually every nutrient your senior dog needs.</li><li>Infusions of gently freeze-dried liver enhance flavour and palatability naturally, making ORIJEN deliciously tasty, even for fussy eaters.</li></ul><p>&nbsp;</p><p><strong>ORIJEN’S BIOLOGICALLY APPROPRIATE PHILOSOPHY</strong></p><p>The gray wolf is the ancestor and closest relative of all domestic dogs. While years of breeding have produced hundreds of ‘different looking wolves’, the internal workings of wolves and dogs remain unchanged so it’s no surprise that their food requirements remain the same too. Our 5 Biologically Appropriate principles are simple and mirror the freshness and variety of meats that dogs are evolved to eat.</p><p>&nbsp;</p><p><strong>RICH IN MEAT (85%) AND PROTEIN (38%)</strong><br>All dogs have sharp teeth and a body designed to metabolize protein and fat from meat. ORIJEN is designed to nourish your dog according to his evolutionary and biological needs.</p><ul><li>85% meat (2/3 FRESH or RAW and 1/3 gently dehydrated)</li><li>38% richly nourishing meat protein</li><li>100% of meat ingredients from animals deemed fit for human consumption, prior to inclusion in our foods</li><li>NO plant proteins extracts or concentrates (potato or pea protein)</li><li>NO high-glycemic carbohydrates (tapioca, potato, rice)</li><li>NO glutens or grains</li></ul><p>&nbsp;</p><p><strong>UNMATCHED FRESH MEAT INCLUSIONS (2/3)</strong><br>Fresh meats and fish are the foundation of award-winning ORIJEN dog foods.</p><ul><li>2/3 of the meats are fresh or raw, supplying your dog with essential nutrients in their most natural and nourishing form.</li><li>1/3 of meats are dehydrated at low temperature for a concentrated source of nourishing protein that cannot be supplied by fresh meats alone.</li></ul><p><strong>AN ABUNDANT VARIETY OF MEATS (5)</strong><br>In nature, dogs benefit from an assortment of meats. This variety is often lost in conventional senior foods which typically feature a single animal ingredient such as chicken or lamb that is highly processed and seldom fresh.<br>That’s why award-winning ORIJEN Senior features a rich diversity of fresh meats in Biologically Appropriate WholePrey ratios to nourish your adult dog’s peak growth and development:</p><ul><li>Fresh free-run Cobb chicken from Prairie farms</li><li>Fresh free-run turkey from Prairie farms</li><li>Fresh and whole nest-laid eggs from Prairie farms</li><li>Fresh, whole Pacific Herring and Flounder, wild-caught from North Vancouver Island</li></ul><p>&nbsp;</p><p><strong>WHOLEPREY MEAT RATIOS</strong><br>WholePrey represents the evolution of ORIJEN dog foods, incorporating fresh meats, organ meats and cartilage in ratios that mirror nature and eliminate the need for long lists of synthetic supplements.</p><ul><li>Meat – essential for protein and fat as well as Vitamins A, B, D and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium and zinc.</li><li>Organs – packed with virtually every nutrient your dog needs to thrive including vitamins, minerals, healthy fats and amino acids.</li><li>Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium and potassium in natural form your dog’s body can easily absorb.</li></ul><p>&nbsp;</p><p><strong>CARBOHYDRATE-LIMITED (20%)</strong><br>While dogs have no nutritional requirement for carbohydrates, conventional senior foods still contain large amounts of high-glycemic carbohydrates such as potato and tapioca, which are often cited as a leading cause of obesity and diabetes.<br>Biologically Appropriate ORIJEN Senior is a protein-rich and carbohydrate-limited food featuring lentils, chickpeas, squash, greens and fruits which release sugar slowly, dramatically reducing the potential for fat storage.</p><h4>Ingredients &amp; Analysis</h4><p><strong>85% MEAT | 15% FRUITS &amp; VEGETABLES</strong> Fresh chicken meat (13%), fresh whole eggs (7%), fresh turkey meat (7%), fresh whole herring (7%), fresh chicken liver (6%), fresh whole flounder (4%), fresh turkey liver (4%), fresh chicken necks (4%), fresh chicken heart (4%), fresh turkey heart (4%), chicken (dehydrated, 4%), turkey (dehydrated, 4%), whole mackerel (dehydrated, 4%), whole sardine (dehydrated, 4%), whole herring (dehydrated, 4%), whole red lentils, whole green lentils, whole green peas, lentil fiber, whole chickpeas, whole yellow peas, whole pinto beans, chicken cartilage (1%), whole navy beans, herring oil (1%), chicken fat (1%), turkey cartilage (1%), chicken liver (freeze-dried), turkey liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole red delicious apples, fresh whole bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, Enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg.</p>', 549, 499, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 0, 1, 1, 0, 'dog', '1', 'Orijen Grain Free Senior Dry Dog Food For All Breeds', 'Orijen Grain Free Senior Dry Dog Food', 'Nourish your dog with Orijen Original Senior Dog Food. It is packed with high-quality ingredients, supports optimal health, promotes lean muscle mass, and enhances vitality.', 'uploads/product/1714721713.webp', NULL, NULL, NULL, '2024-05-03 11:35:13', '2024-07-04 08:27:04'),
(63, 1, 3, 6, NULL, 'Orijen Six Fish Grain Free Dry Food', 'orijen-six-fish-grain-free-dry-dog-food-for-all-breeds-ages', 'Orijen', '<p>Fresh Pacific Pilchard, Mackerel, Hake, Flounder, Rockfish &amp; Sole. A Rich Diversity Of Fresh, Whole, And Wild-Caught Fish From Vancouver Island’s Cold Pacific Waters. With 38% richly nourishing protein, and 85% quality animal ingredients, ORIJEN Six Fish nourishes dogs of all life stages according to their evolutionary and biological needs. 2/3 FRESH fish (refrigerated, without preservatives) or RAW (flash-frozen, without preservatives), including the top six fish ingredients. 1/3 of fish is gently dried at 90°C from fresh, whole fish to create a concentrated source of richly nourishing protein that cannot be supplied by fresh fish alone. Nutrient-dense WholePrey ratios of fresh, whole fish (including meat and bone) provide virtually every nutrient your dog needs to thrive. Infusions of freeze-dried cod liver enhance flavour naturally, making ORIJEN deliciously tasty, even for fussy eaters.</p>', '<p><strong>BIOLOGICALLY APPROPRIATE | ALL LIFE STAGES</strong></p><p>Fresh Pacific Pilchard, Mackerel, Hake, Flounder, Rockfish &amp; Sole.&nbsp;A Rich Diversity Of Fresh, Whole, And Wild-Caught Fish From Vancouver Island’s Cold Pacific Waters.</p><ul><li>With 38% richly nourishing protein, and 85% quality animal ingredients, ORIJEN Six Fish nourishes dogs of all life stages according to their evolutionary and biological needs.</li><li>2/3 FRESH fish (refrigerated, without preservatives) or RAW (flash-frozen, without preservatives), including the top six fish ingredients.</li><li>1/3 of fish is gently dried at 90°C from fresh, whole fish to create a concentrated source of richly nourishing protein that cannot be supplied by fresh fish alone.</li><li>Nutrient-dense WholePrey ratios of fresh, whole fish (including meat and bone) provide virtually every nutrient your dog needs to thrive.</li><li>Infusions of freeze-dried cod liver enhance flavour naturally, making ORIJEN deliciously tasty, even for fussy eaters.</li></ul><p><strong>RICH IN FISH (85%) AND PROTEIN (38%)</strong><br>All dogs have sharp teeth and a body designed to metabolize protein and fat from meat and fish. ORIJEN is designed to nourish your dog according to his evolutionary and biological needs.</p><ul><li>85% fish (2/3 fresh or raw and 1/3 gently dehydrated)</li><li>38% richly nourishing fish protein</li><li>Our dried fish is prepared at 90°C from whole fish, to create a concentrated source of protein (not the industry standard of bones and trimmings)</li><li>No grains or gluten</li></ul><p><strong>HIGH FRESH FISH INCLUSIONS</strong><br>Fish are the foundation of ORIJEN Six Fish</p><ul><li>2/3 of the fish are fresh or raw, supplying your dog with essential nutrients in their most natural and nourishing form.</li><li>1/3 of fish is dried and prepared at a low temperature from fresh fish to create a concentrated source of nourishing protein that cannot be supplied by fresh fish alone.</li></ul><p><strong>AN ABUNDANT VARIETY OF FISH</strong><br>In nature, dogs benefit from an assortment of meat. This variety is often lost in conventional dog foods which typically feature a single animal ingredient, such as chicken or lamb, that is highly processed and seldom fresh. That’s why award-winning ORIJEN Six Fish features a rich diversity of fresh fish in Biologically Appropriate WholePrey ratios to nourish for peak health:</p><ul><li>Whole, wild-caught Pacific pilchard from North Vancouver Island</li><li>Whole, wild-caught Pacific mackerel from North Vancouver Island</li><li>Whole, wild-caught Pacific hake from North Vancouver Island</li><li>Whole, wild-caught Pacific flounder from North Vancouver Island</li><li>Whole, wild-caught Pacific rockfish from North Vancouver Island</li><li>Whole, wild-caught Pacific sole from North Vancouver Island</li></ul><p>Mother Nature matched the nutrients in whole animals and fish to perfectly meet your dog’s needs. ORIJEN WholePrey ratios of meat, organs, and cartilage or bone mirror nature, and eliminate the need for long lists of synthetic ingredients. The WholePrey diet is a nutritional treasure:</p><ul><li>Fish – essential for protein and fat as well as vitamins A, B, D, and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium, and zinc.</li><li>Organs – packed with virtually every nutrient your dog’s needs to thrive including vitamins, minerals, healthy fats, and amino acids.</li><li>Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium, and potassium in a natural form that your dog’s body can easily absorb.</li></ul><p><strong>ONLY 2 SUPPLEMENTS — ZINC &amp; COPPER</strong><br>In nature there are no synthetic supplements, so dogs and wolves derive their complete nutritional needs naturally, by consuming whole prey animals and fish. Made with fresh whole fish, ORIJEN SIX FISH provides a richly nourishing and concentrated source of virtually every nutrient your dog needs to thrive, naturally, without long lists of synthetic supplements, so only zinc and copper are added.</p><h4>Ingredients &amp; Analysis</h4><p>85% QUALITY ANIMAL INGREDIENTS | 15% VEGETABLES &amp; FRUIT</p><p>Fresh whole Pacific pilchard (18%), fresh whole Pacific mackerel (13%), fresh whole Pacific hake (12%), fresh whole Pacific flounder (5%), fresh whole rockfish (5%), fresh whole sole (5%), whole mackerel (dehydrated, 5%), whole herring (dehydrated, 5%), Alaskan cod (dehydrated, 4.5%), whole sardine (dehydrated, 4.5%), whole blue whiting (dehydrated, 4%), herring oil (4%), whole red lentils, whole green lentils, whole green peas, lentil fibre, whole chickpeas, whole yellow peas, sunflower oil (cold-pressed), whole pinto beans, cod liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole Red Delicious apples, fresh whole Bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole Saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg; Copper chelate: 11 mg.</p>', 549, 499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 0, 1, 1, 0, 'dog', '1', 'Orijen Six Fish Grain Free Dry Dog Food For All Breeds & Ages', 'Orijen Six Fish Grain Free Dry Dog Food', 'Made with grain-free and six quality fish sources, Orijen Six Fish dog food delivers a high protein meal. So make a call now and use this Orijen six fish to give your dog a healthy life.', 'uploads/product/1714721978.webp', NULL, NULL, NULL, '2024-05-03 11:39:38', '2024-07-03 14:49:39'),
(64, 1, 3, 6, NULL, 'Orijen Grain Free Food – Large Puppy', 'orijen-grain-free-large-puppy-dry-food-all-breeds', 'Orijen', '<p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish. Rich In Protein For Large-Breed Muscle Mass, Helping To Promote Healthy Weight And Reduce Stress On Developing Bones And Joints. With 38% richly nourishing protein and 85% quality animal ingredients, ORIJEN nourishes large-breed puppies according to their evolutionary and biological needs. 2/3 of ORIJEN’s meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 ingredients. 1/3 of meat is air-dried at 90°C from fresh chicken, turkey, and fish to create a concentrated source of richly nourishing protein to support your growing puppy. Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus fresh, whole fish and cage-free eggs provide a natural source of virtually every nutrient your big puppy needs. Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for even the fussiest of puppies.</p>', '<p><strong>BIOLOGICALLY APPROPRIATE FOR LARGE-BREED PUPPIES</strong></p><p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish. Rich In Protein For Large-Breed Muscle Mass, Helping To Promote Healthy Weight And Reduce Stress On Developing Bones And Joints.</p><ul><li>With 38% richly nourishing protein and 85% quality animal ingredients, ORIJEN nourishes large-breed puppies according to their evolutionary and biological needs.</li><li>2/3 of ORIJEN’s meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 ingredients.</li><li>1/3 of meat is air-dried at 90°C from fresh chicken, turkey, and fish to create a concentrated source of richly nourishing protein to support your growing puppy.</li><li>Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus fresh, whole fish and cage-free eggs provide a natural source of virtually every nutrient your big puppy needs.</li><li>Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for even the fussiest of puppies.</li></ul><p><strong>RICH IN FISH (85%) AND PROTEIN (38%)</strong><br>All dogs have sharp teeth and a body designed to metabolize protein and fat from meat and fish. ORIJEN is designed to nourish your dog according to his evolutionary and biological needs.</p><ul><li>85% fish (2/3 fresh or raw and 1/3 gently dehydrated)</li><li>38% richly nourishing fish protein</li><li>Our dried fish is prepared at 90°C from whole fish, to create a concentrated source of protein (not the industry standard of bones and trimmings)</li><li>No grains or gluten</li></ul><p><strong>HIGH FRESH FISH INCLUSIONS</strong><br>Fish are the foundation of ORIJEN Six Fish</p><ul><li>2/3 of the fish are fresh or raw, supplying your dog with essential nutrients in their most natural and nourishing form.</li><li>1/3 of fish is dried and prepared at a low temperature from fresh fish to create a concentrated source of nourishing protein that cannot be supplied by fresh fish alone.</li></ul><p><strong>AN ABUNDANT VARIETY OF FISH</strong><br>In nature, dogs benefit from an assortment of meat. This variety is often lost in conventional dog foods which typically feature a single animal ingredient, such as chicken or lamb, that is highly processed and seldom fresh. That’s why award-winning ORIJEN Six Fish features a rich diversity of fresh fish in Biologically Appropriate WholePrey ratios to nourish for peak health:</p><ul><li>Whole, wild-caught Pacific pilchard from North Vancouver Island</li><li>Whole, wild-caught Pacific mackerel from North Vancouver Island</li><li>Whole, wild-caught Pacific hake from North Vancouver Island</li><li>Whole, wild-caught Pacific flounder from North Vancouver Island</li><li>Whole, wild-caught Pacific rockfish from North Vancouver Island</li><li>Whole, wild-caught Pacific sole from North Vancouver Island</li></ul><p><strong>WHOLEPREY MEAT RATIOS</strong></p><p>Mother Nature matched the nutrients in whole animals and fish to perfectly meet your dog’s needs. ORIJEN WholePrey ratios of meat, organs, and cartilage or bone mirror nature, and eliminate the need for long lists of synthetic ingredients. The WholePrey diet is a nutritional treasure:</p><ul><li>Fish – essential for protein and fat as well as vitamins A, B, D, and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium, and zinc.</li><li>Organs – packed with virtually every nutrient your dog’s needs to thrive including vitamins, minerals, healthy fats, and amino acids.</li><li>Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium, and potassium in a natural form that your dog’s body can easily absorb.</li></ul><p><strong>ONLY 2 SUPPLEMENTS — ZINC &amp; COPPER</strong><br>In nature there are no synthetic supplements, so dogs and wolves derive their complete nutritional needs naturally, by consuming whole prey animals and fish. Made with fresh whole fish, ORIJEN SIX FISH provides a richly nourishing and concentrated source of virtually every nutrient your dog needs to thrive, naturally, without long lists of synthetic supplements, so only zinc and copper are added.</p><h4>Ingredients &amp; Analysis</h4><p><strong>85% QUALITY ANIMAL INGREDIENTS | 15% VEGETABLES &amp; FRUIT</strong> Fresh chicken meat (14%), fresh turkey meat (7%), fresh cage-free eggs (7%), fresh chicken liver (6%), fresh whole flounder (5%), fresh whole herring (5%), fresh turkey liver (5%), fresh chicken necks (4%), fresh chicken heart (4%), fresh turkey heart (4%), chicken (dehydrated, 4%), turkey (dehydrated, 4%), whole mackerel (dehydrated, 4%), whole sardine (dehydrated, 4%), whole herring (dehydrated, 4%), whole red lentils, whole green lentils, whole green peas, lentil fibre, whole chickpeas, whole yellow peas, whole pinto beans, whole navy beans, herring oil (1%), chicken cartilage (1%), chicken fat (1%), sun-cured alfalfa, chicken liver (freeze-dried), turkey liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole Red Delicious apples, fresh whole Bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole Saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg.</p>', 6299, 6199, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Orijen Grain Free Large Puppy Dry Food (All Breeds) - Remediovet', 'Orijen Grain Free Large Puppy Dry Food', 'Fuel your large puppy\'s growth and development with Orijen Puppy Large Breed Puppy food. Made using high-quality ingredients it offers optimal nutrition and vitality. Order now!', 'uploads/product/1714722464.webp', NULL, NULL, NULL, '2024-05-03 11:47:44', '2024-07-03 14:50:06');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_type_id`, `sku`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `weight_unit`, `weight`, `length_unit`, `length`, `date_available`, `height`, `width`, `min_quantity`, `tax`, `trending`, `featured`, `seasonal_special`, `status`, `offer_type`, `is_public`, `meta_title`, `meta_keyword`, `meta_description`, `featured_image`, `video_1`, `video_2`, `video_3`, `created_at`, `updated_at`) VALUES
(65, 1, 3, 6, NULL, 'Orijen Grain Free Dry Puppy Food', 'orijen-grain-free-dry-puppy-food-all-breeds', 'Orijen', '<p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish. All Puppies Require A Diet Rich In Protein And Fat From A Variety Of Fresh, Whole Meat To Fully Support Their Rapid Growth And Development. With 38% richly nourishing protein, and 85% quality animal ingredients, ORIJEN nourishes puppies according to their evolutionary and biological needs. 2/3 of ORIJEN’s meat is FRESH (refrigerated, without preservatives) or RAW (flash-frozen, without preservatives), including the top 10 ingredients. 1/3 of meat is air-dried at 90°C from free-run chicken &amp; turkey, and wild-caught fish, to create a concentrated source of richly nourishing protein to support your growing puppy. Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus fresh, whole fish and cage-free eggs provide a natural source of virtually every nutrient your puppy needs. Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for the fussiest of puppies.</p>', '<p><strong>BIOLOGICALLY APPROPRIATE FOR PUPPIES</strong></p><p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish.&nbsp;All Puppies Require A Diet Rich In Protein And Fat From A Variety Of Fresh, Whole Meat To Fully Support Their Rapid Growth And Development.</p><ul><li>With 38% richly nourishing protein, and 85% quality animal ingredients, ORIJEN nourishes puppies according to their evolutionary and biological needs.</li><li>2/3 of ORIJEN’s meat is FRESH (refrigerated, without preservatives) or RAW (flash-frozen, without preservatives), including the top 10 ingredients.</li><li>1/3 of meat is air-dried at 90°C from free-run chicken &amp; turkey, and wild-caught fish, to create a concentrated source of richly nourishing protein to support your growing puppy.</li><li>Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus fresh, whole fish and cage-free eggs provide a natural source of virtually every nutrient your puppy needs.</li><li>Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for the fussiest of puppies.</li></ul><p><strong>Rich in Meat &amp; Proteins</strong></p><p>All puppies have sharp teeth and a body designed to metabolize protein and fat from meat. ORIJEN is designed to nourish your puppy according to his evolutionary and biological needs.</p><ul><li>85% meat (2/3 FRESH or RAW and 1/3 gently dehydrated)</li><li>38% richly nourishing meat protein</li><li>15% vegetables and fruit</li><li>NO grains or gluten</li></ul><p><strong>High Fresh Meat Inclusions</strong></p><p>Meat is the foundation of award-winning ORIJEN foods.</p><ul><li>2/3 of the meat is FRESH or RAW, supplying your puppy with essential nutrients in their most natural and nourishing form.</li><li>1/3 of meat is dehydrated at a low temperature for a concentrated source of nourishing protein that cannot be supplied by fresh meat alone.</li></ul><p><strong>An Abundant Variety Of Meat</strong></p><p>In nature, puppies benefit from an assortment of meat. This variety is often lost in conventional puppy foods which typically feature a single animal ingredient, such as chicken or lamb, that is highly processed and seldom fresh. That’s why award-winning ORIJEN Puppy features a rich diversity of fresh meat in Biologically Appropriate WholePrey ratios to nourish your puppy’s peak growth and development:</p><ul><li>Fresh free-run chicken from prairie farms</li><li>Fresh free-run turkey from prairie farms</li><li>Fresh, whole Pacific herring and flounder, wild-caught from North Vancouver Island</li></ul><p><strong>Wholeprey Meat Ratios</strong></p><p>WholePrey represents the evolution of ORIJEN foods, incorporating fresh meat, organs, and cartilage or bone in ratios that mirror nature and eliminate the need for long lists of synthetic supplements.</p><ul><li>Meat – essential for protein and fat as well as vitamins A, B, D, and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium, and zinc.</li><li>Organs – packed with virtually every nutrient your puppy needs to thrive including vitamins, minerals, healthy fats, and amino acids.</li><li>Cartilage and Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium, and potassium in a natural form that your puppy’s body can easily absorb.</li></ul><h4>Ingredients &amp; Analysis</h4><p><strong>85% QUALITY ANIMAL INGREDIENTS | 15% VEGETABLES &amp; FRUIT</strong> Fresh chicken meat (11%), fresh turkey meat (7%), fresh cage-free eggs (6%), fresh whole herring (6%), fresh chicken liver (5%), fresh whole flounder (5%), fresh turkey liver (5%), fresh chicken heart (4%), fresh turkey heart (4%), fresh chicken necks (4%), chicken (dehydrated, 4%), turkey (dehydrated, 4%), whole mackerel (dehydrated, 4%), whole sardine (dehydrated, 4%), whole herring (dehydrated, 4%), chicken fat (4%), herring oil (2%), whole red lentils, whole green peas, whole green lentils, whole chickpeas, whole yellow peas, lentil fibre, whole pinto beans, whole navy beans, chicken bone and cartilage (1%), chicken liver (freeze-dried), turkey liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole Red Delicious apples, fresh whole Bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole Saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg.</p>', 549, 499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Orijen Grain Free Dry Puppy Food (All Breeds) - Remediovet', 'Orijen Grain Free Dry Puppy Food', 'Give your puppy the best start in life with Orijen Puppy Food which is suitable for all Breeds from Remediovet. It has nutrient-rich formula for healthy growth and vitality.', 'uploads/product/1714723158.webp', NULL, NULL, NULL, '2024-05-03 11:59:18', '2024-07-03 14:50:22'),
(66, 1, 3, 6, NULL, 'Orijen Original Grain Free Dog Food', 'orijen-original-grain-free-dry-dog-food-6kg-all-breeds-ages', 'Orijen', '<p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish. From Dachshunds To Great Danes, All Dogs Possess A Biological Need For A Diet Rich And Varied In Meat. With 38% richly nourishing protein and 85% quality animal ingredients, ORIJEN nourishes dogs of all breeds and life stages according to their evolutionary and biological needs 2/3 of meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 meat ingredients. 1/3 of meat is air-dried at 90°C from fresh chicken, turkey, and fish to create a concentrated source of richly nourishing protein. Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus whole fish and cage-free eggs provide a natural source of virtually every nutrient your dog needs. Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for even the fussiest of dogs.</p>', '<p><strong>BIOLOGICALLY APPROPRIATE | ALL LIFE STAGES</strong></p><p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish.&nbsp;From Dachshunds To Great Danes, All Dogs Possess A Biological Need For A Diet Rich And Varied In Meat.</p><ul><li>With 38% richly nourishing protein and 85% quality animal ingredients, ORIJEN nourishes dogs of all breeds and life stages according to their evolutionary and biological needs</li><li>2/3 of meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 meat ingredients.</li><li>1/3 of meat is air-dried at 90°C from fresh chicken, turkey, and fish to create a concentrated source of richly nourishing protein.</li><li>Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus whole fish and cage-free eggs provide a natural source of virtually every nutrient your dog needs.</li><li>Infusions of freeze-dried chicken and turkey liver enhance flavour naturally, making ORIJEN deliciously tasty for even the fussiest of dogs.</li></ul><h4><strong>&nbsp;</strong></h4><p><strong>RICH IN MEAT (85%) AND PROTEIN (38%)</strong><br>All dogs have sharp teeth and a body designed to metabolize protein and fat from meat. ORIJEN is designed to nourish your dog according to his evolutionary and biological needs.</p><ul><li>85% meat (2/3 FRESH or RAW and 1/3 gently dehydrated)</li><li>38% richly nourishing meat protein</li><li>15% vegetables &amp; fruit</li><li>No grains or gluten</li></ul><h4><strong>&nbsp;</strong></h4><p><strong>HIGH FRESH MEAT INCLUSIONS</strong><br>Meat is the foundation of award-winning ORIJEN foods.</p><ul><li>2/3 of meat is FRESH or RAW, supplying your dog with essential nutrients in their most natural and nourishing form.</li><li>1/3 of meat is dehydrated at a low temperature for a concentrated source of nourishing protein that cannot be supplied by fresh meats alone.</li></ul><h4><strong>&nbsp;</strong></h4><p><strong>AN ABUNDANT VARIETY OF MEAT</strong><br>In nature, dogs benefit from an assortment of meat. This variety is often lost in conventional dog foods which typically feature a single animal ingredient, such as chicken or lamb, that is highly processed and seldom fresh. That’s why award-winning ORIJEN Original features a rich diversity of fresh meat in Biologically Appropriate WholePrey ratios to nourish for peak health:</p><ul><li>Fresh free-run chicken from prairie farms</li><li>Fresh free-run turkey from prairie farms</li><li>Fresh, whole Pacific herring and flounder, wild-caught from North Vancouver Island</li></ul><h4><strong>&nbsp;</strong></h4><p><strong>WHOLEPREY MEAT RATIOS</strong><br>WholePrey represents the evolution of ORIJEN foods, incorporating fresh meat, organs, and cartilage or bone in ratios that mirror nature and eliminate the need for long lists of synthetic supplements.</p><ul><li>Meat – essential for protein and fat as well as vitamins A, B, D, and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium, and zinc.</li><li>Organs – packed with virtually every nutrient your dog needs to thrive, including vitamins, minerals, healthy fats, and amino acids.</li><li>Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium, and potassium in natural form your dog’s body can easily absorb.</li></ul><p><br><strong>ONLY 1 SUPPLEMENT — ZINC</strong></p><p>In nature there are no synthetic supplements, so dogs and wolves derive their complete nutritional needs naturally by consuming whole animals which contain all of the nutrients they need to thrive. That’s why you won’t find long lists of synthetics in ORIJEN dog foods. Loaded with richly nourishing ratios of fresh meat, organs, cartilage and bones plus fresh whole fish and whole eggs, ORIJEN provides a natural source of virtually every nutrient your dog needs to thrive.</p><h4>Ingredients &amp; Analysis</h4><p><strong>85% QUALITY ANIMAL INGREDIENTS | 15% VEGETABLES &amp; FRUIT</strong> Fresh chicken meat (13%), fresh turkey meat (7%), fresh cage-free eggs (7%), fresh chicken liver (6%), fresh whole herring (6%), fresh whole flounder (5%), fresh turkey liver (5%), fresh chicken necks (4%), fresh chicken heart (4%), fresh turkey heart (4%), chicken (dehydrated, 4%), turkey (dehydrated, 4%), whole mackerel (dehydrated, 4%), whole sardine (dehydrated, 4%), whole herring (dehydrated, 4%), whole red lentils, whole green lentils, whole green peas, lentil fibre, whole chickpeas, whole yellow peas, whole pinto beans, whole navy beans, herring oil (1%), chicken fat (1%), chicken cartilage (1%), chicken liver (freeze-dried), turkey liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole Red Delicious apples, fresh whole Bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole Saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg.</p>', 549, 499, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Orijen Original Grain Free Dry Dog Food for All Breeds & Ages', 'Orijen Original Grain Free Dry Dog Food', 'Discover the ultimate grain-free food for dogs of all breeds and ages with Orijen Original Dry Dog Food. This premium dog food promotes vitality and nourishes your furry friend.', 'uploads/product/1714727840.webp', NULL, NULL, NULL, '2024-05-03 13:17:20', '2024-07-03 14:50:46'),
(67, 1, 4, 18, NULL, 'Nutricoat Advance – Omega6 and Omega3 Fatty Acids Liquid Supplement', 'nutricoat-advance-omega6-and-omega3-fatty-acids-liquid-supplement', 'Petcare', '<p>To create a balanced diet among dogs, they must have fats included in their diet. Since the body can’t produce some fatty acids on its own, they are known as “essential” fatty acids as they are the building blocks of fat.&nbsp;</p><p>Dogs need both omega-3 and omega-6 fatty acids. These vital fatty acids play critical roles in cell membranes, the immunological system, and the circulatory system.</p><p>Omega-3 fatty acids are excellent for the body and brain. In addition to supporting healthy joints, moisturizing healthy skin, and relieving itchy skin, these oils have anti-inflammatory effects.</p><p>Omega-6 fatty acids play a role in several physiological functions, such as blood coagulation and skin health. Both categories are equally significant, and it’s crucial to consider the overall ratio of omega 10:1 fatty acids.</p><p>Pet Care- <strong>Nutri Coat Advance</strong> is a unique concentrated fatty acid supplement for allergies and other skin-related conditions. The fatty acids Omega 6 and Omega 3 are present in a 10:1 ratio to promote skin health and effectively manage dermatological issues.</p>', '<h3>Improve your pet’s skin health by adding Nutri Coat Advance to his diet</h3><p>To create a balanced diet among dogs, they must have fats included in their diet. Since the body can’t produce some fatty acids on its own, they are known as “essential” fatty acids as they are the building blocks of fat.&nbsp;</p><p>Dogs need both omega-3 and omega-6 fatty acids. These vital fatty acids play critical roles in cell membranes, the immunological system, and the circulatory system.</p><p>Omega-3 fatty acids are excellent for the body and brain. In addition to supporting healthy joints, moisturizing healthy skin, and relieving itchy skin, these oils have anti-inflammatory effects.</p><p>Omega-6 fatty acids play a role in several physiological functions, such as blood coagulation and skin health. Both categories are equally significant, and it’s crucial to consider the overall ratio of omega 10:1 fatty acids.</p><p>Pet Care- <strong>Nutri Coat Advance</strong> is a unique concentrated fatty acid supplement for allergies and other skin-related conditions. The fatty acids Omega 6 and Omega 3 are present in a 10:1 ratio to promote skin health and effectively manage dermatological issues.</p><p>Nutri Coat Advance has several beautiful advantages for your pet, like:</p><ul><li>Improves your pet’s metabolism and offers protection from many diseases</li><li>Enhances Your Dog’s Metabolism</li><li>Protects against a variety of infections</li><li>Maintains healthy skin and coat</li><li>Gives lustrous coat</li><li>Effective treatment for most other fungal skin infections as well as Pyoderma, Mange, Yeast Infection, Flea Bite Dermatitis, and Atopy.</li></ul><p>It is a good complement for all dog skin conditions. So, to effectively treat dermatological issues and promote skin health, you should purchase this supplement from Remediovet. Giving your dog a skin and coat supplement may hold the secret to improving their comfort and health. In the long term, your dog will appreciate you because they will scratch and sweat less.</p><p>Contact our experts and let them help you and your pets live a happy and joyful life!</p><h4>Ingredients &amp; Analysis</h4><p>Concentrated Fatty Acids supplement that can be administered to dogs to act as treatment for allergies and other skin related disorders. Petcare NutriCoat Advance contains all the crucial concentrated fatty acids to help your pet fight allergies and skin problems</p>', 470, 360, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Nutri Coat Advance - Omega6 and Omega3 Fatty Acids Liquid Supplement - Remediovet', 'Nutri Coat Advance', 'For dogs suffering from allergies or other skin conditions, supplements containing concentrated fatty acids are ideal. The Petcare NutriCoat Advance contains all the essential fatty acids your pet needs to fight allergies and skin problems.', 'uploads/product/1714728621.webp', NULL, NULL, NULL, '2024-05-03 13:30:21', '2024-07-03 14:51:13'),
(68, 1, 4, 20, NULL, 'Calcium Syrup For Dogs & Cats Yummy Chicken Flavour', 'calcium-syrup-for-dogs-and-cats-yummy-chicken-flavour', 'Remediovet', '<p>Is your pet lacking calcium in its diet ?<br>Remediovet Remcal comes with Calcium, Vitamin B3 and D12 to support healthy growth. Remcal is recommended by vets for healthy growth and as a supplement in dealing with calcium deficiency where symptoms such as muscle twitching, loss of appetite, weakness, and listlessness are shown. Simply add in feed or water and serve.</p>', '<p>Is your pet lacking calcium in its diet ?<br>Remediovet Remcal comes with Calcium, Vitamin B3 and D12 to support healthy growth. Remcal is recommended by vets for healthy growth and as a supplement in dealing with calcium deficiency where symptoms such as muscle twitching, loss of appetite, weakness, and listlessness are shown. Simply add in feed or water and serve.</p><h3>The best calcium supplements for your dog’s Health</h3><p>As a responsible pet owner, you must ensure that your beloved furry friend is healthy and strong. Unfortunately, in India, it is common for pets to suffer from a lack of calcium and phosphorus.</p><p>But fear not, as we have a solution: our Calcium Syrup For Dogs &amp; Cats, which comes with a delicious chicken flavor that your dog will love. Incorporating this supplement into your pet’s diet can help them maintain good health and prevent the negative effects of calcium and phosphorus deficiency.</p><p>This supplement contains the following ingredients:</p><ul><li>Calcium</li><li>Phosphorous</li><li>Vitamin D3</li><li>Vitamin B12<br>The use of Dog Calcium Supplements can have a significant impact on the overall health of your pet. These supplements aid in the maintenance of gut health and promote healthy digestion. The other benefits include:<br>Supplementing with calcium can help maintain and develop their skeletal system, which is key to their overall health.</li></ul><p>A calcium supplement can benefit your furry friend in terms of maintaining good eyesight.<br>Adding calcium to a pet’s diet can play a significant role in strengthening and fortifying their immune system, leading to increased resilience against illnesses and diseases.<br>Calcium supplements are beneficial for pets as they help strengthen their bones and teeth.<br>Calcium supplements are important for your pet’s optimal body growth and digestion.</p><p>Administering the right amount of calcium supplement is crucial for your pet’s health. You can seek guidance from veterinary experts or consult your local veterinarian to ensure you are giving the appropriate dosage.</p><p>&nbsp;</p>', 255, 199, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Vet Approved Calcium Supplement for Dogs and Cats | Remediovet', 'calcium syrup for Dogs', 'This dog calcium supplement contains the recommended amount of calcium and phosphorus in a tasty chicken flavour. Order now Calcium Syrup for Dogs!', 'uploads/product/1714729088.webp', NULL, NULL, NULL, '2024-05-03 13:38:08', '2024-07-03 14:53:10'),
(69, 1, 3, 11, '32423', 'Multivitamin Syrup For Dogs & Cats Yummy Chicken Flavour', 'multivitamin-syrup-for-dogs-cats-yummy-chicken-flavour', 'Remediovet', '<p>Promote healthy growth for your furry friend with this powerful multivitamin combo with ingredients like L Carnitine to promote heart health and amino acids such as L Leucine and L Lysine. Remediovet Remvit syrup is recommended by veterinarians for healthy growth and faster recovery and it makes an excellent alternative to meat if you are feeding your pet a vegetarian diet.</p>', '<p>Promote healthy growth for your furry friend with this powerful multivitamin combo with ingredients like L Carnitine to promote heart health and amino acids such as L Leucine and L Lysine. Remediovet Remvit syrup is recommended by veterinarians for healthy growth and faster recovery and it makes an excellent alternative to meat if you are feeding your pet a vegetarian diet.</p><p>&nbsp;</p><h3>Get the essential and nutrition rich supplement for your pet</h3><p>Do you know just as humans need daily multivitamins to get the required nutrients and minerals that they cannot get from their diet, animals also do?&nbsp;</p><p>Yes, you read that right!&nbsp;</p><p>All pets, including cats and dogs, require specific vitamins and minerals to maintain their health, and they often obtain these nutrients through food, namely from a comprehensive and balanced diet. If you are feeding your dog a commercial diet that has been approved and regulated (look for the ANFAAC label), the food ought to be complete regarding the vitamins and minerals.&nbsp;</p><p>Dogs can benefit from multivitamins in various ways, including by encouraging good skin, a beautiful coat, strong bones and joints, healthy teeth, and increased energy.</p><p>The benefits of <strong>multivitamin syrup for puppy</strong> include:</p><ul><li>Better functionality of the immune system</li><li>Combats a vitamin/mineral deficiency</li><li>Maintain healthy digestion</li><li>Improve cognitive function</li><li>Enhance joint fluidity</li><li>Maintain a healthy brain, liver, heart, and vision.</li></ul><p>If you are wondering which <strong>dog multivitamin</strong> will be the best for them? Then we’ve got a solution for that too!</p><p>Several supplements are available to maintain various facets of your pet’s health. There are dog supplements for joints, dog supplements for skin, etc.</p><p>Remediovet is a brand that deals in essentials that improve your pet’s health and overall well-being.</p><p>Remediovet Remvit <strong>dog vitamin syrup</strong> is the only syrup your pet needs to promote their overall well-being. This syrup contains ingredients like L Carnitine to promote heart health and amino acids such as L Leucine and L Lysine that strengthen their bones.</p><p>Key features:</p><ul><li>Rich in vitamins and minerals that promote healthy body maintenance and growth.</li><li>Blending essential components with additional nutrients promotes quicker illness recovery.</li><li>Helpful in maintaining the wellbeing of a fussy eater.</li><li>Highly pleasant thick syrup that encourages joint health and keeps pets active</li></ul><p>This multivitamin and amino acid syrup includes Vitamin A palmitate, Vitamin D3, Vitamin E, Vitamin B1, Vitamin B2, Folic acid, and other essential vitamins. It gives your dog all the vital elements required for a healthy diet.&nbsp;</p><p>Therefore, provide them with a high-quality diet and the best multivitamin syrup before it’s too late.</p>', 325, 299, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Dog Multivitamin | Dog Vitamin Syrup | Chicken Flavour', 'Dog Vitamin Syrup', 'Get the best multivitamin for dogs and increase your dog\'s health and vitality! Our Multivitamin Syrup for Puppy provides essential vitamins to keep your puppy healthy.', 'uploads/product/1714729390.webp', NULL, NULL, NULL, '2024-05-03 13:43:10', '2024-07-15 11:33:19'),
(70, 2, 30, 38, NULL, 'Cat Bungalow', 'cat-bungalow', 'Petique', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy private bottom level or bask in the sun on the upper rooftop lounge. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p>', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy private bottom level or bask in the sun on the upper rooftop lounge. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p><ul><li>Your cat will enjoy prowling through the Feline Penthouse, relaxing on the roof, and scratching their favorite scratchboard.</li><li>Place product on a leveled floor or ground for stability. Do not allow children to climb or play inside the house to prevent possible danger.</li><li>For Pets Only Keep in a dry area.</li><li>Do not rinse or wash.</li><li>Do not leave around heat the Cardboard will warp and soften.</li></ul><h4><strong>Ingredients &amp; Analysis</strong></h4><ul><li>Made with 100% eco-friendly material.</li><li>Safe for cats to bite and chew.</li></ul>', 5398, 4599, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Cat Bungalow: Your Feline Friend\'s Ultimate Cozy Haven', 'Cat Bungalow', 'Create a paradise for your cat with Cat Bungalow\'s exquisite selection. Let your cat relax in the cozy private bottom. Made with 100% eco-friendly material.', 'uploads/product/1714739429.webp', NULL, NULL, NULL, '2024-05-03 16:30:29', '2024-06-19 14:54:02'),
(71, 2, 30, 38, NULL, 'Cat Box', 'cat-box', 'Petique', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy cat bungalow with in-built scratchers. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p>', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy cat bungalow with in-built scratchers. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p><ul><li>Your cat will enjoy prowling through the Feline Penthouse, relaxing on the roof, and scratching their favorite scratchboard</li><li>Place product on a leveled floor or ground for stability. Do not allow children to climb or play inside the house to prevent possible danger</li><li>For Pets Only Keep in a dry area</li><li>Do not rinse or wash</li><li>Do not leave around heat The Cardboard will warp and soften</li></ul><h4>Ingredients &amp; Analysis</h4><ul><li>Made with 100% eco-friendly material</li><li>Safe for cats to bite and chew</li></ul>', 5398, 4599, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'The Perfect Cardboard Cat House for Your Feline Friend', 'Cat House', 'A delightful and eco-friendly cardboard box cat house that offers comfort and playfulness to your pet. Watch your cat explore, nap, and play in this innovative cat house, providing them with endless joy.', 'uploads/product/1714997484.webp', NULL, NULL, NULL, '2024-05-03 16:35:18', '2024-07-03 14:56:10'),
(72, 2, 30, 38, NULL, 'Cat Penthouse', 'cat-penthouse', 'Petique', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy private bottom level or bask in the sun on the upper rooftop lounge. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p>', '<p>Did you know that cardboard is the perfect texture for your cat to bite and scratch ? Cardboards&nbsp;make an excellent material and great fun to play with material, helping reduce stress and anxiety for your cats. Now your cat can relax in the cozy private bottom level or bask in the sun on the upper rooftop lounge. Made with quality and love, our sustainable houses are non-toxic and safe if accidentally consumed.</p><ul><li>Your cat will enjoy prowling through the Feline Penthouse, relaxing on the roof, and scratching their favorite scratchboard.</li><li>Place product on a leveled floor or ground for stability. Do not allow children to climb or play inside the house to prevent possible danger.</li><li>For Pets Only Keep in a dry area Do not rinse or wash Do not leave around heat The Cardboard will warp and soften.</li></ul><h4>Ingredients &amp; Analysis</h4><ul><li>Made with 100% eco-friendly material</li><li>Safe for cats to bite and chew</li></ul>', 6838, 5799, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Elevate Your Feline\'s Lifestyle with the Ultimate Cat Penthouse', 'Cat Penthouse', 'Treat your beloved cat to a luxurious experience with our exquisite Cat Penthouse. Designed to pamper your pet, this high-end cat furniture offers comfort, style, and a prime view of their domain.', 'uploads/product/1714739976.webp', NULL, NULL, NULL, '2024-05-03 16:39:36', '2024-07-03 14:56:28'),
(73, 2, 28, 32, NULL, 'Hemp Gravy For Cats With Real Tuna & Whitefish', 'hemp-gravy-for-cats-with-real-tuna-whitefish', 'Petique', '<p>atisfy your feline friend’s taste buds with a mouth-watering blend of real tuna and whitefish.<br>– A perfect balance of flavors that will have your cat looking forward to mealtime.</p><ul><li>Nutrient-rich hemp seed oil:&nbsp;Blended with premium quality hemp seed oil to provide essential omega fatty acids for your cat’s overall health.&nbsp;Promotes healthy skin, shiny coat, and joint mobility to help your cat feel more comfortable.</li><li>Hydrate:&nbsp;Maintain your cat’s hydration levels with the high moisture content of our wet food, which supports urinary tract health and aids digestion. Veterinarian approved formula,&nbsp;Developed in conjunction with veterinarians to ensure optimal nutritional profiles for your cat’s specific needs.</li></ul>', '<p>Introducing Premium Wet Cat Food with Tuna, Whitefish and Hemp Seed Oil:</p><p>– Satisfy your feline friend’s taste buds with a mouth-watering blend of real tuna and whitefish.<br>– A perfect balance of flavors that will have your cat looking forward to mealtime.</p><ul><li>Nutrient-rich hemp seed oil:&nbsp;Blended with premium quality hemp seed oil to provide essential omega fatty acids for your cat’s overall health.&nbsp;Promotes healthy skin, shiny coat, and joint mobility to help your cat feel more comfortable.</li><li>Hydrate:&nbsp;Maintain your cat’s hydration levels with the high moisture content of our wet food, which supports urinary tract health and aids digestion. Veterinarian approved formula,&nbsp;Developed in conjunction with veterinarians to ensure optimal nutritional profiles for your cat’s specific needs.</li><li>Rich in protein:&nbsp;Packed with premium animal protein sources to support muscle growth and energy.</li><li>Easy to serve:&nbsp;Convenient, easy-to-open packaging makes feeding hassle-free, making mealtimes enjoyable for you and your cat.</li><li>Sustainable Sourcing:&nbsp;Sourcing responsibly, with a commitment to sustainable fishing practices to protect our oceans for future generations.</li><li>Cat approved textures:&nbsp;Designed with textures cats love, guaranteed to devour every bite.</li></ul><p>Give your beloved feline friend the gift of a delicious, nutritious, and satisfying meal experience. Try our wet cat food with tuna, whitefish and hemp oil today and watch your cat thrive!</p><h4>Ingredients &amp; Analysis</h4><ul><li>100% Hemp Seed Oil</li><li>Real Tuna</li><li>Whitefish Chunks</li><li>Eggs</li><li>Rice</li><li>Vegetables</li><li>Gravy</li><li>Natural Flavours</li><li>Organic Vitamins &amp; Minerals</li></ul>', 455, 415, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Hemp Gravy For Cats With Real Tuna & Whitefish', 'Hemp Gravy For Cats', 'Introducing premium wet cat food with tuna, whitefish and Hemp seed oil: – Satisfy your feline friend’s taste buds with a mouth-watering blend of real tuna and whitefish.', 'uploads/product/1714740173.webp', NULL, NULL, NULL, '2024-05-03 16:42:53', '2024-07-03 14:56:42'),
(77, 1, 4, 13, '213213gh', 'Fiprofort Tick n Flea Spot-on For Cats', 'fiprofort-tick-n-flea-spot-on-for-cats', 'Savavet', '<p>The presence of fleas proves to be a bothersome issue for cats, leading to itching and discomfort. Furthermore, these pests can serve as potential carriers of various diseases.<br>Consequently, it is imperative to diligently care for your pets year-round to avert infestations.</p><p>As a conscientious pet owner, you may have experimented with various treatments and found yourself questioning the efficacy of each. The good news is that we have a solution for you.</p><p>FRONTLINE Spot On Flea and Tick Treatment consistently ranks as the most effective choice, demonstrating ease of application and remarkable results.</p><p>FIPROFORT PLUS is a veterinarian-approved medication designed to disrupt the life cycle of fleas and prevent re-infestation. This product comes with our strong endorsement, offering you peace of mind.</p>', '<p>The presence of fleas proves to be a bothersome issue for cats, leading to itching and discomfort. Furthermore, these pests can serve as potential carriers of various diseases.<br>Consequently, it is imperative to diligently care for your pets year-round to avert infestations.</p><p>As a conscientious pet owner, you may have experimented with various treatments and found yourself questioning the efficacy of each. The good news is that we have a solution for you.</p><p>FRONTLINE Spot On Flea and Tick Treatment consistently ranks as the most effective choice, demonstrating ease of application and remarkable results.</p><p>FIPROFORT PLUS is a veterinarian-approved medication designed to disrupt the life cycle of fleas and prevent re-infestation. This product comes with our strong endorsement, offering you peace of mind.</p><h4>Application Instructions:</h4><p>Apply Fiprofort to the back of your cat’s neck or shoulder blades to prevent ingestion. This treatment eradicates all stages of fleas, including those in your cat’s immediate environment, for a minimum of one month.</p><p>Additionally, it effectively manages and treats flea allergy dermatitis while providing up to two weeks of protection against paralysis ticks. <strong>Fiprofort spot on for cats</strong> acts rapidly and maintains its effectiveness over an extended period.</p><p>Hence, if you detect the presence of ticks and fleas around your cat, do not hesitate to acquire Fiprofort Plus.</p><h4>Ingredients &amp; Analysis</h4><p>This spot-on contains Fipronil that paralyzes &amp; kills adult fleas&nbsp; and ticks and S-methoprene, an insect growth hormone regulator that breaks the life cycle of fleas. It offers one-month protection from fleas and ticks.</p>', 210, 149, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Fiprofort Tick n Flea Spot-On Treatment for Your Cat', 'Fiprofort Tick n Flea Spot-On', 'Choose the safe option for your cats and protect them from ticks and fleas with Fiprofort Tick and Flea Spot-on. Give us a call now to find the perfect solution for your furry friends.', 'uploads/product/1714976222.webp', NULL, NULL, NULL, '2024-05-06 10:17:02', '2024-07-15 08:55:19'),
(78, 2, 28, 32, NULL, 'Applaws All Natural Tuna in Jelly Kitten Wet Food 70g', 'applaws-all-natural-tuna-in-jelly-kitten-wet-food-70g', 'Applaws', '<p>With real Tuna, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for kittens of all breeds.</p>', '<p>With real Tuna, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for kittens of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Tuna Fillet, Fish Broth, Rice. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 14%, Crude Fat (min) 0.1%, Crude Fiber (max) 0.2%, Moisture (max) 84%, Ash (max) 2%</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws All Natural Tuna in Jelly Kitten Wet Food - Remediovet', 'Kitten Wet Food', 'Applaws Tuna in Jelly is made solely from the ingredients listed, making it a completely natural complementary food for kittens. AIt is also suitable for all breeds. Order now', 'uploads/product/1714976472.webp', NULL, NULL, NULL, '2024-05-06 10:21:12', '2024-07-03 14:58:16'),
(79, 2, 28, 32, NULL, 'Applaws All Natural Chicken Breast in Broth Kitten Wet Food 70g', 'applaws-all-natural-chicken-breast-in-broth-kitten-wet-food-70g', 'Applaws', '<p>With real Chicken Breast, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for kittens of all breeds.</p>', '<p>With real Chicken Breast, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for kittens of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Chicken Breast, Chicken Broth, Rice, Rice Flour. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 10%, Crude Fat (min) 0.1%, Crude Fiber (max) 2%, Moisture (max) 88%.</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws All Natural Wet Food - Remediovet', 'Wet Cat Food', 'With real Chicken Breast, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape.', 'uploads/product/1714976684.webp', NULL, NULL, NULL, '2024-05-06 10:24:44', '2024-07-03 14:58:33'),
(80, 2, 28, 32, NULL, 'Applaws All Natural Tuna Mousse Cat Wet Food 70g', 'applaws-all-natural-tuna-mousse-cat-wet-food-70g', 'Applaws', '<p>With real Tuna, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real Tuna, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Fish Broth, Tuna Fillet, Sunflower Oil, Carrageenan, Locust Bean Gum. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 11%, Crude Fat (min) 1.5%, Crude Fiber (max) 1%, Moisture (max) 86%, Ash (max) 2%.</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws All Natural Tuna Mousse Cat Wet Food - Remediovet', 'Tuna Mousse Cat Wet Food', 'Now buy this delicious and nutritious All Natural Tuna Mousse Cat Wet Food which is made with 44% tuna. It is suitable for adult cats of all breeds. Order now!', 'uploads/product/1714976858.webp', NULL, NULL, NULL, '2024-05-06 10:27:38', '2024-07-03 14:58:45'),
(81, 2, 28, 32, NULL, 'Applaws All Natural Chicken Breast With Mango in Jelly Cat Wet Food 70g', 'applaws-chicken-breast-with-mango-in-jelly-cat-wet-food-70g', 'Applaws', '<p>With real Chicken breast and mango, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real Chicken breast and mango, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Chicken Breast, Mango, Veg Jellying Agent &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 9%, Crude Fat (min) 2%, Crude Fiber (max) 1%, Moisture (max) 88%, Ash (max) 2%.</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Food Chicken Breast with Mango in Jelly  - Remediovet', 'Applaws Cat Food', 'Now buy delicious and nutritious wet food made with 75% chicken breast and mango. It is a natural source of taurine and vitamins for overall health and well-being. Order now', 'uploads/product/1714976990.webp', NULL, NULL, NULL, '2024-05-06 10:29:50', '2024-07-03 14:59:00'),
(82, 2, 28, 32, NULL, 'Applaws All Natural Salmon Mousse Cat Wet Food 70g', 'applaws-all-natural-salmon-mousse-cat-wet-food-70g', 'Applaws', '<p>With real Salmon (44%), Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real Salmon (44%), Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in top shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Fish Broth, Salmon, Sunflower Oil, Carrageenan, Locust Bean Gum, Red Pepper Extract. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 9%, Crude Fat (min) 2%, Crude Fiber (max) 1%, Moisture (max) 88%, Ash (max) 2%.</p>', 155, 139, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws All Natural Salmon Mousse Cat Wet Food - Remediovet', 'Mousse Cat Wet Food', 'Applaws All Natural Salmon Cat Wet Food is a delicious and easy-to-digest mousse made with 95% salmon. It also has omega-3 fatty acids for healthy skin and coat. Order now', 'uploads/product/1714977257.webp', NULL, NULL, NULL, '2024-05-06 10:34:17', '2024-07-03 14:59:40'),
(83, 2, 28, 32, NULL, 'Applaws All Natural Sardine With Shrimp in Jelly Cat Wet Food 70g', 'applaws-all-natural-sardine-with-shrimp-in-jelly-cat-wet-food-70g', 'Applaws', '<p>With real 50% Sardine &amp; Shrimp, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in topshape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real 50% Sardine &amp; Shrimp, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 and Taurine that keeps your cat’s health in topshape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>&nbsp; 100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Sardine, Shrimp, Veg. Jellying Agent &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 15%, Crude Fat (min) 0.5%, Crude Fiber (max) 1%, Moisture (max) 82%, Ash (max) 2.5%.</p>', 135, 120, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Natural Sardine with Shrimp in Jelly Cat food - Remediovet', 'Jelly Cat food', 'Buy Applaws all natural cat wet food which is free from artificial colors, flavors, and preservatives. It takes essential care of your cat\'s health. Order now from RemedioVet.', 'uploads/product/1714977400.webp', NULL, NULL, NULL, '2024-05-06 10:36:40', '2024-07-03 14:59:51'),
(84, 2, 28, 32, NULL, 'Applaws All Natural Ocean Fish in Broth Cat Wet Food 70g', 'applaws-all-natural-ocean-fish-in-broth-cat-wet-food-70g', 'Applaws', '<p>With real 75% Mackerel and Tuna Fillet, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Taurine that keeps your cat’s health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real 75% Mackerel and Tuna Fillet, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Taurine that keeps your cat’s health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Mackerel, Tuna Fillet, Fish Broth, Rice &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 15%, Crude Fat (min) 0.5%, Crude Fiber (max) 1%, Moisture (max) 82%, Ash (max) 2.5%.</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Wet Food Natural Ocean Fish in Broth - RemedioVet', 'Applaws Cat Wet Food', '75% Mackerel and Tuna Fillet, Applaws offers human grade meat protein for your cat. It is a high-grade wet food for all adult cat breeds.', 'uploads/product/1714977674.webp', NULL, NULL, NULL, '2024-05-06 10:41:14', '2024-07-03 15:00:08');
INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `product_type_id`, `sku`, `name`, `slug`, `brand`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `weight_unit`, `weight`, `length_unit`, `length`, `date_available`, `height`, `width`, `min_quantity`, `tax`, `trending`, `featured`, `seasonal_special`, `status`, `offer_type`, `is_public`, `meta_title`, `meta_keyword`, `meta_description`, `featured_image`, `video_1`, `video_2`, `video_3`, `created_at`, `updated_at`) VALUES
(85, 2, 28, 32, NULL, 'Applaws All Natural Tuna Fillet With Prawns in Broth Cat Wet Food 70g', 'applaws-all-natural-tuna-fillet-with-prawns-in-broth-cat-wet-food-70g', 'Applaws', '<p>With real 52% Tuna Fillet, 24% Fish Broth and 23% Prawn, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 that keeps your cat’s health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real 52% Tuna Fillet, 24% Fish Broth and 23% Prawn, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Omega 3 that keeps your cat’s health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Tuna Fillet, Fish Broth, Prawn, Rice. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 15%, Crude Fat (min) 0.5%, Crude Fiber (max) 1%, Moisture (max) 82%, Ash (max) 2.5%.</p>', 150, 135, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Wet Food Tuna Fillet & Prawns in Broth - Remediovet', 'Applaws Cat Wet Food', 'With real 52% Tuna Fillet, 24% Fish Broth and 23% Prawn, Applaws offers human grade meat protein for your cat. Suitable for all adult cat breeds.', 'uploads/product/1714978119.webp', NULL, NULL, NULL, '2024-05-06 10:44:00', '2024-07-03 15:00:27'),
(86, 2, 28, 32, NULL, 'Applaws All Natural Chicken Breast in Broth Cat Wet Food 70g', 'applaws-all-natural-chicken-breast-in-broth-cat-wet-food-70g', 'Applaws', '<p>With real 75% Chicken breast, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Taurine that keeps your cat’s heart and eye health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real 75% Chicken breast, Applaws offers human grade meat protein for your cat. It is an excellent and natural source of Taurine that keeps your cat’s heart and eye health in shape. This yummy broth formulation helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Chicken Breast, Chicken Broth, Rice. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 19%, Crude Fat (min) 0.5%, Crude Fiber (max) 0.5%, Moisture (max) 81%, Ash (max) 1.5 %.</p>', 170, 157, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Wet Food Chicken Breast in Broth - Remediovet', 'Cat Wet Food Chicken Breast in Broth', 'Discover Applaws Cat Wet Food with Chicken Breast in Broth at Remediovet. Natural, delicious, and nutritious meal for your feline friend. Order now for a healthy cat diet!', 'uploads/product/1714978319.webp', NULL, NULL, NULL, '2024-05-06 10:51:59', '2024-07-03 15:01:11'),
(87, 2, 28, 32, NULL, 'Applaws All Natural Tuna Fillet with Sea Bream in Broth Adult Cat Wet Food – 70 Gm', 'applaws-all-natural-tuna-fillet-with-sea-bream-in-broth-adult-cat-wet-food-70-gm', 'Applaws', '<p>With real Tuna, Applaws offers human grade meat protein for your furball. It is an excellent and natural source of Omega 3 for cats. This yummy broth formulation with Sea Bream helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real Tuna, Applaws offers human grade meat protein for your furball. It is an excellent and natural source of Omega 3 for cats. This yummy broth formulation with Sea Bream helps keep your cat healthy and hydrated. This food can be paired with any dry food for a complete and balanced diet.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Tuna Whole meat, Fish Broth, Sea Bream. &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 19%, Crude Fat (min) 0.5%, Crude Fiber (max) 0.5%, Moisture (max) 81%, Ash (max) 1.5 %.</p>', 175, 150, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Food Tuna Fillet with Seabream in Broth - Remediovet', 'Applaws Cat Food Tuna Fillet', 'With real Tuna and Sea Bream fin Broth, this yummy Applaws 100% natural with no additives wet food helps keep your cat healthy and hydrated.', 'uploads/product/1714978760.webp', NULL, NULL, NULL, '2024-05-06 10:59:20', '2024-07-03 15:01:24'),
(88, 2, 28, 32, NULL, 'Applaws All Natural Chicken Breast with Liver in Jelly Adult Cat Wet Food – 70 Gm', 'applaws-all-natural-chicken-breast-with-liver-in-jelly-adult-cat-wet-food-70-gm', 'Applaws', '<p>With real Chicken breast, Applaws offers human grade meat protein for your furball. It is an excellent and natural source of Taurine for heart and eye health. This yummy broth formulation with real chicken liver helps keep your cat healthy and hydrated.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With real Chicken breast, Applaws offers human grade meat protein for your furball. It is an excellent and natural source of Taurine for heart and eye health. This yummy broth formulation with real chicken liver helps keep your cat healthy and hydrated.</p><p>Suitable for adult cats of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Chicken, Chicken Liver, Vegetable Jellying Agent &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 11%, Crude Fat (min) 0.5%, Crude Fiber (max) 1.5%, Salt (NaCl) (max) 0.5%</p>', 175, 150, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Chicken Breast with Liver in Jelly Cat Food - Remediovet', 'Jelly Cat Food', 'This yummy broth formulation with real chicken breast and liver helps keep your cat healthy and hydrated. Suitable for adult cats of all breeds.', 'uploads/product/1714978920.webp', NULL, NULL, NULL, '2024-05-06 11:02:00', '2024-07-03 15:01:38'),
(89, 2, 28, 32, NULL, 'Applaws All Natural Tuna Fillet with Anchovy in Broth Adult Cat Wet Food – 70 Gm', 'applaws-all-natural-tuna-fillet-with-anchovy-in-broth-adult-cat-wet-food-70-gm', 'Applaws', '<p>With 75% tuna fillet, Applaws tuna and anchovy broth offers human grade meat protein for your furball. It is an excellent and natural source of Taurine for heart and eye health. This yummy broth formulation helps keep your cat healthy and hydrated.</p><p>Suitable for adult cats of all breeds.</p>', '<p>With 75% tuna fillet, Applaws tuna and anchovy broth offers human grade meat protein for your furball. It is an excellent and natural source of Taurine for heart and eye health. This yummy broth formulation helps keep your cat healthy and hydrated.</p><p>Suitable for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Tuna, Fish Broth, Anchovy, Seaweed, Rice &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 18%, Crude Fat (min) 0.3%, Crude Fiber (max) 1%, Moisture 81%, Ash (max) 1.5 %.</p>', 175, 150, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Food Tuna Fillet with Seabream in Broth - Remediovet', 'Applaws Cat Food Tuna Fillet', 'With 75% tuna fillet, Applaws tuna and anchovy broth offers human grade meat protein with natural source of Taurine for heart and eye health for your cat.', 'uploads/product/1714979459.webp', NULL, NULL, NULL, '2024-05-06 11:10:59', '2024-07-03 15:02:08'),
(90, 2, 28, 32, NULL, 'Applaws All Natural Tuna Fillet with Shrimp in Broth Adult Cat Wet Food – 70 Gm', 'applaws-all-natural-tuna-fillet-with-shrimp-in-broth-adult-cat-wet-food-70-gm', 'Applaws', '<p>With 75% tuna fillet, Applaws tuna and shrimp broth offers human grade meat protein. It is an excellent and natural source of omega 3. This yummy broth formulation helps keep your cat healthy and hydrated.</p>', '<p>With 75% tuna fillet, Applaws tuna and shrimp broth offers human grade meat protein. It is an excellent and natural source of omega 3. This yummy broth formulation helps keep your cat healthy and hydrated.</p><p>Perfect for adult cats of all breeds.</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Tuna Wholemeat, Shrimp, Fish Broth &nbsp; Analytical Constituents: &nbsp;Crude Protein (min) 19%, Crude Fat (min) 0.5%, Crude Fiber (max) 1.0%, Moisture (max) 78%, Ash (max) 1.5 %.</p>', 175, 150, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Wet Food Natural Tuna Fillet with Shrimp - RemedioVet', 'Applaws Cat Wet Food', 'Applaws tuna and shrimp broth offers human grade meat protein. It is an excellent and natural source of omega and helps keep your cat healthy and hydrated.', 'uploads/product/1714979656.webp', NULL, NULL, NULL, '2024-05-06 11:14:16', '2024-07-03 15:02:17'),
(91, 2, 28, 32, NULL, 'Applaws All Natural Chicken & Pumpkin Broth With Brown Rice Wet Food For Adult Cats – 70 Gm', 'applaws-all-natural-chicken-pumpkin-broth-with-brown-rice-wet-food-for-adult-cats-70-gm', 'Applaws', '<p>With 75% chicken breast, Applaws chicken and pumpkin broth offers human grade meat protein. pumpkin is an excellent source of fibre and helps in proper stool formation. This yummy broth formulation helps keep your cat healthy and hydrated.</p>', '<p>With 75% chicken breast, Applaws chicken and pumpkin broth offers human grade meat protein. pumpkin is an excellent source of fibre and helps in proper stool formation. This yummy broth formulation helps keep your cat healthy and hydrated.</p><p>Suitable for adult cats of all breeds.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>100% Natural Human-Grade, High-Quality Ingredients: &nbsp;Chicken Breast, Chicken Broth, Brown Rice, Pumpkin. Analytical Constituents: &nbsp;Crude Protein (Min) 18.0%, Crude Fat (Min) 0.3%, Crude Fiber (Max) 1%, Moisture 81%, Ash (Max) 1.5 %. &nbsp;</p>', 175, 150, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Applaws Cat Food Natural Chicken & Pumpkin Broth With Brown Rice', 'Applaws Cat Food Natural Chicken', 'Applaws chicken and pumpkin broth offers human grade meat protein. This yummy broth formulation helps keep your cat healthy and hydrated.', 'uploads/product/1714979843.webp', NULL, NULL, NULL, '2024-05-06 11:17:23', '2024-07-03 15:02:45'),
(92, 2, 29, 35, NULL, 'Defender Nex Pro herbal dewormer for cats and kittens – 6 tablets', 'defender-nex-pro-herbal-dewormer-for-cats-and-kittens', 'Medfly', '<p>Defender Nex is a vet approved broad spectrum dewormer for cats and kittens. It is safe and effective against all worms including Tapeworms, Hookworms and Roundworms. It expels worms and parasites and helps to increase natural immunity and improve digestion. Defender Nex must be administered orally. Simply mix with food and serve. No starvation is needed before or after deworming. Adult Cats should be regularly dewormed at least four times a year i.e. deworm at every 3 months interval.</p>', '<p>Defender Nex is a vet approved broad spectrum dewormer for cats and kittens. It is safe and effective against all worms including Tapeworms, Hookworms and Roundworms. It expels worms and parasites and helps to increase natural immunity and improve digestion. Defender Nex must be administered orally. Simply mix with food and serve. No starvation is needed before or after deworming. Adult Cats should be regularly dewormed at least four times a year i.e. deworm at every 3 months interval.</p><p>Defender Nex is not intended for use in kittens less than 2 months of age or weighing less than 1.25 kg.</p><h4>Ingredients &amp; Analysis</h4><p>Composition:</p><ul><li>Papain 56000 FCC PU</li><li>Cellulase 500 CU</li><li>Cloves Extract 30 mg</li><li>Ginger Extract 10 mg</li><li>Pumpkin Seed 50 mg</li><li>Lactobacillus Sporogenes 1*103 CFU</li><li>Excipients Q.S</li></ul>', 290, 250, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Defender Nex Pro Natural Herbal Dewormer for Cats and Kittens', 'Defender Nex Pro', 'Looking for the best natural dewormer for cats? Discover effective and safe options to rid your feline companion of worms. Call Remediovet and buy herbal dewormer.', 'uploads/product/1714980567.webp', NULL, NULL, NULL, '2024-05-06 11:29:27', '2024-07-03 15:03:04'),
(93, 2, 29, 35, NULL, 'Defender Nex Dewormer for Cats and Kittens – 6 tablets', 'defender-nex-dewormer-for-cats-and-kittens', 'Medfly', '<p>Defender Nex is a vet approved broad spectrum dewormer for cats and kittens. It is safe and effective against all worms including Tapeworms, Hookworms and Roundworms. It expels worms and parasites and helps to increase natural immunity and improve digestion. Defender Nex must be administered orally. Simply mix with food and serve. No starvation is needed before or after deworming. Adult Cats should be regularly dewormed at least four times a year i.e. deworm at every 3 months interval.</p><p>&nbsp;Defender Nex is not intended for use in kittens less than 2 months of age or weighing less than 1.25 kg.</p>', '<p>Defender Nex is a vet approved broad spectrum dewormer for cats and kittens. It is safe and effective against all worms including Tapeworms, Hookworms and Roundworms. It expels worms and parasites and helps to increase natural immunity and improve digestion. Defender Nex must be administered orally. Simply mix with food and serve. No starvation is needed before or after deworming. Adult Cats should be regularly dewormed at least four times a year i.e. deworm at every 3 months interval.</p><p>&nbsp;Defender Nex is not intended for use in kittens less than 2 months of age or weighing less than 1.25 kg.</p><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Each chewable tablet contains: Praziquantel IP 20mg Pyrantel Pamoate 230 mg</p>', 290, 250, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Defender Nex Dewormer for Cats and Kittens - Remediovet', 'Defender Nex Dewormer for Cats', 'Recommended by veterinarians for tapeworm treatment for cats, this dewormer defender Nex is a must-use. It eliminates worms and parasites, boosts natural immunity and enhances digestion.', 'uploads/product/1714980722.webp', NULL, NULL, NULL, '2024-05-06 11:32:02', '2024-07-03 15:03:15'),
(94, 2, 28, 31, NULL, 'Orijen Cat & Kitten – Dry Food', 'orijen-cat-kitten-dry-food', 'Orijen', '<p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish.&nbsp;Cats And Kittens Are Built Like Their Ancestors, Possessing A Biological Need For A Diet Rich And Varied In Animal Protein.</p><ul><li>With 40% richly nourishing protein from quality animal ingredients, ORIJEN nourishes cats and kittens according to their evolutionary and biological needs.</li><li>2/3 of ORIJEN’s meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 ingredients.</li><li>1/3 of meat ingredients are gently dehydrated at 90°C from fresh, free-run chicken &amp; turkey, and wild-caught, fish to create a concentrated source of nourishing protein that cannot be supplied by fresh meat alone.</li><li>Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus wild-caught fish and cage-free eggs provide a natural source of virtually every nutrient your cat or kitten needs.</li><li>Generous infusions of gently freeze-dried liver enhance flavour and palatability naturally, making ORIJEN deliciously tasty, even for choosy eaters.</li></ul><p>The Near Eastern wildcat is the ancestor and closest relative of all domestic cats. While years of breeding have produced different kinds of cats, the internal workings of wild and domestic cats remain unchanged, so it’s no surprise that their food requirements remain the same too. Our five Biologically Appropriate principles are simple and mirror the freshness and variety of meat that cats have evolved to eat.</p>', '<p><strong>BIOLOGICALLY APPROPRIATE | FOR ALL LIFE STAGES</strong></p><p>Fresh Free-Run Chicken &amp; Turkey, Cage-Free Eggs, And Wild-Caught Fish.&nbsp;Cats And Kittens Are Built Like Their Ancestors, Possessing A Biological Need For A Diet Rich And Varied In Animal Protein.</p><ul><li>With 40% richly nourishing protein from quality animal ingredients, ORIJEN nourishes cats and kittens according to their evolutionary and biological needs.</li><li>2/3 of ORIJEN’s meat is FRESH (refrigerated, no preservatives) or RAW (flash-frozen, no preservatives), including the top 10 ingredients.</li><li>1/3 of meat ingredients are gently dehydrated at 90°C from fresh, free-run chicken &amp; turkey, and wild-caught, fish to create a concentrated source of nourishing protein that cannot be supplied by fresh meat alone.</li><li>Nutrient-dense WholePrey ratios of fresh meat, organs, and cartilage or bone, plus wild-caught fish and cage-free eggs provide a natural source of virtually every nutrient your cat or kitten needs.</li><li>Generous infusions of gently freeze-dried liver enhance flavour and palatability naturally, making ORIJEN deliciously tasty, even for choosy eaters.</li></ul><p>The Near Eastern wildcat is the ancestor and closest relative of all domestic cats. While years of breeding have produced different kinds of cats, the internal workings of wild and domestic cats remain unchanged, so it’s no surprise that their food requirements remain the same too. Our five Biologically Appropriate principles are simple and mirror the freshness and variety of meat that cats have evolved to eat.</p><p><strong>RICH IN MEAT (85%) AND PROTEIN (40%)</strong><br>All cats are adapted for a diet rich in meat and protein. Their sharp teeth and body mechanics are designed to metabolize protein and fat from meat. ORIJEN is created to nourish your cat or kitten according to her biological needs.</p><ul><li>85% quality animal ingredients (2/3 FRESH or RAW; 1/3 gently dehydrated)</li><li>40% richly nourishing protein</li><li>15% vegetables and fruit</li><li>NO grains or gluten</li></ul><p><strong>RICH MEAT INCLUSIONS (2/3)</strong><br>Meat is the foundation of award-winning ORIJEN.</p><ul><li>2/3 of the meat ingredients are FRESH or RAW, supplying your cat with essential nutrients in their most natural and nourishing form.</li><li>1/3 are dehydrated at a low temperature for a concentrated source of nourishing protein that cannot be supplied by fresh meat alone.</li></ul><p><strong>AN ABUNDANT VARIETY OF MEAT</strong><br>In nature, cats benefit from an assortment of meat. This variety is often lost in conventional cat foods which typically feature a single animal ingredient, such as chicken or lamb, that is highly processed and seldom fresh. That’s why award-winning ORIJEN Cat &amp; Kitten features a rich diversity of meat in Biologically Appropriate WholePrey ratios to nourish your cat or kitten’s peak growth and development:</p><ul><li>Fresh free-run chicken from regional farms</li><li>Fresh free-run turkey from regional farms</li><li>Fresh, whole, wild-caught flounder and herring</li></ul><p><strong>WHOLEPREY MEAT RATIOS</strong><br>WholePrey represents the evolution of ORIJEN foods, incorporating fresh meat, organs, and cartilage or bone in ratios that mirror nature and eliminate the need for long lists of synthetic supplements.</p><ul><li>Meat – essential for protein and fat as well as vitamins A, B, D, and K, copper, chromium, folic acid, iron, magnesium, potassium, selenium, and zinc.</li><li>Organs – packed with virtually every nutrient your cat needs to thrive including vitamins, minerals, healthy fats, and amino acids.</li><li>Cartilage or Edible Bone – a rich source of minerals including calcium, phosphorus, magnesium, and potassium in natural form your cat’s body can easily absorb.</li></ul><h4>Ingredients &amp; Analysis</h4><p>&nbsp;</p><p><strong>85% QUALITY ANIMAL INGREDIENTS | 15% VEGETABLES &amp; FRUIT</strong></p><p>Fresh chicken meat (18%), fresh turkey meat (7%), cage-free eggs (5%), fresh chicken liver (5%), fresh whole flounder (4%), fresh whole herring (4%), fresh turkey liver (4%), fresh chicken heart (4%), fresh turkey heart (4%), fresh chicken necks (4%), chicken (dehydrated, 4%), turkey (dehydrated, 4%), whole mackerel (dehydrated, 4%), whole sardine (dehydrated, 4%), whole herring (dehydrated, 4%), chicken fat (3%), whole red lentils, whole green peas, whole green lentils, whole chickpeas, whole yellow peas, lentil fibre, whole pinto beans, whole navy beans, chicken cartilage (dehydrated, 1%), herring oil (1%), chicken liver (freeze-dried), turkey liver (freeze-dried), fresh whole pumpkin, fresh whole butternut squash, fresh whole zucchini, fresh whole parsnips, fresh carrots, fresh whole Red Delicious apples, fresh whole Bartlett pears, fresh kale, fresh spinach, fresh beet greens, fresh turnip greens, brown kelp, whole cranberries, whole blueberries, whole Saskatoon berries, chicory root, turmeric root, milk thistle, burdock root, lavender, marshmallow root, rosehips, enterococcus faecium. ADDITIVES (per kg): Nutritional additives: Zinc chelate: 100 mg; Copper chelate: 11 mg; Choline chloride: 1200 mg.</p>', 2999, 2899, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Orijen Cat & Kitten Dry Food | Premium Nutrition for Cats', 'Orijen Cat & Kitten Dry Food', 'Shop Orijen Cat & Kitten Dry Food for optimal nutrition. Made with fresh, natural ingredients to support healthy growth and vitality. Perfect for all life stages. Buy now!', 'uploads/product/1714980956.webp', NULL, NULL, NULL, '2024-05-06 11:35:56', '2024-07-03 15:03:35'),
(95, 1, 41, 0, NULL, 'Dog Winter Sweatshirt – Snowflake', 'dog-winter-sweatshirt-snowflake', 'Pets way', '<p>This winter, take care of your dog by making them wear a dog winter sweatshirt that is not just only warm but also stylish. Therefore, you can elevate their wardrobe by purchasing this Snowflake sweatshirt from RemedioVet.</p><p>The sweatshirt is also 100% perfect for them to wear, even for outdoor use. Its color is beautiful, and the fleece material is soft and comfortable for all-day wear.</p><p>So the next time you are looking for a quality, comfortable and cozy sweatshirt, don’t forget to visit RemedioVet.</p>', '<p>This winter, take care of your dog by making them wear a dog winter sweatshirt that is not just only warm but also stylish. Therefore, you can elevate their wardrobe by purchasing this Snowflake sweatshirt from RemedioVet.</p><p>The sweatshirt is also 100% perfect for them to wear, even for outdoor use. Its color is beautiful, and the fleece material is soft and comfortable for all-day wear.</p><p>So the next time you are looking for a quality, comfortable and cozy sweatshirt, don’t forget to visit RemedioVet.</p><h4>Ingredients &amp; Analysis</h4><p><strong>Key features:</strong></p><ul><li><strong>Eye-catching design:</strong> Opt for a more visceral appeal instead of a color block description. “This vibrant sweatshirt with a pop of coral makes your pup the star of the winter walk!”</li><li><strong>Fresh &amp; fuss-free:</strong> Highlight the odor-fighting technology, Silvadur, which keeps your dog feeling fresh and combats canine odors, rather than only emphasizing “hygienic.”</li><li><strong>Easy potty breaks:</strong> A high tummy cut guarantees hassle-free, convenient potty breaks.</li><li><strong>Stay safe at night:</strong> Radiant rims help your pet stay safe and visible during evening walks.</li><li><strong>Easy to put on:</strong> Swap out the Velcro neck adjustment for a more user-friendly option. Velcro fastening that is simple to put on and take off for a snug fit.</li></ul><p><strong>Color:</strong> Sage<br><strong>Fabric:</strong> Fleece</p>', 599, 549, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Keep Your Pup Cozy with Our Stylish Dog Winter Sweatshirts', 'dog winter sweatshirts', 'Explore our collection of warm and fashionable dog winter sweatshirts designed to keep your furry friend snug and stylish during the colder months. Discover the perfect winter sweatshirt for your dog\'s comfort and style at RemedioVet.', 'uploads/product/1715573543.webp', NULL, NULL, NULL, '2024-05-13 08:12:23', '2024-07-03 15:03:57'),
(96, 1, 3, 6, NULL, 'Nurture Puppy Dog Food For Small & Medium Breeds', 'nurture-puppy-dog-food-for-small-medium-breeds', 'Wag & Love', '<ul><li>Dutch Chicken Delight: Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption. Perfectly suited to support your puppy’s rapid growth.</li><li>Veggies &amp; Ayurvedic Herbs: Nurture your pup’s development with a blend of wholesome veggies and Ayurvedic herbs. Abounding in antioxidants, vitamins, and minerals, this combination propels your puppy’s growth and well-being.</li><li>Purely Natural Goodness: Say no to artificial colors, preservatives, and flavors. Our commitment to purity ensures that your puppy enjoys a GMO-free diet, contributing to a lifetime of vitality and vigor.</li><li>Innovative “Mini-Pack” Marvel: Experience freshness like never before with our revolutionary “Mini-Pack.” Adorned with a sleek metal coating and N2/CO2 flushing, this packaging preserves nutrients, enhances palatability, and makes storage a breeze—ensuring every meal is a delightful treat.</li></ul><p>Opt for our Nurture Puppy blend, where the exceptional richness of Dutch chicken, the nourishment of veggies and Ayurvedic herbs, the dedication to natural goodness, and the innovation of the “Mini-Pack” combine to lay a strong foundation for your puppy’s healthy and happy future.</p>', '<figure class=\"table\"><table><tbody><tr><td><h4>&nbsp;</h4><ul><li>Dutch Chicken Delight: Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption. Perfectly suited to support your puppy’s rapid growth.</li><li>Veggies &amp; Ayurvedic Herbs: Nurture your pup’s development with a blend of wholesome veggies and Ayurvedic herbs. Abounding in antioxidants, vitamins, and minerals, this combination propels your puppy’s growth and well-being.</li><li>Purely Natural Goodness: Say no to artificial colors, preservatives, and flavors. Our commitment to purity ensures that your puppy enjoys a GMO-free diet, contributing to a lifetime of vitality and vigor.</li><li>Innovative “Mini-Pack” Marvel: Experience freshness like never before with our revolutionary “Mini-Pack.” Adorned with a sleek metal coating and N2/CO2 flushing, this packaging preserves nutrients, enhances palatability, and makes storage a breeze—ensuring every meal is a delightful treat.</li></ul><p>Opt for our Nurture Puppy blend, where the exceptional richness of Dutch chicken, the nourishment of veggies and Ayurvedic herbs, the dedication to natural goodness, and the innovation of the “Mini-Pack” combine to lay a strong foundation for your puppy’s healthy and happy future.</p></td></tr></tbody></table></figure><h4>Ingredients &amp; Analysis</h4><figure class=\"table\"><table><tbody><tr><td><p>Dutch Chicken Meat, Rice, Corn, Chicken Fat, Barley, Carob Pods, Flax Seed, Dried Beet Pulp (Prebiotic), Brewer’s Yeast (Probiotic), Norwegian Salmon Oil, Dried Eggs, Basil, Thyme..</p><p>Analytical Constituents:</p><ul><li>Crude Protein 30 %</li><li>Crude Fat 22 %</li><li>Crude Fibre 2.0 %</li><li>Calcium 1.1 %</li><li>Phosphorus 1.0 %</li><li>Total Omega-3,6 5.4 %</li><li>EPA 0.1 %</li><li>DHA 0.1 %</li><li>Energy (Kcal/Kg ME) 4115</li></ul></td></tr></tbody></table></figure>', 1490, 1341, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Nurture Puppy Dog Food For Small & Medium Breeds', 'Nurture Puppy Dog Food', 'Indulge your puppy with top-tier boneless Dutch chicken—remarkable for its lean protein content, easy digestibility, and optimal nutrient absorption.', 'uploads/product/1715576256.webp', NULL, NULL, NULL, '2024-05-13 08:57:36', '2024-07-03 15:04:16'),
(97, 1, 41, 0, NULL, 'Airline Approved Pet Travel Bag', 'airline-approved-pet-travel-bag', 'Petique', '<p>The ultimate airline approved pet travel bag is uniquely designed with four expandable sides to help reduce your pets stress and anxiety when traveling. Unlike other pet carriers, our lightweight, 2-in-1 pet carrier doesn’t bind your pets to one position. With multiple extendable sides, your pets can move around freely, broaden their view and have increased air circulation to sniff fresh air. When you think traveling with your pets has never been more convenient, the ultimate pet travel bag provides alternatives to carry your paw-tner around the world. Roll them around on four wheels with the telescoping handle or carry them using the durable straps.&nbsp;</p>', '<p>The ultimate airline approved pet travel bag is uniquely designed with four expandable sides to help reduce your pets stress and anxiety when traveling. Unlike other pet carriers, our lightweight, 2-in-1 pet carrier doesn’t bind your pets to one position. With multiple extendable sides, your pets can move around freely, broaden their view and have increased air circulation to sniff fresh air. When you think traveling with your pets has never been more convenient, the ultimate pet travel bag provides alternatives to carry your paw-tner around the world. Roll them around on four wheels with the telescoping handle or carry them using the durable straps.</p><p>FEATURES</p><ul><li>Plenty of ventilation on all sides</li><li>Completely collapsible – stores flat</li><li>Adjustable shoulder strap</li><li>Long comfortable carrying handles</li><li>Expandable with large pocket</li><li>360 Rotating wheel for easy maneuvering * Telescopic handle</li></ul><p>&nbsp;</p><p>CARE INSTRUCTIONS</p><ul><li>Spot clean only</li></ul><p>&nbsp;</p><h4>Ingredients &amp; Analysis</h4><p>Size:&nbsp;20.47”L x 11.81”W x 14.56”H</p>', 9999, 8399, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 'dog', '1', 'Elevate Your Adventures with Pet Travel Bags For Dog', 'Pet Travel Bags For Dog', 'Make travelling with your beloved pet a breeze with our specially designed pet travel bags. Explore a range of dog travel bags perfect for your on-the-go furry friend.', 'uploads/product/1715583993.webp', NULL, NULL, NULL, '2024-05-13 11:06:33', '2024-07-03 15:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_addons`
--

CREATE TABLE `product_addons` (
  `id` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `addon_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_addons`
--

INSERT INTO `product_addons` (`id`, `product_id`, `addon_id`, `created_at`, `updated_at`) VALUES
(4, 15, 16, '2024-05-08 07:31:51', '2024-05-08 07:31:51'),
(5, 14, 15, '2024-05-29 10:40:23', '2024-05-29 10:40:23'),
(8, 14, 24, '2024-05-30 04:34:06', '2024-05-30 04:34:06'),
(9, 14, 33, '2024-05-30 04:34:06', '2024-05-30 04:34:06'),
(10, 14, 35, '2024-05-30 04:34:06', '2024-05-30 04:34:06'),
(11, 14, 15, '2024-06-18 07:04:25', '2024-06-18 07:04:25'),
(12, 14, 24, '2024-06-18 07:04:25', '2024-06-18 07:04:25'),
(13, 14, 33, '2024-06-18 07:04:25', '2024-06-18 07:04:25'),
(14, 14, 35, '2024-06-18 07:04:25', '2024-06-18 07:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes_values`
--

CREATE TABLE `product_attributes_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes_values`
--

INSERT INTO `product_attributes_values` (`id`, `product_id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(17, 21, 1, 'Red', '2024-03-29 16:03:35', '2024-03-29 16:03:35'),
(18, 78, 2, '1 Can', '2024-05-08 09:47:27', '2024-05-08 09:47:27'),
(19, 78, 2, '24 Cans', '2024-05-08 09:47:27', '2024-05-08 09:47:27'),
(22, 96, 2, '2 Kg', '2024-05-13 08:58:23', '2024-05-13 08:58:23'),
(23, 96, 2, '7 Kg', '2024-05-13 08:58:23', '2024-05-13 08:58:23'),
(24, 16, 2, 'XS', '2024-05-13 09:06:29', '2024-05-13 09:06:29'),
(25, 16, 2, 'S', '2024-05-13 09:06:29', '2024-05-13 09:06:29'),
(26, 16, 2, 'M', '2024-05-13 09:06:29', '2024-05-13 09:06:29'),
(27, 16, 2, 'L', '2024-05-13 09:06:29', '2024-05-13 09:06:29'),
(28, 16, 2, 'XL', '2024-05-13 09:08:12', '2024-05-13 09:08:12'),
(29, 16, 2, '2XL', '2024-05-13 09:08:12', '2024-05-13 09:08:12'),
(30, 16, 2, '3XL', '2024-05-13 09:08:12', '2024-05-13 09:08:12'),
(31, 16, 2, '4XL', '2024-05-13 09:08:12', '2024-05-13 09:08:12'),
(32, 16, 2, '5XL', '2024-05-13 09:08:12', '2024-05-13 09:08:12'),
(33, 19, 2, 'XS', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(34, 19, 2, 'S', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(35, 19, 2, 'M', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(36, 19, 2, 'L', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(37, 19, 2, 'XL', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(38, 19, 2, '2XL', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(39, 19, 2, '3XL', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(40, 19, 2, '4XL', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(41, 19, 2, '5XL', '2024-05-13 09:16:24', '2024-05-13 09:16:24'),
(42, 20, 2, 'XS', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(43, 20, 2, 'S', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(44, 20, 2, 'M', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(45, 20, 2, 'L', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(46, 20, 2, 'XL', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(47, 20, 2, '2XL', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(48, 20, 2, '3XL', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(49, 20, 2, '4XL', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(50, 20, 2, '5XL', '2024-05-13 09:43:57', '2024-05-13 09:43:57'),
(60, 21, 2, 'Small Length 4 Feet, Width 2 cm', '2024-05-13 10:12:34', '2024-05-13 10:12:34'),
(61, 21, 2, 'Medium Length 4 Feet, Width 2.5 cm', '2024-05-13 10:12:34', '2024-05-13 10:12:34'),
(62, 21, 2, 'Large Length 4 Feet, Width 3.2 cm', '2024-05-13 10:12:34', '2024-05-13 10:12:34'),
(63, 21, 2, 'X-Large Length 4 Feet, Width 3.8 cm', '2024-05-13 10:12:34', '2024-05-13 10:12:34'),
(64, 25, 2, '2 Kg', '2024-05-13 10:18:08', '2024-05-13 10:18:08'),
(65, 25, 2, '7 Kg', '2024-05-13 10:18:08', '2024-05-13 10:18:08'),
(66, 27, 2, '2 Kg', '2024-05-13 10:22:21', '2024-05-13 10:22:21'),
(67, 27, 2, '7 Kg', '2024-05-13 10:22:21', '2024-05-13 10:22:21'),
(68, 29, 2, '2 Kg', '2024-05-13 10:26:28', '2024-05-13 10:26:28'),
(69, 29, 2, '7 Kg', '2024-05-13 10:26:28', '2024-05-13 10:26:28'),
(70, 29, 2, '12 Kg', '2024-05-13 10:26:28', '2024-05-13 10:26:28'),
(71, 30, 2, '800 Gms', '2024-05-13 10:30:06', '2024-05-13 10:30:06'),
(72, 30, 2, '3.5 Kg', '2024-05-13 10:30:06', '2024-05-13 10:30:06'),
(73, 30, 2, '12 Kg', '2024-05-13 10:30:06', '2024-05-13 10:30:06'),
(74, 31, 2, '800 Gms', '2024-05-13 10:33:18', '2024-05-13 10:33:18'),
(75, 31, 2, '3.5 Kg', '2024-05-13 10:33:18', '2024-05-13 10:33:18'),
(76, 31, 2, '12 Kg', '2024-05-13 10:33:18', '2024-05-13 10:33:18'),
(77, 32, 2, '800 Gms', '2024-05-13 10:44:15', '2024-05-13 10:44:15'),
(78, 32, 2, '3.5 Kg', '2024-05-13 10:44:15', '2024-05-13 10:44:15'),
(79, 32, 2, '12 Kg', '2024-05-13 10:44:15', '2024-05-13 10:44:15'),
(80, 23, 2, 'Small: Neck 28-40 cm, Strap - 2 cm', '2024-05-13 11:13:57', '2024-05-13 11:13:57'),
(81, 23, 2, 'Medium: Neck 35-50 cm, Strap - 2.5 cm', '2024-05-13 11:13:57', '2024-05-13 11:13:57'),
(82, 23, 2, 'Large: Neck 45-60 cm, Strap - 3.2 cm', '2024-05-13 11:13:57', '2024-05-13 11:13:57'),
(83, 23, 2, 'XL: Neck 55-70 cm, Strap - 3.8 cm', '2024-05-13 11:13:57', '2024-05-13 11:13:57'),
(84, 33, 2, '800 Gms', '2024-05-13 11:33:49', '2024-05-13 11:33:49'),
(85, 33, 2, '3.5 Kg', '2024-05-13 11:33:49', '2024-05-13 11:33:49'),
(86, 33, 2, '12 Kg', '2024-05-13 11:33:49', '2024-05-13 11:33:49'),
(87, 46, 2, 'Pack of 7', '2024-05-13 11:57:26', '2024-05-13 11:57:26'),
(88, 46, 2, 'Pack of 20', '2024-05-13 11:57:26', '2024-05-13 11:57:26'),
(89, 47, 2, '100 ml', '2024-05-13 12:52:07', '2024-05-13 12:52:07'),
(90, 47, 2, '200 ml', '2024-05-13 12:52:07', '2024-05-13 12:52:07'),
(91, 47, 2, '5 Litre', '2024-05-13 12:52:07', '2024-05-13 12:52:07'),
(92, 52, 2, 'Small', '2024-05-13 13:01:03', '2024-05-13 13:01:03'),
(93, 52, 2, 'Medium', '2024-05-13 13:01:03', '2024-05-13 13:01:03'),
(94, 52, 2, 'Large', '2024-05-13 13:01:03', '2024-05-13 13:01:03'),
(95, 52, 2, 'X-Large', '2024-05-13 13:01:03', '2024-05-13 13:01:03'),
(96, 52, 2, 'Unique', '2024-05-13 13:01:03', '2024-05-13 13:01:03'),
(97, 53, 2, 'Medium', '2024-05-13 13:06:02', '2024-05-13 13:06:02'),
(98, 53, 2, 'Large', '2024-05-13 13:06:02', '2024-05-13 13:06:02'),
(99, 53, 2, 'X-Large', '2024-05-13 13:06:02', '2024-05-13 13:06:02'),
(100, 62, 2, '340 Gms', '2024-05-13 13:15:41', '2024-05-13 13:15:41'),
(101, 62, 2, '2 Kg', '2024-05-13 13:15:42', '2024-05-13 13:15:42'),
(102, 62, 2, '6 Kg', '2024-05-13 13:15:42', '2024-05-13 13:15:42'),
(103, 62, 2, '11.4 Kg', '2024-05-13 13:15:42', '2024-05-13 13:15:42'),
(104, 63, 2, '340 Gms', '2024-05-13 13:19:43', '2024-05-13 13:19:43'),
(105, 63, 2, '2 Kg', '2024-05-13 13:19:43', '2024-05-13 13:19:43'),
(106, 63, 2, '6 Kg', '2024-05-13 13:19:43', '2024-05-13 13:19:43'),
(107, 63, 2, '11.4 Kg', '2024-05-13 13:19:43', '2024-05-13 13:19:43'),
(108, 64, 2, '6 Kg', '2024-05-13 13:22:36', '2024-05-13 13:22:36'),
(109, 64, 2, '11.4 Kg', '2024-05-13 13:22:36', '2024-05-13 13:22:36'),
(110, 65, 2, '340 Gms', '2024-05-13 13:25:59', '2024-05-13 13:25:59'),
(111, 65, 2, '2 Kg', '2024-05-13 13:25:59', '2024-05-13 13:25:59'),
(112, 65, 2, '6 Kg', '2024-05-13 13:25:59', '2024-05-13 13:25:59'),
(113, 65, 2, '11.4 Kg', '2024-05-13 13:25:59', '2024-05-13 13:25:59'),
(114, 66, 2, '340 Gms', '2024-05-13 13:33:09', '2024-05-13 13:33:09'),
(115, 66, 2, '2 Kg', '2024-05-13 13:33:09', '2024-05-13 13:33:09'),
(116, 66, 2, '6 Kg', '2024-05-13 13:33:09', '2024-05-13 13:33:09'),
(117, 66, 2, '11.4 Kg', '2024-05-13 13:33:09', '2024-05-13 13:33:09'),
(118, 66, 2, '17 Kg', '2024-05-13 13:33:09', '2024-05-13 13:33:09'),
(119, 73, 2, 'Pack of 7', '2024-05-13 13:43:50', '2024-05-13 13:43:50'),
(120, 73, 2, 'Pack of 20', '2024-05-13 13:43:50', '2024-05-13 13:43:50'),
(121, 94, 2, '1.8 Kg', '2024-05-13 14:02:00', '2024-05-13 14:02:00'),
(122, 94, 2, '5.4 Kg', '2024-05-13 14:02:00', '2024-05-13 14:02:00'),
(123, 95, 2, 'XS', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(124, 95, 2, 'S', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(125, 95, 2, 'M', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(126, 95, 2, 'L', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(127, 95, 2, 'XL', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(128, 95, 2, '2XL', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(129, 95, 2, '3XL', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(130, 95, 2, '4XL', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(131, 95, 2, '5XL', '2024-05-13 14:06:28', '2024-05-13 14:06:28'),
(132, 79, 2, '1 can', '2024-05-13 14:29:50', '2024-05-13 14:29:50'),
(133, 79, 2, '24 cans', '2024-05-13 14:29:50', '2024-05-13 14:29:50'),
(134, 80, 2, '1 Can', '2024-05-13 14:37:20', '2024-05-13 14:37:20'),
(135, 80, 2, '24 Cans', '2024-05-13 14:37:20', '2024-05-13 14:37:20'),
(136, 81, 2, '1 Can', '2024-05-13 14:43:43', '2024-05-13 14:43:43'),
(137, 81, 2, '24 Cans', '2024-05-13 14:43:43', '2024-05-13 14:43:43'),
(138, 82, 2, '1 Can', '2024-05-13 14:48:22', '2024-05-13 14:48:22'),
(139, 82, 2, '24 Cans', '2024-05-13 14:48:22', '2024-05-13 14:48:22'),
(140, 83, 2, '1 Can', '2024-05-13 14:51:57', '2024-05-13 14:51:57'),
(141, 83, 2, '24 Cans', '2024-05-13 14:51:57', '2024-05-13 14:51:57'),
(142, 85, 2, '1 Can', '2024-05-13 15:02:15', '2024-05-13 15:02:15'),
(143, 85, 2, '24 Cans', '2024-05-13 15:02:15', '2024-05-13 15:02:15'),
(144, 84, 2, '1 Can', '2024-05-13 15:11:34', '2024-05-13 15:11:34'),
(145, 84, 2, '24 Cans', '2024-05-13 15:11:34', '2024-05-13 15:11:34'),
(146, 86, 2, '1 Can', '2024-05-13 15:23:13', '2024-05-13 15:23:13'),
(147, 86, 2, '24 Cans', '2024-05-13 15:23:13', '2024-05-13 15:23:13'),
(148, 21, 1, 'Green', '2024-03-29 16:03:35', '2024-03-29 16:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_cat_mapings`
--

CREATE TABLE `product_cat_mapings` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_cat_mapings`
--

INSERT INTO `product_cat_mapings` (`id`, `pid`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 11, 2, '2024-04-24 11:52:01', '2024-04-24 11:52:01'),
(2, 11, 28, '2024-04-24 11:52:01', '2024-04-24 11:52:01'),
(3, 11, 29, '2024-04-24 11:52:01', '2024-04-24 11:52:01'),
(4, 3, 2, '2024-04-24 11:52:33', '2024-04-24 11:52:33'),
(5, 3, 30, '2024-04-24 11:52:33', '2024-04-24 11:52:33'),
(6, 3, 32, '2024-04-24 11:52:33', '2024-04-24 11:52:33'),
(7, 3, 35, '2024-04-24 11:52:33', '2024-04-24 11:52:33'),
(8, 1, 1, '2024-04-24 11:52:50', '2024-04-24 11:52:50'),
(9, 1, 3, '2024-04-24 11:52:50', '2024-04-24 11:52:50'),
(10, 1, 4, '2024-04-24 11:52:50', '2024-04-24 11:52:50'),
(11, 1, 6, '2024-04-24 11:52:50', '2024-04-24 11:52:50'),
(13, 14, 1, '2024-05-01 09:01:30', '2024-05-01 09:01:30'),
(14, 14, 11, '2024-05-01 09:01:30', '2024-05-01 09:01:30'),
(18, 15, 1, '2024-05-01 09:18:29', '2024-05-01 09:18:29'),
(20, 16, 1, '2024-05-01 09:27:05', '2024-05-01 09:27:05'),
(21, 16, 25, '2024-05-01 09:27:05', '2024-05-01 09:27:05'),
(26, 19, 1, '2024-05-02 04:54:10', '2024-05-02 04:54:10'),
(27, 19, 25, '2024-05-02 04:54:10', '2024-05-02 04:54:10'),
(28, 20, 1, '2024-05-02 05:01:59', '2024-05-02 05:01:59'),
(29, 20, 25, '2024-05-02 05:01:59', '2024-05-02 05:01:59'),
(30, 21, 1, '2024-05-02 05:17:11', '2024-05-02 05:17:11'),
(31, 22, 2, '2024-05-02 05:19:36', '2024-05-02 05:19:36'),
(32, 22, 30, '2024-05-02 05:19:36', '2024-05-02 05:19:36'),
(33, 23, 1, '2024-05-02 05:21:14', '2024-05-02 05:21:14'),
(34, 24, 2, '2024-05-02 05:25:30', '2024-05-02 05:25:30'),
(35, 24, 26, '2024-05-02 05:25:30', '2024-05-02 05:25:30'),
(36, 25, 1, '2024-05-02 05:28:30', '2024-05-02 05:28:30'),
(37, 26, 2, '2024-05-02 05:30:11', '2024-05-02 05:30:11'),
(38, 26, 27, '2024-05-02 05:30:11', '2024-05-02 05:30:11'),
(39, 27, 1, '2024-05-02 05:35:05', '2024-05-02 05:35:05'),
(40, 28, 1, '2024-05-02 05:52:06', '2024-05-02 05:52:06'),
(41, 28, 2, '2024-05-02 05:52:06', '2024-05-02 05:52:06'),
(42, 28, 11, '2024-05-02 05:52:06', '2024-05-02 05:52:06'),
(43, 29, 1, '2024-05-02 05:56:45', '2024-05-02 05:56:45'),
(44, 30, 1, '2024-05-02 06:17:47', '2024-05-02 06:17:47'),
(45, 31, 1, '2024-05-02 06:31:43', '2024-05-02 06:31:43'),
(46, 32, 1, '2024-05-02 06:36:48', '2024-05-02 06:36:48'),
(47, 33, 1, '2024-05-02 06:48:33', '2024-05-02 06:48:33'),
(48, 34, 1, '2024-05-02 06:56:21', '2024-05-02 06:56:21'),
(49, 22, 1, '2024-05-02 07:22:40', '2024-05-02 07:22:40'),
(50, 22, 5, '2024-05-02 07:22:40', '2024-05-02 07:22:40'),
(51, 22, 26, '2024-05-02 07:22:40', '2024-05-02 07:22:40'),
(52, 35, 1, '2024-05-03 04:15:05', '2024-05-03 04:15:05'),
(53, 35, 27, '2024-05-03 04:15:05', '2024-05-03 04:15:05'),
(54, 35, 41, '2024-05-03 04:20:20', '2024-05-03 04:20:20'),
(55, 36, 1, '2024-05-03 04:36:47', '2024-05-03 04:36:47'),
(56, 36, 26, '2024-05-03 04:36:47', '2024-05-03 04:36:47'),
(57, 36, 41, '2024-05-03 04:36:47', '2024-05-03 04:36:47'),
(58, 37, 1, '2024-05-03 04:50:23', '2024-05-03 04:50:23'),
(59, 37, 27, '2024-05-03 04:50:23', '2024-05-03 04:50:23'),
(60, 37, 41, '2024-05-03 04:50:23', '2024-05-03 04:50:23'),
(61, 38, 1, '2024-05-03 04:58:56', '2024-05-03 04:58:56'),
(62, 38, 10, '2024-05-03 04:58:56', '2024-05-03 04:58:56'),
(63, 39, 1, '2024-05-03 05:07:46', '2024-05-03 05:07:46'),
(64, 39, 10, '2024-05-03 05:07:46', '2024-05-03 05:07:46'),
(65, 40, 1, '2024-05-03 05:26:36', '2024-05-03 05:26:36'),
(66, 40, 11, '2024-05-03 05:26:36', '2024-05-03 05:26:36'),
(67, 40, 19, '2024-05-03 05:26:36', '2024-05-03 05:26:36'),
(68, 41, 1, '2024-05-03 05:30:43', '2024-05-03 05:30:43'),
(69, 41, 11, '2024-05-03 05:30:43', '2024-05-03 05:30:43'),
(70, 41, 21, '2024-05-03 05:30:43', '2024-05-03 05:30:43'),
(71, 42, 1, '2024-05-03 05:38:35', '2024-05-03 05:38:35'),
(72, 42, 11, '2024-05-03 05:38:35', '2024-05-03 05:38:35'),
(73, 42, 21, '2024-05-03 05:38:35', '2024-05-03 05:38:35'),
(74, 43, 1, '2024-05-03 05:42:43', '2024-05-03 05:42:43'),
(75, 43, 37, '2024-05-03 05:42:43', '2024-05-03 05:42:43'),
(76, 44, 1, '2024-05-03 05:47:56', '2024-05-03 05:47:56'),
(77, 44, 11, '2024-05-03 05:47:56', '2024-05-03 05:47:56'),
(78, 45, 2, '2024-05-03 05:55:41', '2024-05-03 05:55:41'),
(79, 45, 10, '2024-05-03 05:55:41', '2024-05-03 05:55:41'),
(80, 45, 29, '2024-05-03 05:55:41', '2024-05-03 05:55:41'),
(81, 46, 1, '2024-05-03 06:04:15', '2024-05-03 06:04:15'),
(82, 46, 3, '2024-05-03 06:04:15', '2024-05-03 06:04:15'),
(83, 46, 7, '2024-05-03 06:04:15', '2024-05-03 06:04:15'),
(84, 47, 1, '2024-05-03 06:09:55', '2024-05-03 06:09:55'),
(85, 47, 15, '2024-05-03 06:09:55', '2024-05-03 06:09:55'),
(86, 48, 1, '2024-05-03 06:14:05', '2024-05-03 06:14:05'),
(87, 48, 13, '2024-05-03 06:14:05', '2024-05-03 06:14:05'),
(88, 49, 1, '2024-05-03 06:17:56', '2024-05-03 06:17:56'),
(89, 49, 13, '2024-05-03 06:17:56', '2024-05-03 06:17:56'),
(90, 50, 1, '2024-05-03 06:22:38', '2024-05-03 06:22:38'),
(91, 50, 13, '2024-05-03 06:22:38', '2024-05-03 06:22:38'),
(92, 51, 1, '2024-05-03 06:27:38', '2024-05-03 06:27:38'),
(93, 51, 13, '2024-05-03 06:27:38', '2024-05-03 06:27:38'),
(94, 52, 1, '2024-05-03 06:31:30', '2024-05-03 06:31:30'),
(95, 52, 39, '2024-05-03 06:31:30', '2024-05-03 06:31:30'),
(96, 52, 41, '2024-05-03 06:31:30', '2024-05-03 06:31:30'),
(97, 53, 1, '2024-05-03 06:35:48', '2024-05-03 06:35:48'),
(98, 53, 39, '2024-05-03 06:35:48', '2024-05-03 06:35:48'),
(99, 53, 41, '2024-05-03 06:35:48', '2024-05-03 06:35:48'),
(100, 54, 1, '2024-05-03 06:40:41', '2024-05-03 06:40:41'),
(101, 54, 5, '2024-05-03 06:40:41', '2024-05-03 06:40:41'),
(102, 54, 41, '2024-05-03 06:40:41', '2024-05-03 06:40:41'),
(103, 55, 1, '2024-05-03 06:45:42', '2024-05-03 06:45:42'),
(104, 55, 5, '2024-05-03 06:45:42', '2024-05-03 06:45:42'),
(105, 55, 41, '2024-05-03 06:45:42', '2024-05-03 06:45:42'),
(106, 56, 1, '2024-05-03 07:07:49', '2024-05-03 07:07:49'),
(107, 56, 11, '2024-05-03 07:07:49', '2024-05-03 07:07:49'),
(108, 56, 18, '2024-05-03 07:07:49', '2024-05-03 07:07:49'),
(109, 57, 1, '2024-05-03 07:12:33', '2024-05-03 07:12:33'),
(110, 57, 17, '2024-05-03 07:12:33', '2024-05-03 07:12:33'),
(111, 58, 1, '2024-05-03 07:18:54', '2024-05-03 07:18:54'),
(112, 58, 16, '2024-05-03 07:18:54', '2024-05-03 07:18:54'),
(113, 59, 1, '2024-05-03 07:22:58', '2024-05-03 07:22:58'),
(114, 59, 9, '2024-05-03 07:22:58', '2024-05-03 07:22:58'),
(115, 60, 1, '2024-05-03 07:26:41', '2024-05-03 07:26:41'),
(116, 60, 9, '2024-05-03 07:26:41', '2024-05-03 07:26:41'),
(117, 61, 1, '2024-05-03 07:30:42', '2024-05-03 07:30:42'),
(118, 61, 9, '2024-05-03 07:30:42', '2024-05-03 07:30:42'),
(119, 62, 1, '2024-05-03 07:35:13', '2024-05-03 07:35:13'),
(120, 62, 3, '2024-05-03 07:35:13', '2024-05-03 07:35:13'),
(121, 62, 6, '2024-05-03 07:35:13', '2024-05-03 07:35:13'),
(122, 63, 1, '2024-05-03 07:39:38', '2024-05-03 07:39:38'),
(123, 63, 3, '2024-05-03 07:39:38', '2024-05-03 07:39:38'),
(124, 63, 6, '2024-05-03 07:39:38', '2024-05-03 07:39:38'),
(125, 64, 1, '2024-05-03 07:47:44', '2024-05-03 07:47:44'),
(126, 64, 3, '2024-05-03 07:47:44', '2024-05-03 07:47:44'),
(127, 64, 6, '2024-05-03 07:47:44', '2024-05-03 07:47:44'),
(128, 65, 1, '2024-05-03 07:59:18', '2024-05-03 07:59:18'),
(129, 65, 3, '2024-05-03 07:59:18', '2024-05-03 07:59:18'),
(130, 65, 6, '2024-05-03 07:59:18', '2024-05-03 07:59:18'),
(131, 66, 1, '2024-05-03 09:17:20', '2024-05-03 09:17:20'),
(132, 66, 3, '2024-05-03 09:17:20', '2024-05-03 09:17:20'),
(133, 66, 6, '2024-05-03 09:17:20', '2024-05-03 09:17:20'),
(134, 67, 1, '2024-05-03 09:30:21', '2024-05-03 09:30:21'),
(135, 67, 11, '2024-05-03 09:30:22', '2024-05-03 09:30:22'),
(136, 67, 18, '2024-05-03 09:30:22', '2024-05-03 09:30:22'),
(137, 68, 1, '2024-05-03 09:38:08', '2024-05-03 09:38:08'),
(138, 68, 11, '2024-05-03 09:38:08', '2024-05-03 09:38:08'),
(139, 68, 20, '2024-05-03 09:38:08', '2024-05-03 09:38:08'),
(140, 69, 1, '2024-05-03 09:43:10', '2024-05-03 09:43:10'),
(141, 69, 11, '2024-05-03 09:43:10', '2024-05-03 09:43:10'),
(142, 70, 2, '2024-05-03 12:30:29', '2024-05-03 12:30:29'),
(143, 70, 38, '2024-05-03 12:30:29', '2024-05-03 12:30:29'),
(144, 71, 2, '2024-05-03 12:35:18', '2024-05-03 12:35:18'),
(145, 71, 38, '2024-05-03 12:35:18', '2024-05-03 12:35:18'),
(146, 72, 2, '2024-05-03 12:39:36', '2024-05-03 12:39:36'),
(147, 72, 38, '2024-05-03 12:39:36', '2024-05-03 12:39:36'),
(148, 73, 2, '2024-05-03 12:42:53', '2024-05-03 12:42:53'),
(149, 73, 28, '2024-05-03 12:42:53', '2024-05-03 12:42:53'),
(150, 73, 32, '2024-05-03 12:42:53', '2024-05-03 12:42:53'),
(151, 74, 1, '2024-05-06 05:57:25', '2024-05-06 05:57:25'),
(152, 74, 11, '2024-05-06 05:57:25', '2024-05-06 05:57:25'),
(153, 74, 21, '2024-05-06 05:57:25', '2024-05-06 05:57:25'),
(154, 74, 2, '2024-05-06 06:04:06', '2024-05-06 06:04:06'),
(155, 75, 1, '2024-05-06 06:09:55', '2024-05-06 06:09:55'),
(156, 75, 2, '2024-05-06 06:09:55', '2024-05-06 06:09:55'),
(157, 75, 14, '2024-05-06 06:09:55', '2024-05-06 06:09:55'),
(158, 76, 1, '2024-05-06 06:12:35', '2024-05-06 06:12:35'),
(159, 76, 2, '2024-05-06 06:12:35', '2024-05-06 06:12:35'),
(160, 76, 11, '2024-05-06 06:12:35', '2024-05-06 06:12:35'),
(161, 77, 2, '2024-05-06 06:17:02', '2024-05-06 06:17:02'),
(163, 78, 2, '2024-05-06 06:21:12', '2024-05-06 06:21:12'),
(164, 78, 28, '2024-05-06 06:21:13', '2024-05-06 06:21:13'),
(165, 78, 32, '2024-05-06 06:21:13', '2024-05-06 06:21:13'),
(166, 79, 2, '2024-05-06 06:24:45', '2024-05-06 06:24:45'),
(167, 79, 28, '2024-05-06 06:24:45', '2024-05-06 06:24:45'),
(168, 79, 32, '2024-05-06 06:24:45', '2024-05-06 06:24:45'),
(169, 80, 2, '2024-05-06 06:27:38', '2024-05-06 06:27:38'),
(170, 80, 28, '2024-05-06 06:27:38', '2024-05-06 06:27:38'),
(171, 80, 32, '2024-05-06 06:27:38', '2024-05-06 06:27:38'),
(172, 81, 2, '2024-05-06 06:29:50', '2024-05-06 06:29:50'),
(173, 81, 28, '2024-05-06 06:29:51', '2024-05-06 06:29:51'),
(174, 81, 32, '2024-05-06 06:29:51', '2024-05-06 06:29:51'),
(175, 82, 2, '2024-05-06 06:34:17', '2024-05-06 06:34:17'),
(176, 82, 28, '2024-05-06 06:34:17', '2024-05-06 06:34:17'),
(177, 82, 32, '2024-05-06 06:34:17', '2024-05-06 06:34:17'),
(178, 83, 2, '2024-05-06 06:36:40', '2024-05-06 06:36:40'),
(179, 83, 28, '2024-05-06 06:36:40', '2024-05-06 06:36:40'),
(180, 83, 32, '2024-05-06 06:36:40', '2024-05-06 06:36:40'),
(181, 84, 2, '2024-05-06 06:41:14', '2024-05-06 06:41:14'),
(182, 84, 28, '2024-05-06 06:41:14', '2024-05-06 06:41:14'),
(183, 84, 32, '2024-05-06 06:41:15', '2024-05-06 06:41:15'),
(184, 85, 2, '2024-05-06 06:44:00', '2024-05-06 06:44:00'),
(185, 85, 28, '2024-05-06 06:44:00', '2024-05-06 06:44:00'),
(186, 85, 32, '2024-05-06 06:44:00', '2024-05-06 06:44:00'),
(187, 86, 28, '2024-05-06 06:51:59', '2024-05-06 06:51:59'),
(188, 86, 32, '2024-05-06 06:51:59', '2024-05-06 06:51:59'),
(189, 86, 2, '2024-05-06 06:54:37', '2024-05-06 06:54:37'),
(190, 87, 2, '2024-05-06 06:59:20', '2024-05-06 06:59:20'),
(191, 87, 28, '2024-05-06 06:59:20', '2024-05-06 06:59:20'),
(192, 87, 32, '2024-05-06 06:59:20', '2024-05-06 06:59:20'),
(193, 88, 2, '2024-05-06 07:02:00', '2024-05-06 07:02:00'),
(194, 88, 28, '2024-05-06 07:02:00', '2024-05-06 07:02:00'),
(195, 88, 32, '2024-05-06 07:02:00', '2024-05-06 07:02:00'),
(196, 89, 2, '2024-05-06 07:11:00', '2024-05-06 07:11:00'),
(197, 89, 28, '2024-05-06 07:11:00', '2024-05-06 07:11:00'),
(198, 89, 32, '2024-05-06 07:11:00', '2024-05-06 07:11:00'),
(199, 90, 2, '2024-05-06 07:14:16', '2024-05-06 07:14:16'),
(200, 90, 28, '2024-05-06 07:14:16', '2024-05-06 07:14:16'),
(201, 90, 32, '2024-05-06 07:14:16', '2024-05-06 07:14:16'),
(202, 91, 2, '2024-05-06 07:17:23', '2024-05-06 07:17:23'),
(203, 91, 28, '2024-05-06 07:17:23', '2024-05-06 07:17:23'),
(204, 91, 32, '2024-05-06 07:17:23', '2024-05-06 07:17:23'),
(205, 57, 2, '2024-05-06 07:20:43', '2024-05-06 07:20:43'),
(206, 58, 2, '2024-05-06 07:22:04', '2024-05-06 07:22:04'),
(207, 67, 2, '2024-05-06 07:25:16', '2024-05-06 07:25:16'),
(208, 92, 2, '2024-05-06 07:29:28', '2024-05-06 07:29:28'),
(209, 92, 35, '2024-05-06 07:29:28', '2024-05-06 07:29:28'),
(210, 93, 2, '2024-05-06 07:32:02', '2024-05-06 07:32:02'),
(211, 93, 35, '2024-05-06 07:32:02', '2024-05-06 07:32:02'),
(212, 94, 2, '2024-05-06 07:35:56', '2024-05-06 07:35:56'),
(213, 94, 28, '2024-05-06 07:35:56', '2024-05-06 07:35:56'),
(214, 94, 31, '2024-05-06 07:35:56', '2024-05-06 07:35:56'),
(215, 68, 2, '2024-05-06 07:36:42', '2024-05-06 07:36:42'),
(216, 69, 2, '2024-05-06 07:37:29', '2024-05-06 07:37:29'),
(217, 22, 41, '2024-05-06 07:52:38', '2024-05-06 07:52:38'),
(218, 24, 1, '2024-05-06 09:37:48', '2024-05-06 09:37:48'),
(219, 24, 41, '2024-05-06 09:37:48', '2024-05-06 09:37:48'),
(220, 26, 1, '2024-05-06 09:39:25', '2024-05-06 09:39:25'),
(221, 26, 26, '2024-05-06 09:39:25', '2024-05-06 09:39:25'),
(222, 26, 41, '2024-05-06 09:39:26', '2024-05-06 09:39:26'),
(223, 28, 19, '2024-05-06 09:41:20', '2024-05-06 09:41:20'),
(224, 35, 2, '2024-05-06 09:42:59', '2024-05-06 09:42:59'),
(225, 42, 2, '2024-05-06 10:01:55', '2024-05-06 10:01:55'),
(226, 43, 2, '2024-05-06 10:07:33', '2024-05-06 10:07:33'),
(227, 43, 14, '2024-05-06 10:07:33', '2024-05-06 10:07:33'),
(228, 44, 2, '2024-05-06 10:20:23', '2024-05-06 10:20:23'),
(229, 45, 1, '2024-05-06 10:27:11', '2024-05-06 10:27:11'),
(230, 45, 4, '2024-05-06 10:27:11', '2024-05-06 10:27:11'),
(231, 15, 9, '2024-05-13 04:00:52', '2024-05-13 04:00:52'),
(232, 16, 41, '2024-05-13 04:02:57', '2024-05-13 04:02:57'),
(233, 19, 41, '2024-05-13 04:04:10', '2024-05-13 04:04:10'),
(234, 20, 41, '2024-05-13 04:05:52', '2024-05-13 04:05:52'),
(235, 95, 1, '2024-05-13 04:12:23', '2024-05-13 04:12:23'),
(236, 95, 25, '2024-05-13 04:12:23', '2024-05-13 04:12:23'),
(237, 95, 41, '2024-05-13 04:12:23', '2024-05-13 04:12:23'),
(238, 21, 22, '2024-05-13 04:15:29', '2024-05-13 04:15:29'),
(239, 21, 41, '2024-05-13 04:15:29', '2024-05-13 04:15:29'),
(240, 23, 22, '2024-05-13 04:23:24', '2024-05-13 04:23:24'),
(241, 23, 41, '2024-05-13 04:25:18', '2024-05-13 04:25:18'),
(242, 24, 5, '2024-05-13 04:30:32', '2024-05-13 04:30:32'),
(243, 24, 30, '2024-05-13 04:30:32', '2024-05-13 04:30:32'),
(244, 25, 3, '2024-05-13 04:35:14', '2024-05-13 04:35:14'),
(245, 25, 36, '2024-05-13 04:35:14', '2024-05-13 04:35:14'),
(246, 27, 3, '2024-05-13 04:37:24', '2024-05-13 04:37:24'),
(248, 29, 3, '2024-05-13 04:40:43', '2024-05-13 04:40:43'),
(250, 96, 1, '2024-05-13 04:57:36', '2024-05-13 04:57:36'),
(251, 96, 3, '2024-05-13 04:57:36', '2024-05-13 04:57:36'),
(252, 96, 6, '2024-05-13 04:57:36', '2024-05-13 04:57:36'),
(253, 22, 27, '2024-05-13 07:02:12', '2024-05-13 07:02:12'),
(254, 97, 1, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(255, 97, 2, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(256, 97, 5, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(257, 97, 26, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(258, 97, 27, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(259, 97, 30, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(260, 97, 41, '2024-05-13 07:06:33', '2024-05-13 07:06:33'),
(261, 24, 27, '2024-05-13 07:18:52', '2024-05-13 07:18:52'),
(262, 26, 5, '2024-05-13 07:22:18', '2024-05-13 07:22:18'),
(263, 26, 30, '2024-05-13 07:22:18', '2024-05-13 07:22:18'),
(264, 30, 3, '2024-05-13 07:28:22', '2024-05-13 07:28:22'),
(265, 30, 6, '2024-05-13 07:28:22', '2024-05-13 07:28:22'),
(266, 31, 3, '2024-05-13 07:30:04', '2024-05-13 07:30:04'),
(267, 31, 6, '2024-05-13 07:30:04', '2024-05-13 07:30:04'),
(268, 32, 3, '2024-05-13 07:32:29', '2024-05-13 07:32:29'),
(269, 32, 6, '2024-05-13 07:32:29', '2024-05-13 07:32:29'),
(270, 33, 3, '2024-05-13 07:34:07', '2024-05-13 07:34:07'),
(271, 33, 6, '2024-05-13 07:34:07', '2024-05-13 07:34:07'),
(272, 34, 3, '2024-05-13 07:37:41', '2024-05-13 07:37:41'),
(273, 34, 8, '2024-05-13 07:37:41', '2024-05-13 07:37:41'),
(274, 35, 5, '2024-05-13 07:39:51', '2024-05-13 07:39:51'),
(275, 35, 30, '2024-05-13 07:39:51', '2024-05-13 07:39:51'),
(276, 47, 10, '2024-05-13 08:52:12', '2024-05-13 08:52:12'),
(279, 50, 36, '2024-05-13 08:56:50', '2024-05-13 08:56:50'),
(280, 51, 36, '2024-05-13 08:58:34', '2024-05-13 08:58:34'),
(281, 77, 29, '2024-05-13 09:53:11', '2024-05-13 09:53:11'),
(282, 69, 50, '2024-06-03 05:46:01', '2024-06-03 05:46:01'),
(283, 98, 55, '2024-07-10 07:01:07', '2024-07-10 07:01:07'),
(284, 99, 42, '2024-07-10 07:12:01', '2024-07-10 07:12:01'),
(285, 99, 55, '2024-07-10 07:12:01', '2024-07-10 07:12:01'),
(286, 100, 3, '2024-07-10 11:54:24', '2024-07-10 11:54:24'),
(287, 101, 3, '2024-07-10 11:56:34', '2024-07-10 11:56:34'),
(288, 102, 3, '2024-07-10 11:59:59', '2024-07-10 11:59:59'),
(290, 48, 36, '2024-07-15 04:49:37', '2024-07-15 04:49:37'),
(293, 77, 13, '2024-07-15 06:48:35', '2024-07-15 06:48:35'),
(294, 27, 6, '2024-07-15 07:19:58', '2024-07-15 07:19:58'),
(295, 29, 6, '2024-07-15 07:22:25', '2024-07-15 07:22:25'),
(296, 47, 56, '2024-07-15 07:25:29', '2024-07-15 07:25:29'),
(297, 49, 36, '2024-07-15 07:30:09', '2024-07-15 07:30:09'),
(298, 69, 63, '2024-07-15 07:33:19', '2024-07-15 07:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_faqs`
--

CREATE TABLE `product_faqs` (
  `id` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_faqs`
--

INSERT INTO `product_faqs` (`id`, `product_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(9, 16, 'Will my dog stay warm in this jacket?', '<p>Yes, why not? Your dog will receive exceptional warmth and insulation from the lofted design and lightweight, recycled microfiber polyester.</p>', '2024-05-01 09:30:22', '2024-05-01 09:30:22'),
(10, 16, 'Can I take my dog on evening walks by making them wear this jacket?', '<p>With high-visibility reflective trims that make your dog visible in low light, the Winterberry Jacket puts your dog’s safety first. This means you can easily take them on night walks without worrying about their safety.</p>', '2024-05-01 09:30:38', '2024-05-01 09:30:38'),
(11, 16, 'Is it easy to put on and take off this jacket?', '<p>Yes! The front zipper of the Winterberry Jacket makes it easy to put on and take off, and it allows you to alter the fit to make things comfortable quickly.</p>', '2024-05-01 09:30:53', '2024-05-01 09:30:53'),
(12, 16, 'Will my dog feel warmer in this jacket?', '<p>Your dog will receive exceptional warmth and insulation from the lofted design and lightweight, recycled microfiber polyester.</p>', '2024-05-01 09:31:08', '2024-05-01 09:31:08'),
(18, 14, 'Why do dogs get diarrhea and how can Canicoccus help with the same?', '<p>There are numerous reasons why diarrhea can happen in dogs, including poor food, stress, parasites, or illnesses. Probiotics and natural components found in Canicoccus, <strong>anti diarrheal medicine for dogs</strong>, aid in reestablishing gut balance, facilitating a healthy digestive system, and restoring regular stool consistency.</p>', '2024-05-02 05:39:03', '2024-05-02 05:39:03'),
(19, 14, 'Is Canicoccus safe for my puppy?', '<p>Yes! Canicoccus is safe for dogs of all sizes and ages, including pups. Even the most delicate puppies can benefit from its mild, natural recipe.</p>', '2024-05-02 05:39:45', '2024-05-02 05:39:45'),
(20, 14, 'How do I give my dog this tablet?', '<p>This dog antidiarrheal comes in a tasty chewable tablet, which makes it easy for your dog to digest. The dog will happily consume the prescribed dosage if you only give it to him at the specified weight.</p>', '2024-05-02 05:40:21', '2024-05-02 05:40:21'),
(21, 14, 'How long does it take for this tablet to work?', '<p>Most dogs who use Canicoccus for diarrhea get well within 24 to 48 hours. However, results can vary. Talk to your veterinarian if your dog’s health does not improve.</p>', '2024-05-02 05:41:06', '2024-05-02 05:41:06'),
(22, 14, 'Are there any side effects?', '<p>Canicoccus is the <strong>best medicine for dogs</strong> is usually well tolerated, but like with any new product, it’s wise to watch for any possible negative effects on your dog. Speak with your veterinarian if you have any concerns.</p>', '2024-05-02 05:42:16', '2024-05-02 05:42:53'),
(23, 15, 'Is Remworm safe for my dog?', '<p>Absolutely, yes! Remworm is made with ingredients approved by veterinarians and is gentle on your dog’s digestive system. Even puppies as young as two weeks old can safely take it if they follow the dose instructions. But before you begin introducing this medication into your dog’s diet, talk with your veterinarian.</p>', '2024-05-02 05:45:30', '2024-05-02 05:45:30'),
(24, 15, 'How often should I use Reworm?', '<p>Your dog’s age, lifestyle, and risk factors all determine the frequency of how often your dog needs to be dewormed. To discuss a specific deworming schedule, speak with your veterinarian. Dogs with access to the outdoors may need more frequent treatment than indoor dogs, and puppies often require more regular deworming than adult dogs.</p>', '2024-05-02 05:46:05', '2024-05-02 05:46:05'),
(25, 15, 'Which flavor of Remworm deworming tablets should I give to my dog?', '<p>Beef, chicken, and peanut butter are the three delectable flavors of Remworm. Choose the flavor you believe your dog would like best to make the deworming process more enjoyable for both of you!</p>', '2024-05-02 05:47:12', '2024-05-02 05:47:12'),
(26, 15, 'What if my dog refuses to eat this deworming tablet?', '<p>Crush the chewable into your dog’s meal or give it to them with a bit of wet food to tempt them if they are initially wary. You can also break the tablet into smaller pieces to make it easier to eat.</p>', '2024-05-02 05:47:41', '2024-05-02 05:47:41'),
(27, 15, 'From where can I get this Reworm?', '<p>Remworm can be purchased online from the RemedioVet website. We provide easy home delivery and safe payment alternatives for your peace of mind.</p>', '2024-05-02 05:48:08', '2024-05-02 05:48:08'),
(28, 19, 'Is this dog shirt good for my pet who has itchy skin?', '<p>Yes, of course! The shirt acts as a barrier, preventing your dog from scratching or licking irritated skin or wounds. This can help soothe itchiness and promote healing.</p>', '2024-05-02 05:50:37', '2024-05-02 05:50:37'),
(29, 19, 'Can I make my furry friend wear this shirt all day?', '<p>Yes, why not? Because of its breathable fabric, your dog will remain comfy all day.</p>', '2024-05-02 05:51:04', '2024-05-02 05:51:04'),
(30, 19, 'Is this shirt only meant for medical purposes?', '<p>Not at all. This stylish shirt is ideal to be worn for daily purposes. Stylishly adorn your dog for walks, get-togethers, or any event while also protecting their skin.</p>', '2024-05-02 05:51:29', '2024-05-02 05:51:29'),
(31, 19, 'Will my dog stay warm in this shirt?', '<p>The sweatshirt style is perfect for the changing seasons. Whether going on winter hikes or cozy nights in, it will keep your dog warm.</p>', '2024-05-02 05:51:53', '2024-05-02 05:51:53'),
(32, 19, 'Does this shirt come in different sizes?', '<p>Yes, we at RemedioVet have a wide range of sizes available, ranging from XS-5XL. Therefore, no matter how big your dog is, they can get this shirt from us easily.</p>', '2024-05-02 05:52:28', '2024-05-02 05:52:28'),
(33, 20, 'Can my dog walk safely at night with this outfit on?', '<p>Yes, in low light, the jacket’s reflective accents ensure your dog is easily seen by passing automobiles and pedestrians.</p>', '2024-05-02 05:53:52', '2024-05-02 05:53:52'),
(34, 20, 'Does having a high-cut tummy shape prevent them from messy accidents?', '<p>The jacket’s high-cut shape helps keep water, dirt, and mud from reaching your dog’s belly. This is especially helpful while taking walks on rainy days, when playing in a dirty environment, or even when playing on trails.</p>', '2024-05-02 05:54:13', '2024-05-02 05:54:13'),
(35, 20, 'How does the jacket fit around my dog?', '<p>A premium YKK zipper ensures a snug and adjustable fit on the jacket. To ensure maximum comfort, you can also adjust the tightness around your dog’s body using the elastic string at the bottom.</p>', '2024-05-02 05:54:34', '2024-05-02 05:54:34'),
(36, 20, 'Is the jacket’s insulation environmentally friendly?', '<p>Indeed, the clothing insulates your dog using recycled polyester. This means that you can minimize your environmental effects while simultaneously giving your pet comfort—a win-win situation!</p>', '2024-05-02 05:54:57', '2024-05-02 05:54:57'),
(37, 20, 'Is there enough ventilation in this jacket for warmer weather?', '<p>The breathable nature of this jacket enables your dog to remain cool and comfortable for the entire day, even in milder temperatures.</p>', '2024-05-02 05:55:24', '2024-05-02 05:55:24'),
(38, 21, 'Can I use this leash in all weather conditions?', '<p>Of course! The leash is made from high-quality materials that were chosen specifically for their remarkable resistance and longevity against rain, shine, and everything in between.</p>', '2024-05-02 05:56:22', '2024-05-02 05:56:22'),
(39, 21, 'Will it be comfortable to hold the leash when going for walks?', '<p>Yes, the leash has a cosy grip that makes it simple to hang on to, even if your energetic dog tries to tug on it.</p>', '2024-05-02 05:56:46', '2024-05-02 05:56:46'),
(40, 21, 'How easy is it to attach the leash to the collar or harness of my dog?', '<p>The handy bolt snap closure makes attaching the leash easy. Just clip it onto your dog’s collar or harness to ensure a snug and comfortable fit.</p>', '2024-05-02 05:57:25', '2024-05-02 05:57:25'),
(41, 21, 'Can this leash work on any dog size?', '<p>This two-tone dog leash is made to fit dogs of all sizes. Your pet can walk around here securely and pleasantly with this leash.</p>', '2024-05-02 05:57:46', '2024-05-02 05:57:46'),
(42, 21, 'Do you have a variety of colours to choose from?', '<p>Yes, we offer many two-tone colour combinations that can help you elevate your dog’s style with ease. So, just pick any you like and add to the cart now!</p>', '2024-05-02 05:58:06', '2024-05-02 05:58:06'),
(48, 23, 'What material is used in the dual colour dog collar?', 'The collar is made of premium nylon webbing which provides comfort to your dog.', '2024-05-02 06:02:05', '2024-05-02 06:02:05'),
(49, 23, 'Is the dog collar adjustable?', 'Yes the straps can be adjusted according to the size of your dog.', '2024-05-02 06:02:23', '2024-05-02 06:02:23'),
(50, 23, 'How many colours are available in this product?', 'The dual colour collar is available in 10 different colour combinations.', '2024-05-02 06:02:42', '2024-05-02 06:02:42'),
(51, 23, 'How do I clean the collar?', 'Gently hand wash with mild detergent and do not use bleach.', '2024-05-02 06:03:03', '2024-05-02 06:03:03'),
(52, 23, 'Can the buckle be unfastened quickly?', 'The sturdy buckle snaps out quickly and has round edge design for comfort.', '2024-05-02 06:03:23', '2024-05-02 06:03:23'),
(53, 24, 'How much weight can the petique’s pet travel backpack carry?', 'The backpack can carry a pet with a weight of maximum 11 kgs.', '2024-05-02 06:04:26', '2024-05-02 06:04:26'),
(54, 24, 'How many entry ways does this backpack provide?', 'The backpack comes with three entry ways.', '2024-05-02 06:04:42', '2024-05-02 06:04:42'),
(55, 24, 'Will my pet feel comfortable in the petique’s backpack?', 'The backpack comes with a cushion and front chest clip to provide ultimate support. The mesh windows ensure proper ventilation.', '2024-05-02 06:04:55', '2024-05-02 06:04:55'),
(56, 24, 'How can I clean this backpack?', 'Only spot clean and make sure not to use bleach. The cushion can be washed in a machine and tumble dry on low.', '2024-05-02 06:05:14', '2024-05-02 06:05:14'),
(57, 24, 'How much space does this bag require to be stored in the cupboard?', 'The petique’s pet travel backpack takes less space as it is collapsable.', '2024-05-02 06:05:38', '2024-05-02 06:05:38'),
(58, 25, 'What makes Nurture Adult Dog Food ideal for large and giant breed dogs?', 'Nurture Adult Dog Food is specially formulated to meet the unique nutritional needs of large and giant breed dogs. It provides the right balance of essential nutrients, including controlled calcium and phosphorus levels, to support their bone and joint health, promoting strong, lean muscle development.', '2024-05-02 06:07:54', '2024-05-02 06:07:54'),
(59, 25, 'What are the primary ingredients in Nurture Adult Dog Food?', 'Nurture Adult Dog Food typically includes high-quality proteins like chicken, turkey, or beef as the main ingredient. It’s also enriched with whole grains, vegetables, and other essential nutrients to ensure a well-rounded diet for your large or giant breed dog.', '2024-05-02 06:08:35', '2024-05-02 06:08:35'),
(60, 25, 'What breeds of dogs can eat this food?', 'This dog food is ideal for breeds like Boxers, German Shepherds, Labradors, Golden Retrievers, Dobermans, Huskies, Great Danes, Rottweilers, Saint Bernards, and Mastiffs.', '2024-05-02 06:09:40', '2024-05-02 06:09:40'),
(61, 25, 'Is there a specific feeding schedule I should follow?', 'While feeding schedules can vary depending on your dog’s age and activity level, most large and giant breed dogs benefit from two meals a day to promote healthy digestion and maintain an ideal weight. Review the feeding guidelines on the packaging for specific recommendations.', '2024-05-02 06:09:59', '2024-05-02 06:09:59'),
(62, 25, 'Can I use Nurture Adult Dog Food for large and giant breeds as a primary or sole source of nutrition?', 'Nurture Adult Dog Food is designed to be a complete and balanced source of nutrition for large and giant breed dogs. In most cases, it can be used as the primary source of nutrition without additional supplementation.', '2024-05-02 06:10:17', '2024-05-02 06:10:17'),
(63, 26, 'Does this backpack come with wheels?', 'Yes this carrier comes with wheels and a telescopic handle making it easier for you to stroll it.', '2024-05-02 06:11:26', '2024-05-02 06:11:26'),
(64, 26, 'Can I use this carrier as a backpack?', 'The carrier comes with comfortable straps which allows you to use it as a backpack.', '2024-05-02 06:11:42', '2024-05-02 06:11:42'),
(65, 26, 'How many color options can I get?', 'The carrier comes in four colors which are pink camo, army camo, pepper and sunset strip.', '2024-05-02 06:11:58', '2024-05-02 06:11:58'),
(66, 26, 'Does this carrier have extra pockets to store my pet’s items?', 'Yes the carrier comes with small item storage pockets on both sides.', '2024-05-02 06:12:17', '2024-05-02 06:12:17'),
(67, 26, 'Can I use the carrier as a car seat for my pet?', 'Yes the carrier can easily be converted into car seat for your pet.', '2024-05-02 06:12:39', '2024-05-02 06:12:39'),
(68, 27, 'Do small breeds need small breed dog food?', 'Yes, small breed dogs often have different nutritional requirements than their larger counterparts. Small breed dog food is specially formulated to meet these needs, providing the right balance of nutrients in smaller kibble sizes to accommodate their smaller mouths.', '2024-05-02 06:13:56', '2024-05-02 06:13:56'),
(69, 27, 'How many times a day should you feed a small breed dog?', 'Small breed dogs typically benefit from being fed multiple small meals throughout the day. Most owners feed them 2 to 3 times a day to maintain their energy levels and prevent overeating.', '2024-05-02 06:14:13', '2024-05-02 06:14:13'),
(70, 27, 'What is the best time of the day to feed a dog?', 'The best time to feed your dog can vary based on your schedule. Many owners choose to feed their dogs in the morning and evening, allowing for digestion and energy throughout the day. Consistency in meal times is more important than the specific time.', '2024-05-02 06:14:33', '2024-05-02 06:14:33'),
(71, 27, 'What is the Best Way to Feed a Dog?', 'The best way to feed your dog includes providing a well-balanced, high-quality dog food appropriate for their size and age. Ensure access to clean water, monitor portion sizes, and maintain a consistent feeding schedule.', '2024-05-02 06:14:52', '2024-05-02 06:14:52'),
(72, 27, 'Why Should we Give Commercial Dog Food to our pets?', 'Commercial dog food is formulated to provide dogs with a complete and balanced diet, meeting their specific nutritional needs. It’s convenient, safe, and designed to keep dogs healthy throughout their lives.', '2024-05-02 06:15:09', '2024-05-02 06:15:09'),
(73, 28, 'Does this tonic help in removing impurities from my dog’s body?', 'Yes, the tonic has herbal blends that help in purifying the liver of your pet.', '2024-05-02 06:16:51', '2024-05-02 06:16:51'),
(74, 28, 'is the tonic made keeping in mind the taste?', 'The tonic is good in taste and perfect for your dog or cat who is a pick eater.', '2024-05-02 06:17:05', '2024-05-02 06:17:05'),
(75, 28, 'Will my pet’s appetite improve with this hemp infused liver tonic?', 'The hemp infused liver tonic will improve the appetite of your pet.', '2024-05-02 06:17:24', '2024-05-02 06:17:24'),
(76, 28, 'How many doses does my pet require of this tonic everyday?', '5ml-8ml twice a day is ideal for small dogs and for the larger breed the dosage should be between 10-15 ml given twice in a day. For cats the ideal dosage is 3-5ml twice a day.', '2024-05-02 06:17:42', '2024-05-02 06:17:42'),
(77, 28, 'Are the ingredients used in the tonic lab tested?', 'The ingredients are lab tested and clearly sourced.', '2024-05-02 06:18:01', '2024-05-02 06:18:01'),
(78, 29, 'Should I feed my Golden Retriever large breed dog food?', 'Yes, it’s generally advisable to feed your Golden Retriever a dog food formulated for large breed dogs.', '2024-05-02 06:21:23', '2024-05-02 06:21:23'),
(79, 29, 'Does dog size matter for dog food?', 'Yes, the size of a dog can significantly impact their nutritional requirements. Smaller and larger breeds have different dietary needs, especially in terms of nutrient levels, kibble size, and caloric content.', '2024-05-02 06:22:11', '2024-05-02 06:22:11'),
(80, 29, 'Can I mix Nurture Puppy Dog Food with other foods or supplements?', 'Yes, you can mix it, but ensure you follow recommended portion sizes to avoid overfeeding. Consult your vet before adding supplements for balanced nutrition.', '2024-05-02 06:22:33', '2024-05-02 06:22:33'),
(81, 29, 'Can adult dogs eat puppy food?', 'Adult dogs should not regularly eat puppy food, as it doesn’t meet their nutritional needs and may lead to weight gain and imbalances. Opt for adult dog food for their specific requirements.', '2024-05-02 06:22:52', '2024-05-02 06:22:52'),
(82, 29, 'What are the primary ingredients in Nurture Puppy Dog Food for Large & Giant Breeds?', 'Nurture typically contains Dutch Chicken Meat, Corn, Barley, Chicken Fat, Rice, Carob Pods, Dried Beet Pulp (Prebiotic), Flax, Seed, Brewer’s Yeast (Probiotic), Norwegian, Salmon Oil, Dried Eggs, Basil, Thyme, Glucosamine, and chondroitin as the main ingredient.', '2024-05-02 06:23:20', '2024-05-02 06:23:20'),
(83, 30, 'Do large breed dogs need large breed food?', 'Large breed dogs often benefit from specialized large breed dog food formulated to meet their unique nutritional requirements. These formulas account for their size, growth rate, and potential joint health concerns.', '2024-05-02 06:25:24', '2024-05-02 06:25:24'),
(84, 30, 'Is breed-specific dog food necessary?', 'While breed-specific dog food exists, it’s not always necessary. More critical factors are your dog’s age, size, activity level, and any specific dietary needs. General high-quality dog food can often meet these requirements.', '2024-05-02 06:25:42', '2024-05-02 06:25:42'),
(85, 30, 'What is the Flavour of this dog food?', 'Chicken', '2024-05-02 06:26:01', '2024-05-02 06:26:01'),
(86, 30, 'What is the Age Range fro this product?', 'For large breed mature adult dogs weighing 55 to 110 lbs (6+ years of age) and giant breed mature adult dogs weighing 110+ lbs (5+ years of age)', '2024-05-02 06:26:40', '2024-05-02 06:26:40'),
(87, 30, 'Do Vet Recommed Adult Vigour Dog Food ?', 'Veterinarians may suggest Adult Vigour Dog Food based on your dog’s individual requirements, so consulting with them is advisable.', '2024-05-02 06:27:00', '2024-05-02 06:27:00'),
(88, 31, 'What age of dogs is this product suitable for?', 'This product is suitable for dogs above 12 months of age.', '2024-05-02 06:34:36', '2024-05-02 06:34:36'),
(89, 31, 'How should I store this product?', 'To maintain product quality, store it in a cool and dry place. Avoid direct sunlight and contact with moisture.', '2024-05-02 06:34:53', '2024-05-02 06:34:53'),
(90, 31, 'How long can I keep the product once opened?', 'It’s recommended to seal the product tightly after opening and use it within a reasonable time frame, usually within a few weeks, to maintain freshness and quality.', '2024-05-02 06:35:11', '2024-05-02 06:35:11'),
(91, 31, 'Are there any specific feeding instructions for this dog food?', 'Feeding guidelines are typically provided on the product packaging. Follow these instructions to ensure your dog gets the right amount of food based on their size and activity level.', '2024-05-02 06:35:38', '2024-05-02 06:35:38'),
(92, 31, 'Is this dog food suitable for dogs with allergies or sensitivities?', 'Some dogs may have specific allergies or sensitivities. If your dog has dietary restrictions or health concerns, consult with a veterinarian.', '2024-05-02 06:36:03', '2024-05-02 06:36:03'),
(93, 32, 'Is this Dog food grain free?', 'Yes, it is.', '2024-05-02 06:42:45', '2024-05-02 06:42:45'),
(94, 32, 'What is the Shelf life of this Dog food', '18 Months', '2024-05-02 06:43:03', '2024-05-02 06:43:03'),
(95, 32, 'How should I transition my puppy to this food from their current diet?', 'Gradually transition your puppy by mixing the new food with the old over 7-10 days. Start with a small portion of the new food and increase it while reducing the old food. This helps prevent digestive upset during the transition.', '2024-05-02 06:43:26', '2024-05-02 06:43:26'),
(96, 32, 'What\'s the recommended feeding schedule for large breed puppies?', 'Puppies generally benefit from multiple meals per day. Divide the daily recommended portion into two to four meals, depending on your puppy’s age.', '2024-05-02 06:43:47', '2024-05-02 06:43:47'),
(97, 32, 'Is it safe to free-feed my large breed puppy with this dog food, allowing them to eat whenever they want?', 'Free-feeding is generally discouraged, especially for large breed puppies. Controlling their food intake through measured portions at scheduled mealtimes helps prevent overeating, obesity, and digestive issues.', '2024-05-02 06:44:12', '2024-05-02 06:44:12'),
(98, 33, 'Is this Dog Food Suitable for Newborns?', 'Yes, it is suitable for newborn puppies.', '2024-05-02 06:53:28', '2024-05-02 06:53:28'),
(99, 33, 'What is the Flavor of this Dog Food?', 'The flavor options include Fruit, Meat, and Chicken.', '2024-05-02 06:53:50', '2024-05-02 06:53:50'),
(100, 33, 'What is the Shelf Life of this Dog Food?', 'The shelf life is 12 months.', '2024-05-02 06:54:20', '2024-05-02 06:54:20'),
(101, 33, 'Can I switch to this dog food from another brand or formula without any transition period?', 'It’s generally recommended to transition your puppy gradually when switching to a new dog food, even if it’s within the same life stage. This helps your puppy’s digestive system adapt to the new food and reduces the risk of upset stomach.', '2024-05-02 06:54:39', '2024-05-02 06:54:39'),
(102, 33, 'Can I provide treats along with this dog food?', 'It’s okay to provide occasional treats in moderation, but be cautious not to overfeed your puppy.', '2024-05-02 06:54:57', '2024-05-02 06:54:57'),
(103, 34, 'Is cake mix suitable for my dog?', 'Yes it is safe to feed pupcake factory’s cake mix as it does not contain any salt or sugar. The cake mix is not packed with any preservatives so it is safe for your dog to consume.', '2024-05-02 06:58:28', '2024-05-02 06:58:28'),
(104, 34, 'What flavours are available in the pupcake factory’s cake mix?', 'The cake mix is available in Chicken, Chicken Liver, Banana Peanut Butter and Carrot Peanut Butter.', '2024-05-02 06:58:48', '2024-05-02 06:58:48'),
(105, 34, 'How can I make cake for my dog with the cake mix?', 'Simply take the premix and mix it with some water, pour the batter in baking utensil and bake it in the oven.', '2024-05-02 06:59:10', '2024-05-02 06:59:10'),
(106, 34, 'What is the shelf life of the pupcake factory’s cake mix?', 'The shelf of this product is one year.', '2024-05-02 06:59:43', '2024-05-02 06:59:43'),
(107, 34, 'Is the cake mix made from natural ingredients?', 'Yes the product is made from natural ingredients and does not contain any additives or artificial flavoring.', '2024-05-02 07:00:02', '2024-05-02 07:00:02'),
(108, 35, 'How much water can the petique’s pet bowl hold?', 'The bowl is designed to hold up to 700ml of water.', '2024-05-06 09:44:43', '2024-05-06 09:44:43'),
(109, 35, 'Are the bowls foldable?', 'Yes, the bowls can be folded to make it easier to carry them.', '2024-05-06 09:45:09', '2024-05-06 09:45:09'),
(110, 35, 'How can I clean the bowls?', 'The bowls can be detached easily from cover. Simply clip it off and either rinse or wipe it away.', '2024-05-06 09:45:26', '2024-05-06 09:45:26'),
(111, 35, 'Can the bowl hold enough food for my dog?', 'The bowl can hold up to 750 grams of food which is enough for small to medium breeds of dogs.', '2024-05-06 09:45:47', '2024-05-06 09:45:47'),
(112, 35, 'Can i attach the bowl bag to my backpack?', 'The cover comes with a wrist handle that can easily be attached to your backpack.', '2024-05-06 09:46:07', '2024-05-06 09:46:07'),
(113, 38, 'What is color critter?', 'A non-toxic, pet-safe, temporary dog fur coloring is known as critter color. It comes in various colors and is composed entirely of natural substances.', '2024-05-06 09:52:27', '2024-05-06 09:52:27'),
(114, 38, 'How does this temporary dog fur coloring works?', 'Each hair strand in your dog’s fur is coated for critter color to work. Removing it with shampoo is an easy option since it doesn’t go down the hair shaft.', '2024-05-06 09:53:12', '2024-05-06 09:53:12'),
(115, 38, 'Can it be applied to all dogs?', 'Yes, of course! All dogs, including puppies and those with sensitive skin, can safely use critter color. But we recommend doing a patch test on a tiny section of your dog’s fur to apply critter color.', '2024-05-06 09:53:33', '2024-05-06 09:53:33'),
(116, 38, 'How should I use Critter Color?', 'Apply Critter Color to your dog’s dry or damp fur using an airbrush system, tint brush, spray bottle, or gloved hand made of latex. Use a hair dryer to set the color after applying the Critter Color. You can also customize the color by applying multiple applications together.', '2024-05-06 09:53:50', '2024-05-06 09:53:50'),
(117, 38, 'What is the duration of Critter Color?', 'After one or two baths, Critter Color will fade naturally after a few weeks. The coat type your dog has, the length of their fur, and the quantity of Critter Color you apply will all affect how long it lasts.', '2024-05-06 09:54:08', '2024-05-06 09:54:08'),
(118, 39, 'What is the drying time for dog nail polish?', 'It usually takes polish paint to dry on your dog’s nails in less than 40 seconds, making this application simple and smudge-proof.', '2024-05-06 09:55:44', '2024-05-06 09:55:44'),
(119, 39, 'Is it okay to paint your dog’s nails?', '<p>Concerning your dogs, we recognize how important safety is. PawPolish is made with non-toxic, pet-safe components because of this. Our water-based product is kind to nails, so you and your pet may enjoy a stress-free, enjoyable experience.</p>', '2024-05-06 09:55:52', '2024-05-06 09:56:19'),
(120, 39, 'Is my dog safe to use Warren London Pawdicure Dog Nail Polish?', 'Using Warren London Pawdicure Dog Nail Polish is safe for your dog. Because it’s water-based and non-toxic, your dog won’t get hurt if they lick their paws.', '2024-05-06 09:57:03', '2024-05-06 09:57:03'),
(121, 39, 'How long does this nail polish last?', 'A dog’s activity level and frequency of bathing will determine how long this nail polish will last. We believe it usually lasts for 1-2 weeks.', '2024-05-06 09:57:37', '2024-05-06 09:57:37'),
(122, 39, 'How to take off this Pawdicure dog nail polish?', 'Just use a non-acetone nail polish remover to remove this dog nail polish. Using a cotton ball and the remover, clean each nail until all traces of polish are removed.', '2024-05-06 09:57:56', '2024-05-06 09:57:56'),
(123, 42, 'Is the tonic free from any chemical based ingredients?', 'The product consists of proprietary ayurvedic formulation and does not contain any harmful ingredients.', '2024-05-06 10:03:06', '2024-05-06 10:03:06'),
(124, 42, 'Will this tonic help in treating urinary tract infection in my pet?', 'Yes, the herbal ingredients help in treating urinary tract infection from the root.', '2024-05-06 10:03:31', '2024-05-06 10:03:31'),
(125, 42, 'Does herbal tonic help in better functioning of my pet’s kidneys?', 'The tonic supports and helps in healthy functioning of the kidneys. It makes the kidneys function properly by filtering waste out of the body and maintaining optimum hydration levels.', '2024-05-06 10:03:46', '2024-05-06 10:03:46'),
(126, 42, 'At what age can I give this tonic to my pet?', 'The tonic is suitable for dogs and cats of all ages.', '2024-05-06 10:04:06', '2024-05-06 10:04:06'),
(127, 42, 'How much tonic can I get from one pack?', '<p>One bottle contains 200ml tonic.</p>', '2024-05-06 10:05:19', '2024-05-06 10:05:37'),
(128, 43, 'where can this balm be applied on my dog?', 'The hemp balm can be applied on the skin, nose and paws of your dog or cat.', '2024-05-06 10:11:09', '2024-05-06 10:11:09'),
(129, 43, 'Does this balm protect my pet from bacterial and fungal issues?', 'Yes the product is designed to keep the bacterial and fungal infections away from your pet.', '2024-05-06 10:11:32', '2024-05-06 10:11:32'),
(130, 43, 'Is the balm free from any non toxic ingredients?', 'The balm does not contain any harmful chemical and is made from natural products which are hemp seed oil, honey bee wax and petroleum jelly.', '2024-05-06 10:11:56', '2024-05-06 10:11:56'),
(131, 43, 'Does this balm help in creating a barrier against hot and cold surfaces?', 'The balm helps to protect the skin, nose and paws from extreme hot or cold temperatures', '2024-05-06 10:14:32', '2024-05-06 10:14:32'),
(132, 43, 'Will my pet stay calm if I apply this hemp balm on my pet?', 'The hemp balm is infused with lavender oil extracts which has a soothing effect on your pet.', '2024-05-06 10:14:49', '2024-05-06 10:14:49'),
(133, 44, 'is hemp protein easier to digest than animal protein?', 'The plant based protein fulfills the protein needs of your pet while being gentle on the stomach and easier to digest than animal meat.', '2024-05-06 10:18:42', '2024-05-06 10:18:42'),
(134, 44, 'Is hemp protein good for my cat?', 'Protein is vital for the growth of your pet and keeping your pet active. The hemp protein helps in fulfilling various nutrient requirements of your pet.', '2024-05-06 10:18:59', '2024-05-06 10:18:59'),
(135, 44, 'How do I feed the hemp protein to my pet?', 'You can sprinkle some protein on the food, add it to homemade treats or simply make a smoothie.', '2024-05-06 10:19:30', '2024-05-06 10:19:30'),
(136, 44, 'what is the ingredient list of this product?', '<p>The product contains 100% pure hemp protein.</p>', '2024-05-06 10:19:30', '2024-05-06 10:19:52'),
(137, 44, 'How much protein should I feed to my cat?', 'You can feed your cat 1-2 scoops(5-10gms) of protein daily.', '2024-05-06 10:20:11', '2024-05-06 10:20:11'),
(138, 45, 'Can I feed the hemp seed oil to my dog who has a sensitive stomach?', 'The hemp seed oil is gentle on the sensitive stomach of your dog and is easy to digest.', '2024-05-06 10:25:57', '2024-05-06 10:25:57'),
(139, 45, 'Does hemp seed oil help in increasing the appetite of my pet?', 'Yes, the hemp seed oil helps in increasing the appetite of your pet and also improves the digestive system.', '2024-05-06 10:26:18', '2024-05-06 10:26:18'),
(140, 45, 'Does the product undergo quality check?', 'The quality and purity of the hemp seed oil is checked properly.', '2024-05-06 10:26:33', '2024-05-06 10:26:33'),
(141, 45, 'Can I give the hemp seed oil to my pet daily?', 'Yes you can give the hemp seed oil to your pet daily in the prescribed quantity.', '2024-05-06 10:26:52', '2024-05-06 10:26:52'),
(142, 45, 'How many servings does one bottle provide?', 'The product has 30 servings per pack.', '2024-05-06 10:27:07', '2024-05-06 10:27:07'),
(143, 46, 'What ingredients are present in the hemp gravy for dogs?', 'The product contains 100% hemp seed oil, real chicken, chicken liver, meat, eggs, rice, vegetables, gravy, natural flavours and organic vitamins & minerals.', '2024-05-06 10:34:51', '2024-05-06 10:34:51'),
(144, 46, 'How do I serve the item to my dog?', 'Just pour the gravy over the regular food of your dog and instantly the regular dog food is converted into delicious and nutritious food.', '2024-05-06 10:35:22', '2024-05-06 10:35:22'),
(145, 46, 'How do I store the packet after opening it?', 'Keep the packet in the refrigerator after opening it. If the packet is sealed, keep it in cool and dry place away from sunlight.', '2024-05-06 10:35:38', '2024-05-06 10:35:38'),
(146, 46, 'What nutrients does this hemp gravy for dogs provide?', 'The gravy is packed with essential nutrients such as healthy fats, protein and crude fibre.', '2024-05-06 10:35:55', '2024-05-06 10:35:55'),
(147, 46, 'What serving amount is best for my dog?', 'Dogs weighing 1-5 kgs should be served 2-4 pouches, 5-10 kg dogs should be served between 4-7 pouches and for the bigger dogs with weight between 10-25kgs the ideal serving is between 7-13 pouches.', '2024-05-06 10:36:15', '2024-05-06 10:36:15'),
(148, 47, 'What is the purpose of Truecoat Gold Wash Herbal Dog Shampoo?', 'This natural, herbal shampoo is made to clean and condition your dog’s coat. It has 16 plants, including amla, bhringaraj, aloe vera, onion, reetha, and Chandan.', '2024-05-06 10:39:57', '2024-05-06 10:39:57'),
(149, 47, 'Can all dogs use this Truecoat Shampoo?', 'It is safe for all dogs, even pups and dogs with sensitive skin, to use Trucoat Gold Wash Herbal dog shampoo.', '2024-05-06 10:40:15', '2024-05-06 10:40:15'),
(150, 47, 'When is the right time to give my dog a bath using Trucoat Gold Wash Herbal Dog Shampoo?', 'You can use this Truecoat Herbal Dog shampoo to bathe your dog anytime. It is advisable to bathe your dog no more than once a week if they have sensitive skin.', '2024-05-06 10:40:33', '2024-05-06 10:40:33'),
(151, 47, 'Is the pH of the herbal dog shampoo balanced?', 'Yes, this is because Truecoat Gold Wash Herbal Shampoo for dogs is mild on your dog’s skin.', '2024-05-06 10:40:51', '2024-05-06 10:40:51'),
(152, 47, 'Does this shampoo contains any harsh chemicals?', 'No, there are no harsh chemicals in herbal dog shampoo. It is created using only natural components.', '2024-05-06 10:41:08', '2024-05-06 10:41:08'),
(153, 48, 'What are the Directions for Use?', 'Fipronil is applied topically to the skin or haircoa. Apply the drops directly on the neck or between the shoulder blades of your dog so He\\She can’t reach or lik it.', '2024-05-06 10:42:44', '2024-05-06 10:42:44'),
(154, 48, 'Is Fiprofort suitable for puppies?', 'Fiprofort is typically intended for dogs older than 8 weeks and weighing over 2 kg. However, it’s important to check the product label and consult your veterinarian for specific advice for puppies.', '2024-05-06 10:43:00', '2024-05-06 10:43:00'),
(156, 48, 'What should I do if my dog licks or ingests Fiprofort?', 'If your dog licks the applied area or ingests Fiprofort, it may lead to drooling, tremors, or other symptoms. Contact your veterinarian immediately if this occurs.', '2024-05-06 10:43:21', '2024-05-06 10:43:21'),
(157, 48, 'Can my dog go swimming or be bathed after applying Fiprofort?', 'Fiprofort is water-resistant after 48 hours of application. Before that time, it’s best to avoid bathing your dog or letting them swim to ensure the product’s effectiveness.', '2024-05-06 10:43:53', '2024-05-06 10:43:53'),
(158, 48, 'How long does one application of Fiprofort provide protection?', 'Fiprofort typically provides protection for one month. After this period, it’s recommended to reapply for continuous coverage.', '2024-05-06 10:44:18', '2024-05-06 10:44:18'),
(159, 49, 'Can I use Fiprofort if my dog has other medical conditions or is on other medications?', 'Always consult your veterinarian before using Fiprofort if your dog has existing medical conditions or is taking other medications. They can provide guidance on potential interactions or contraindications.', '2024-05-06 10:45:05', '2024-05-06 10:45:05'),
(160, 49, 'Is this product Vet Approved', 'FIPROFORT PLUS is a vet approved safe drug for breaking flea life cycles & preventing re-infestation. Clinical studies have shown that Fiprofort Plus reduces the egg laying and hatching capacity in female ticks.', '2024-05-06 10:45:24', '2024-05-06 10:45:24'),
(161, 49, 'How long does it take for Fiprofort to start working?', 'Fiprofort starts to kill fleas within 24 hours and ticks within 48 hours after application. It also provides long-lasting protection against re-infestation.', '2024-05-06 10:45:40', '2024-05-06 10:45:40'),
(162, 49, 'Can I use Fiprofort if my dog is pregnant or lactating?', 'Always consult your veterinarian before using Fiprofort on a pregnant or lactating dog, as they can provide guidance on safety and appropriate use.', '2024-05-06 10:46:00', '2024-05-06 10:46:00'),
(163, 49, 'What are the Side effects of Fiprofort?', 'Fiprofort is generally safe, but potential side effects can include localized irritation, excessive salivation, or mild lethargy. Rare, severe reactions like tremors or seizures require immediate veterinary attention.', '2024-05-06 10:46:15', '2024-05-06 10:46:15'),
(164, 50, 'How does Fiprofort Tick n Flea Spot-on work?', 'Fiprofort contains Fipronil, which paralyzes and kills adult fleas and ticks, along with S-methoprene, an insect growth hormone regulator that disrupts the flea life cycle. This combination offers one-month protection against fleas and ticks.', '2024-05-06 10:47:44', '2024-05-06 10:47:44'),
(165, 50, 'Does Fiprofort Tick n Flea Spot-on For Dogs 20-40 Kg work on all dogs?', 'Fiprofort Tick n Flea Spot-on is suitable for large dog breeds weighing between 20 – 40 Kg.', '2024-05-06 10:47:59', '2024-05-06 10:47:59'),
(166, 50, 'How should I prepare Fiprofort Tick n Flea Spot-on?', 'Follow the product’s specific instructions for preparation, which typically involve parting your dog’s hair between the shoulder blades and applying the drops directly to the skin. Make sure to use the correct dosage based on your dog’s weight.', '2024-05-06 10:48:14', '2024-05-06 10:48:14'),
(167, 50, 'What should I do if my dog experiences side effects after using Fiprofort?', 'Monitor your dog for any unusual reactions. If you observe severe side effects such as tremors or seizures, seek immediate veterinary attention.', '2024-05-06 10:48:46', '2024-05-06 10:48:46'),
(168, 50, 'How often should I apply Fiprofort to my dog?', 'Fiprofort is usually applied once a month for continuous protection. Always follow the specific product instructions and consult your veterinarian for guidance.', '2024-05-06 10:49:01', '2024-05-06 10:49:01'),
(169, 51, 'How to Store Fiprofort Tick n Flea Spot-on For Dogs 40-60 Kg?', 'Fiprofort should be stored below 30°C. Keep it in a cool, dry place away from direct sunlight and out of reach of children and pets.', '2024-05-06 10:49:52', '2024-05-06 10:49:52'),
(170, 51, 'What Problems Do Ticks and Fleas Cause in Dogs?', 'Ticks and fleas can cause skin irritation, allergic reactions, anemia, and transmit diseases, impacting a dog’s comfort and health.', '2024-05-06 10:50:20', '2024-05-06 10:50:20'),
(171, 51, 'Is Fiprofort Tick n Flea Spot-on effective against ticks and fleas on all dog breeds?', 'Fiprofort is effective on dogs of all breeds, but it’s essential to choose the correct product variation based on your dog’s weight for optimal results.', '2024-05-06 10:50:37', '2024-05-06 10:50:37'),
(172, 51, 'How soon will I see results after applying Fiprofort?', 'Fiprofort begins killing fleas within 24 hours and ticks within 48 hours of application. However, full effectiveness may take a few days as it works through the flea and tick life cycle.', '2024-05-06 10:50:54', '2024-05-06 10:50:54'),
(173, 51, 'Can I bathe my dog after applying Fiprofort?', 'You should wait for at least 24 hours after applying Fiprofort before bathing your dog to ensure its effectiveness is not compromised.', '2024-05-06 10:51:11', '2024-05-06 10:51:11'),
(174, 52, 'Why should you choose Kong toys for your dogs?', 'Dog toys made especially for Kong treats and food treats and food provide entertaining, demanding, and reward-based play for puppies. Your dog will enjoy the enrichment these toys offer, regardless of the breed, and they will be rewarded with a delicious treat.', '2024-05-06 10:52:48', '2024-05-06 10:52:48'),
(175, 52, 'What is the purpose of this classic dog toy?', 'Now, you can keep your dog preoccupied and entertained with the help of this classic dog toy. It is available for dogs of all ages and comes in various sizes.', '2024-05-06 10:53:06', '2024-05-06 10:53:06'),
(176, 52, 'Is the Kong Classic Dog Toy safe for my dog?', 'Dogs can play with the Kong Classic Dog Toy with great safety. It is composed of long-lasting rubber that is BPA-free and non-toxic. To make sure your dog doesn’t swallow any big rubber bits, it’s crucial to keep an eye on them while they play with the toy.', '2024-05-06 10:53:25', '2024-05-06 10:53:25'),
(177, 52, 'What sizes are available?', 'Five sizes are available for this dog toy: small, medium, large, x-large, and extreme.', '2024-05-06 10:53:43', '2024-05-06 10:53:43'),
(178, 52, 'How often should I give this toy to my dog?', 'A Kong Classic Dog Toy is something you can give as often as you’d like. But watch them and take away if it’s causing him too much damage.', '2024-05-06 10:54:02', '2024-05-06 10:54:02'),
(179, 53, 'How should a Kong Extreme Dog toy be used?', 'To utilize a Kong Extreme Dog Toy, offer your dog something to eat or treat out of it. To extend the Kong’s shelf life, freeze it before giving it to your dog.', '2024-05-06 10:56:54', '2024-05-06 10:56:54'),
(180, 53, 'How to clean this dog toy?', 'A Kong Extreme dog toy can be cleaned easily in warm water with dish soap. It can also be placed on the top rack of the dishwasher.', '2024-05-06 10:57:27', '2024-05-06 10:57:27'),
(181, 53, 'How do I use this extreme dog toy?', 'There are several uses for the Kong Extreme Dog Toy, including fetching, chewing, and puzzle-solving. Just toss the toy for your dog to chase and collect it to use for fetching. Fill this dog toy with your preferred food or treats, then give it to them so they can chew. It will take some effort on your dog’s part to figure out how to get the food or treats out.', '2024-05-06 10:57:46', '2024-05-06 10:57:46'),
(182, 53, 'Can my dog safely play with the kong extreme dog toy?', 'The Kong Extreme dog toy is reliable and safe for dogs of all ages and sizes. When your dog is playing with any toy, it’s crucial to keep an eye on them and replace the item if it gets broken.', '2024-05-06 10:58:02', '2024-05-06 10:58:02'),
(183, 53, 'My dog chews things quite aggressively. Will he be able to chew through the Kong extreme dog toy?', 'Even the most aggressive chewers shouldn’t be able to break the Kong extreme dog toy. It is composed of a resilient rubber material that is hard to damage. But since no toy is unbreakable, you should always watch your dog when they play with the Kong Extreme Dog Toy..', '2024-05-06 10:58:17', '2024-05-06 10:58:17'),
(184, 54, 'How can I get my dog the appropriate size leash?', 'Measure your dog’s chest circumference at its widest point to get the appropriate size leash. Next, select a long leash to allow your dog to go around freely without becoming a trip hazard.', '2024-05-06 10:59:39', '2024-05-06 10:59:39'),
(185, 54, 'How should I maintain my dog leash?', 'All you need to do is wash your dog’s leash in warm water with dish soap to take care of it. Ensure the leash is totally dried by air before using it again.', '2024-05-06 11:00:09', '2024-05-06 11:00:09'),
(186, 54, 'Which kind of leash works best for a huge and medium-sized dog breed?', 'A strong flat leash or double-ended leash is the ideal kind of dog leash for a medium or large breed. Retractable leashes might be challenging to manage if your dog pulls, and large dogs should use something other than hands-free leashes.', '2024-05-06 11:00:30', '2024-05-06 11:00:30'),
(187, 54, 'How can I teach my dog to use a leash?', 'The first step in teaching your dog to walk on a leash is to teach them the fundamental obedience commands, such as sit, stay, and come. When your dog is proficient with these commands, you can train them to walk with a leash.', '2024-05-06 11:00:45', '2024-05-06 11:00:45'),
(188, 54, 'What benefit does a five foot leash offers?', 'A 5-foot leash works well for most dogs as an all-purpose length. It’s just long enough to let your dog explore on his own, but it’s also just short enough to keep him near you.', '2024-05-06 11:01:01', '2024-05-06 11:01:01'),
(189, 55, 'What makes this set “ultimate”?', 'This is the best leash and collar combination available for medium and large breed dogs since it is made of premium materials, will last a long time, and is easy for your dog to wear. In addition to the collar’s integrated ID tag holder, the leash is also reflective for added safety.', '2024-05-06 11:02:33', '2024-05-06 11:02:33'),
(190, 55, 'Is my dog able to wear the collar comfortably?', 'Yes, the dogs will find the collar comfortable because it comprises padded, rust-resistant metal locks. Additionally,  the collar features an easy-to-take-off quick-release buckle.', '2024-05-06 11:02:51', '2024-05-06 11:02:51'),
(191, 55, 'How should I measure my dog’s neck for the collar?', 'Using a soft measuring tape, measure your dog’s neck circumference around the broadest area of its neck to determine the collar size. Ensure the collar and your dog’s neck can comfortably accommodate two fingers.', '2024-05-06 11:03:15', '2024-05-06 11:03:15'),
(192, 55, 'Will my large dog be able to fit in this set?', 'Yes, this set is suitable for all medium and large dogs.', '2024-05-06 11:03:34', '2024-05-06 11:03:34'),
(193, 55, 'If the leash or collar gets damaged, what should I do?', 'You must get a new leash or collar once if any damage occurs. A broken collar or leash can let your dog escape.', '2024-05-06 11:03:51', '2024-05-06 11:03:51'),
(194, 56, 'Can I give this tonic to my senior dog?', 'Yes, the Omega 3 & 6 coat tonic is suitable for all ages of cats and dogs. In fact, it helps senior pets by providing them with good skin and coats while also supporting their overall health.', '2024-05-06 11:05:59', '2024-05-06 11:05:59'),
(195, 56, 'Can I give my pregnant or nursing dog Omega 3 & 6 coat tonic?', 'Yes, this tonic is safe for both pregnant and nursing dogs. In fact, it can be especially advantageous for these dogs, as it can promote both their own health and the health of their puppies or kittens.', '2024-05-06 11:06:19', '2024-05-06 11:06:19'),
(196, 56, 'How should I feed this tonic to my pet?', 'Omega 3 & 6 Skin & Coat Tonic is usually sold as a liquid that may be mixed into your pet’s food or water. The recommended dosage will vary depending on the size and weight of your pet. You must always follow the directions on the product label.', '2024-05-06 11:06:36', '2024-05-06 11:06:36'),
(197, 56, 'When will I see the results from the Omega 3 & 6 tonic?', 'Most pet owners notice effects within a few weeks of treating their pet Omega 3 & 6 Skin & Coat Tonic. However, it may take up to 12 weeks to get the full effects of the supplement.', '2024-05-06 11:06:53', '2024-05-06 11:06:53'),
(198, 56, 'How long will it take for you to deliver this supplement?', 'It usually takes us 3-10 days to deliver your product as per the location', '2024-05-06 11:07:09', '2024-05-06 11:07:09'),
(199, 57, 'What is Ichnil Anti-bacterial ointment?', 'Inchnil Anti-bacterial ointment is a topical medication used to treat small wounds, scrapes, and skin infections in dogs and cats. It contains the active components of antibiotics bacitracin, neomycin, and polymyxin B.', '2024-05-06 11:09:29', '2024-05-06 11:09:29'),
(200, 57, 'Is it safe to use anti-bacterial ointment for dogs and cats?', 'When used as indicated, Inchnil ointment is safe for dogs and cats. However, you must remember that some animals may be allergic to the ointment’s contents. Stop using the ointment and call your veterinarian if you observe any signs of an allergic response, such as redness, swelling, or itching.', '2024-05-06 11:09:48', '2024-05-06 11:09:48'),
(201, 57, 'How should I apply Ichnil ointment to my pet?', 'Just apply a thin layer of Ichnil ointment to the area twice or thrice a day. Also, wash your hands after using the ointment.', '2024-05-06 11:10:04', '2024-05-06 11:10:04'),
(202, 57, 'What should I do if my dog or cat accidentally ingests Ichnil Anti-bacterial ointment?', 'Contact your veterinarian immediately if your dog or cat consumes Ichnil Anti-bacterial ointment. Ingestion of the ointment might cause stomach distress, vomiting, and diarrhea. Seizures and coma can also occur in severe situations.', '2024-05-06 11:10:24', '2024-05-06 11:10:24'),
(203, 57, 'How should Ichnil Anti-bacterial Ointment be stored?', 'Ichnil Antibacterial Ointment should be kept at room temperature and away from direct sunlight and moisture. Keep the ointment away from children and pets.', '2024-05-06 11:10:40', '2024-05-06 11:10:40'),
(204, 58, 'What is the use of Turbovet anti-fungal dusting powder for dogs and cats?', 'Turbovet Antifungal Dusting Powder is a topical antifungal drug used to treat and prevent fungal skin infections in dogs and cats, such as ringworm, yeast infections, and hot spots.', '2024-05-06 11:12:19', '2024-05-06 11:12:19'),
(205, 58, 'What is the proper way to apply Turbovet Anti Fungal Dusting Powder?', 'Apply a little Turbovet Antifungal Dusting Powder to the afflicted region of the skin once or twice daily. Clean, dry skin should be used to apply the powder.', '2024-05-06 11:12:56', '2024-05-06 11:12:56'),
(206, 58, 'Can both dogs and cats use this dusting powder?', 'Turbovet Anti fungal dusting powder is suitable for all ages, dogs and cats. However, it is crucial to note that miconazole nitrate can be harmful if consumed, so keep the powder out of reach of your cat.', '2024-05-06 11:13:21', '2024-05-06 11:13:21'),
(207, 58, 'What are the side effects of Turbovet Anti fungal powder?', 'Generally, dogs and cats tolerate Turbovet Antifungal Dusting Powder well. Some animals, however, may develop minor adverse effects such as skin irritation, redness, and itching. If your pet develops any side effects, discontinue use and contact your veterinarian.', '2024-05-06 11:13:41', '2024-05-06 11:13:41');
INSERT INTO `product_faqs` (`id`, `product_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(208, 58, 'Can I use Turbovet Anti-Fungal Dusting Powder in conjunction with other medications?', 'It is critical to consult your veterinarian before using Turbovet Antifungal Dusting Powder in conjunction with other drugs, as some treatments may interact with miconazole nitrate.', '2024-05-06 11:13:59', '2024-05-06 11:13:59'),
(209, 59, 'When should I make my puppy drink deworming syrup?', 'Deworm the puppy as soon as it reaches 2 or 3 weeks of age and then regularly. Worms are treated with medication, which can be given to the puppy in liquid or pill form.', '2024-05-06 11:16:42', '2024-05-06 11:16:42'),
(210, 59, 'Is Skyworm harmful to dogs?', 'Skyworm Puppy Dewormer Suspension is suitable for all ages and breeds of pets, and it is mild on the stomach. You can rely on SKYWORM Deworming, which consists of a synergistic combination of Pyrantel embonate and Febantel that is safe for use in pups and has a 90% effectiveness rate.', '2024-05-06 11:16:59', '2024-05-06 11:16:59'),
(211, 59, 'Is it necessary to deworm my puppy on a regular basis?', 'Puppies should be dewormed every two weeks until they reach the age of three months. Puppies should be dewormed once a month for three months until they are six months old. Puppies over six months can be dewormed every three months or as prescribed by your veterinarian', '2024-05-06 11:17:21', '2024-05-06 11:17:21'),
(212, 59, 'How should I store this puppy dewormer suspension?', 'Skyworm Puppy Dewormer Suspension should be kept at room temperature, out of direct sunlight, and away from moisture. Keep the dewormer away from youngsters and pets.', '2024-05-06 11:17:44', '2024-05-06 11:17:44'),
(213, 59, 'How do I administer this syrup to my puppy?', 'Skyworm Puppy Dewormer Suspension can be injected directly into your puppy’s mouth with a syringe or mixed into their food. The dosage is one milliliter per kilogram of body weight. A 5kg puppy, for example, would receive a dose of 5ml.', '2024-05-06 11:18:05', '2024-05-06 11:18:05'),
(214, 60, 'What are the advantages of using a herbal dewormer on my dog?', 'Herbal dewormers are often safer and gentler on your dog’s digestive tract than chemical dewormers. They can also be effective against a broader spectrum of parasites, such as roundworms, hookworms, tapeworms, and whipworms.', '2024-05-06 11:20:40', '2024-05-06 11:20:40'),
(215, 60, 'How often should I give this dewormer to my dog?', 'Give Defender Pro Herbal Dewormer once a month to puppies and dogs under 6 months old. Every three months, give Defender Pro Herbal Dewormer to dogs over the age of six months.', '2024-05-06 11:21:04', '2024-05-06 11:21:04'),
(216, 60, 'What should I do if my dog has a severe reaction to Defender Pro Herbal Dewormer?', 'If your dog develops a serious response to Defender Pro Herbal Dewormer, such as trouble breathing, swelling of the face or throat, or hives, contact your veterinarian right away.', '2024-05-06 11:21:22', '2024-05-06 11:21:22'),
(217, 60, 'What ingredients are used in this medication?', 'It comes with a blend of ingredients such as Cellulase, Cloves Extract 30 mg, Ginger extract 10mg, Pumpkin seed 50mg, and other herbal ingredients.', '2024-05-06 11:21:41', '2024-05-06 11:21:41'),
(218, 60, 'Is Defender Pro Herbal Dewormer safe for pups under the age of six weeks?', 'No, Defender Pro Herbal Dewormer is not suitable for puppies under the age of six weeks. Puppies this young cannot be dewormed with any treatment.', '2024-05-06 11:22:05', '2024-05-06 11:22:05'),
(219, 61, 'What exactly is Defender Plus Dewormer?', 'Defender Plus Dewormer is a broad spectrum designed for pups and adult dogs weighing over 3 kg. It works on roundworms, hookworms, tapeworms, and whipworms. Defender Plus Dewormer has three powerful chemicals that destroy and eliminate all worms from your dog’s digestive system: fenbendazole, praziquantel, and pyrantel pamoate.', '2024-05-06 11:23:26', '2024-05-06 11:23:26'),
(220, 61, 'How can I administer Defender Plus Dewormer to my dog?', 'This Defender Plus tablet can be given to your dog or by hiding in its meal. The dosage depends on the weight of your dog. Give one tablet to pups and adult dogs weighing more than 3kg and up to 10kg. Give one pill for every 10kg of body weight to dogs weighing over 10kg.', '2024-05-06 11:23:45', '2024-05-06 11:23:45'),
(221, 61, 'How often should I use Defender Plus Dewormer for my dog?', 'Puppies should be dewormed every two weeks until they reach the age of 12 weeks and then every three months after that. Every three months, adult dogs should be dewormed. If your dog is at high risk of worm infection, such as pregnancy or nursing, or spends much time outside, you may need to deworm her more frequently.', '2024-05-06 11:24:00', '2024-05-06 11:24:00'),
(222, 61, 'Can I give these tablets to my pregnant or nursing dogs?', 'Defender Plus Dewormer is not harmful to pregnant or nursing dogs. However, before administering any medication to your dog, please consult your veterinarian, especially if she is pregnant or nursing.', '2024-05-06 11:24:15', '2024-05-06 11:24:15'),
(223, 61, 'What should I do if I suspect my dog has worms?', 'If you suspect your dog has worms, take him to the veterinarian for a diagnosis and treatment. Your veterinarian can recommend the best dewormer for your dog’s specific needs.', '2024-05-06 11:24:30', '2024-05-06 11:24:30'),
(224, 62, 'Is ORIJEN good for senior dogs?', 'While dogs have no nutritional need for carbs, standard senior diets still contain high-glycemic carbohydrates like potato and tapioca, often listed as a primary cause of obesity and diabetes. Biologically appropriate ORIJEN Senior is a protein-rich, carbohydrate-limited meal made out of lentils, chickpeas, squash, greens and fruits that release sugar slowly, lowering the potential for fat storage significantly.', '2024-05-06 11:27:10', '2024-05-06 11:27:10'),
(225, 62, 'Is there a lot of protein in Orijen Senior?', 'Yes, Orijen Senior contains a lot of protein. Protein is crucial for senior dogs because it keeps muscular mass and prevents muscle loss. Orijen Senior provides 85% protein derived from animal sources, higher than most senior dog diets.', '2024-05-06 11:28:11', '2024-05-06 11:28:11'),
(226, 62, 'Is ORIJEN fat-free?', 'No, it is not fat-free. Fat is another vital nutrient for elderly dogs since it gives them energy and keeps their skin and hair healthy. Orijen Senior has 15% fat from animal sources, slightly less than some senior dog diets but still sufficient.', '2024-05-06 11:28:28', '2024-05-06 11:28:28'),
(227, 62, 'How much of ORIJEN grain dry food should I give to my pet?', 'The amount of Orijen Senior you should feed your dog will vary according to age, size and activity level. You must follow the feeding instructions on the bag and then alter the amount as needed to maintain a healthy weight.', '2024-05-06 11:29:33', '2024-05-06 11:29:33'),
(228, 62, 'What is the difference between ORIJEN Original and ORIJEN Senior?', 'ORIJEN Original is a high-protein, low-carbohydrate diet appropriate for dogs of all life stages. ORIJEN Senior is an adaptation of the ORIJEN Original diet designed exclusively for the needs of older dogs. ORIJEN Senior has more protein and fat calories and less carbohydrates, which can aid in muscle maintenance and joint health in senior dogs.', '2024-05-06 11:29:49', '2024-05-06 11:29:49'),
(229, 63, 'Can I feed my overweight pet this Orijen Six Fish Grain Free Dry Dog Food?', 'Yes, ORIJEN offers a biologically appropriate energy distribution, with protein providing more energy and carbs providing less. When consumed in excess (as they frequently are), carbohydrates easily transform into body fat.', '2024-05-06 11:32:01', '2024-05-06 11:32:01'),
(230, 63, 'What portion of Orijen Six Fish Grain Free Dry Food should I give my dog?', 'The amount of food you give to your dog depends on their age, size, activity level, and overall health. First start with a small amount of food and gradually increase the amount until your dog maintains a healthy weight.', '2024-05-06 11:32:21', '2024-05-06 11:32:21'),
(231, 63, 'What components are present in this dry dog food by Orijen?', 'The first six ingredients in Orijen Six Fish Grain Free Dry Dog Food are whole fish: whole Atlantic mackerel, whole Atlantic herring, whole sardine, whole whiting, whole flounder, and whole redfish. The food also contains a range of additional fish ingredients, as well, as fruits, vegetables and minerals.', '2024-05-06 11:32:44', '2024-05-06 11:32:44'),
(232, 63, 'What is the best way to store Orijen Six Fish Grain Free Dry Food?', 'Orijen Six Fish Grain Free Dry Food should be stored in a cold, dry place. Once opened, the bag should be firmly sealed to keep the food fresh.', '2024-05-06 11:33:07', '2024-05-06 11:33:07'),
(233, 63, 'What should I do if my dog has an allergic reaction to this food?', 'If your dog experiences a reaction to this dry food, such as vomiting, diarrhea, or skin irritation, stop feeding the dog and consult your veterinarian.', '2024-05-06 11:33:29', '2024-05-06 11:33:29'),
(234, 64, 'What are the advantages of feeding my large dog with this Orijen grain free food?', 'Orijen grain-free food is a high-protein, low-carbohydrate diet perfect for growing large-breed puppies. It contains no wheat, gluten, or artificial substances and is produced with full, natural ingredients. It can help your puppy grow strong muscles and bones and give them a healthy immune system and a beautiful coat.', '2024-05-06 11:38:00', '2024-05-06 11:38:00'),
(235, 64, 'Can I feed my large breed dog Orijen grain free food if they have allergies or sensitivities?', 'Orijen grain dry food is an excellent choice for large-breed puppies allergic to grains or other components. Because it is manufactured from a few full, natural ingredients, it is less likely to cause an adverse reaction.', '2024-05-06 11:38:18', '2024-05-06 11:38:18'),
(236, 64, 'How do I transfer my large breed puppy to Orijen grain free food?', 'To transition your large breed puppy to Orijen grain-free food, mix 25% Orijen food with 75% of their existing food. Over the next 7-10 days, gradually increase the amount of Orijen food and decrease the amount of their current meal until they consume 100% Orijen food.', '2024-05-06 11:38:35', '2024-05-06 11:38:35'),
(237, 64, 'Can my adult pet dog have this Orijen grain free food?', 'Yes, you can feed your adult dog of any breed the Orijen grain-free food. However, it is crucial to remember that this meal is not intended for adult dogs of big species such as Great Danes.', '2024-05-06 11:38:56', '2024-05-06 11:38:56'),
(238, 64, 'How should I keep Orijen grain free food for large puppies stored?', 'Keep Orijen Grain Free Food for Large Puppies in a cool, dry place. To keep the food fresh, the bag should be firmly shut once opened.', '2024-05-06 11:39:17', '2024-05-06 11:39:17'),
(239, 66, 'What are the feeding guidelines for Orijen-free food?', 'The feeding guidelines for Orijen Original Grain Free Dog Food differ depending on your dog’s age, activity level, and breed. To ensure that your dog gets the right amount of food, carefully follow the feeding directions on the bag.', '2024-05-06 11:42:29', '2024-05-06 11:42:29'),
(240, 66, 'Is Orijen Original Grain Free Dog Food suitable for allergy-prone dogs?', 'Yes, Orijen Original Grain Free Dog Food is suitable for dogs with food allergies. It’s produced with whole-prey ingredients and doesn’t contain common allergens like wheat, soy, or corn.', '2024-05-06 11:42:51', '2024-05-06 11:42:51'),
(241, 66, 'How much does this supplement cost?', 'The price of Orijen Original Grain Free Dog Food varies depending on the size of the bag and the vendor. However, it is widely regarded as a premium dog food so it can range upto rs. 14399.', '2024-05-06 11:43:07', '2024-05-06 11:43:07'),
(242, 66, 'How much of this dog food should I feed to my dog?', 'The amount of ORIJEN Original Grain Free Dog Food you should feed your dog depends on their breed, age, degree of exercise, and overall health. To establish the optimal feeding amount for your dog, speak with your veterinarian.', '2024-05-06 11:43:29', '2024-05-06 11:43:29'),
(243, 66, 'Which ingredients are present in Orijen original free dog food?', 'The first five ingredients in ORIJEN Original Grain Free Dog Food are fresh chicken (boneless, skinless), fresh turkey (boneless, skinless), Whole Mackerel Whole Whiting Nest-Laid Eggs.', '2024-05-06 11:43:56', '2024-05-06 11:43:56'),
(244, 67, 'How should I provide Nutricoat Advance to my pet?', 'This Nutricoat liquid supplement can be administered orally to pets, along with food or water. The suggested daily dose is 1 teaspoon per 10 kg of body weight.', '2024-05-06 11:50:51', '2024-05-06 11:50:51'),
(245, 67, 'Is it suitable for all breeds of dog and cat?', 'Nutricoat Advance is generally safe for all dogs and cats, including puppies and kittens. However, before giving your pet any new supplement, consult your veterinarian.', '2024-05-06 11:51:20', '2024-05-06 11:51:20'),
(246, 67, 'What are the side effects of Nutricoat Advance?', 'The most common side effect of Nutricoat Advance is mild diarrhea. This is normally temporary and resolves on its own. If your pet has any other negative consequences, such as vomiting, loss of appetite, or lethargy, please call your veterinarian immediately.', '2024-05-06 11:51:39', '2024-05-06 11:51:39'),
(247, 67, 'How long does it take for Nutricoat Advance to produce results?', 'Most pet owners experience improvements from Nutricoat Advance within 2-4 weeks after beginning their supplementation. However, it may take longer for pets with severe skin issues to show considerable progress.', '2024-05-06 11:51:55', '2024-05-06 11:51:55'),
(248, 67, 'Who should use Nutricoat Advance?', 'Nutricoat Advance can be used by all dogs and cats, regardless of age, breed or health situation. It is especially good for all animals with skin and coat issues, including dryness, irritation, shedding and allergies. This supplement can also aid healing and enhance immunity in animals recovering from illness or injury.', '2024-05-06 11:52:12', '2024-05-06 11:52:12'),
(249, 68, 'Are calcium syrups safe for pets?', 'Yes, absolutely! A calcium supplement helps improve your pet’s overall health, including eyesight, bones, teeth etc. They are safe and can be given to the pet after asking the veterinarian’s guidance.', '2024-05-06 11:53:20', '2024-05-06 11:53:20'),
(250, 68, 'How long will it take to receive this calcium supplement?', 'Once your order has been dispatched, delivery can take between 3 to 10 working days. Delivery may take longer in some cities or outlying zip codes.', '2024-05-06 11:53:34', '2024-05-06 11:53:34'),
(251, 68, 'Can any breed of dog or cat can administer this supplement?', 'Yes, this calcium syrup is a beloved friend for all pets. However, consult your veterinarian to ensure you give them the right dosage.', '2024-05-06 11:54:22', '2024-05-06 11:54:22'),
(252, 68, 'What are the symptoms of calcium deficiency in dogs?', 'Heavy milk production in nursing female dogs can cause hypocalcemia (milk fever) and convulsions. Pets with low calcium levels often exhibit muscle twitching, loss of appetite, weakness and lethargicness. Pets may experience convulsions or seizures in severe circumstances.', '2024-05-06 11:54:44', '2024-05-06 11:54:44'),
(253, 68, 'How can I treat my pet\'s calcium deficiency?', 'Calcium insufficiency can be corrected easily. It usually entails increasing their calcium intake by adding more calcium supplements. But you should always seek your veterinarian’s approval.', '2024-05-06 11:55:09', '2024-05-06 11:55:09'),
(254, 69, 'How do I know if this tonic is right for my pet?', 'The Multivitamin Syrup for Cats & Dogs comes in chicken flavor and includes powerful ingredients like L Carnitine to promote heart health and amino acids such as L Leucine and L Lysine. This syrup offers benefits like faster recovery and promotes growth. Hence, there is no doubt that this syrup is right or not for your pet as it is suitable for all pets.', '2024-05-06 11:58:20', '2024-05-06 11:58:20'),
(255, 69, 'Does a professional food company approve of the syrup?', '<p>Remediovet does not deal with cheap products and endangers the lives of innocent animals. All our products are approved and regulated by ANFAAC label and contain pure and vital ingredients.</p>', '2024-05-06 11:58:46', '2024-05-06 11:59:25'),
(256, 69, 'What benefits will my pet receive after administering this multivitamin syrup?', 'Your pet will benefit in various ways such as healthy digestion, improved cognition, enhanced joint fluidity, healthy brain, heart, and liver and a lot many other benefits.', '2024-05-06 11:59:49', '2024-05-06 11:59:49'),
(257, 69, 'How should I administer multivitamin syrup for dogs & cats to my pet?', 'This syrup is usually administered orally once or twice a day. The recommended dosage will vary depending on the size and weight of your pet. You must always follow the directions on the product label.', '2024-05-06 12:00:17', '2024-05-06 12:00:17'),
(258, 69, 'Are there any shipping charges?', 'You will be happy that we provide free standard shipping with an online purchase of INR 500.', '2024-05-06 12:00:49', '2024-05-06 12:00:49'),
(259, 70, 'Is it okay if my cat chews on the cardboard?', 'Yes the material is safe to consume in case your cat plans to chew on it.', '2024-05-06 12:05:38', '2024-05-06 12:05:38'),
(260, 70, 'Is the petique’s cat bungalow scratch resistant?', 'The bungalow comes with a built-in scratcher which helps in relieving anxiety and stress of your cat?', '2024-05-06 12:05:54', '2024-05-06 12:05:54'),
(261, 70, 'Where should I store the cat bungalow?', 'Keep the product in a cool and dry place. Avoid the bungalow’s exposure to heat as it will warp and soften.', '2024-05-06 12:06:17', '2024-05-06 12:06:17'),
(262, 70, 'How many spots does this cat bungalow have?', '<p>Your cat can relax inside the bungalow or climb on the rooftop.</p>', '2024-05-06 12:06:40', '2024-05-06 12:07:02'),
(263, 70, 'Can children also play with my cat in the cat bungalow?', 'No, it is not ideal for children to play in the cat bungalow. Keep the children away from the product to avoid any dangerous situation.', '2024-05-06 12:07:23', '2024-05-06 12:07:23'),
(264, 71, 'Does the petique’s cat box help in relieving stress and anxiety of my cat?', 'Yes the product comes with scratchboards which help in reducing the stress and anxiety of the cat.', '2024-05-06 12:10:18', '2024-05-06 12:10:18'),
(265, 71, 'How much weight can the roof hold?', 'The roof can hold a maximum weight of 9 kgs.', '2024-05-06 12:10:32', '2024-05-06 12:10:32'),
(266, 71, 'Can I wash this cat box?', 'Do not wash or rinse this product. You can use dry cloth to clean the box.', '2024-05-06 12:10:46', '2024-05-06 12:10:46'),
(267, 71, 'Will it cause harm to my cat if it accidentally chews on it?', 'The product is safe and non toxic to consume.', '2024-05-06 12:11:03', '2024-05-06 12:11:03'),
(268, 71, 'Is the box difficult to assemble?', 'The box is very easy to assemble and keep at your space.', '2024-05-06 12:11:19', '2024-05-06 12:11:19'),
(269, 72, 'Which place is suitable to keep the cat penthouse?', 'The penthouse should be kept at a leveled and stable surface.', '2024-05-06 12:13:03', '2024-05-06 12:13:03'),
(270, 72, 'How many levels does this penthouse have?', 'The penthouse comes with three levels. Your cat can hop from one spot to another or multiple cats can prowl through the penthouse.', '2024-05-06 12:13:20', '2024-05-06 12:13:20'),
(271, 72, 'Can my cat chew on the penthouse?', 'Yes the penthouse is non toxic to chew on.', '2024-05-06 12:13:40', '2024-05-06 12:13:40'),
(272, 72, 'Is petique’s cat penthouse bad for the environment?', 'Do not worry that this product will add to the waste of the planet as this product is 100% eco friendly.', '2024-05-06 12:14:21', '2024-05-06 12:14:21'),
(273, 72, 'Does this cat penthouse come with a scratcher?', 'Yes the penthouse has built in scratcher.', '2024-05-06 12:14:40', '2024-05-06 12:14:40'),
(274, 92, 'What exactly is Defender Nex Pro Herbal Dewormer?', 'This dewormer for cats and kittens is a safe and effective approach to deworming your cat. It is produced from a combination of herbal substances that are safe and efficient against various worms, including roundworms, hookworms, and tapeworms.', '2024-05-06 12:16:44', '2024-05-06 12:16:44'),
(275, 92, 'Is the Herbal Dewormer safe for my cat?', 'Defender Nex Pro herbal dewormer is safe for all ages and breeds of cats, including pregnant and nursing females. It is also suitable for two-week-old kittens.', '2024-05-06 12:17:11', '2024-05-06 12:17:11'),
(276, 92, 'How can I administer Defender Nex Pro herbal dewormer to my cat?', '<p>To provide Defender Nex Pro herbal dewormer to your cat, break one tablet and add it to their food. If they are agreeable, you can even hand them the tablet immediately.</p>', '2024-05-06 12:17:50', '2024-05-06 12:19:45'),
(277, 92, 'Can I use Defender Nex Pro herbal dewormer to avoid worms?', 'This dewormer can be used to prevent worms. However, it is crucial to note that it is not as effective at avoiding worms as prescription dewormers are. If you are concerned about your cat catching worms, check with your veterinarian about a deworming program that is appropriate for them.', '2024-05-06 12:20:05', '2024-05-06 12:20:05'),
(278, 92, 'How long does Defender Nex Pro take to work?', 'Defender Nex Pro herbal dewormer will begin working as soon as you give it to your cat. It may, however, take many days for all of the worms to be killed and passed out of your cat’s body.', '2024-05-06 12:24:08', '2024-05-06 12:24:08'),
(279, 97, 'Does Petique’s airline approved pet travel bag provide air circulation and comfort?', 'Yes,the bag has expandable sides which have mesh that provide proper ventilation. The faux sherpa mat keeps your pet comfortable during the trip.', '2024-05-13 07:07:01', '2024-05-13 07:07:01'),
(280, 97, 'Is it easy to carry this pet travel bag?', 'Yes, the bag has wheels attached to it and has a telescoping handle which helps in easy maneuvering. The bag also consists of two long straps which can help you to easily carry the bag with your arms.', '2024-05-13 07:07:20', '2024-05-13 07:07:20'),
(281, 97, 'Does this bag keep the bugs away?', 'The mesh is durable and keeps bugs and insects away from your pet.', '2024-05-13 07:07:38', '2024-05-13 07:07:38'),
(282, 97, 'How to clean the pet travel bag?', 'Do not wash the bag in the washing machine. Only spot clean it.', '2024-05-13 07:07:53', '2024-05-13 07:07:53'),
(283, 97, 'How large is Petique\'s airline approved pet travel bag?', 'The dimensions of the bag are 20.47”L x 11.81”W x 14.56”H.', '2024-05-13 07:08:15', '2024-05-13 07:08:15'),
(284, 77, 'Is Fiprofort a Veterinarian-Approved Product?', 'Yes, Fiprofort is veterinarian-approved, ensuring it meets the necessary safety and efficacy standards for your cat’s well-being.', '2024-05-13 09:51:53', '2024-05-13 09:51:53'),
(285, 77, 'How Frequently Should I Apply Fiprofort?', 'The general guideline is to wait for the period of time the product is designed to work, typically 30 days, before reapplying.', '2024-05-13 09:52:10', '2024-05-13 09:52:10'),
(286, 77, 'How long does it take for Fiprofort to work?', 'Fiprofort acts swiftly to combat parasites. It effectively eliminates fleas within 24 hours of application, while ticks and lice meet their end within 48 hours.This rapid action provides your cat with quick relief from these troublesome pests, allowing them to live comfortably and itch-free.', '2024-05-13 09:52:27', '2024-05-13 09:52:27'),
(287, 77, 'What Types of Ticks and Fleas Does Fiprofort Protect Against?', 'Fiprofort is effective against a broad spectrum of ticks and fleas, including common species that can infest cats.', '2024-05-13 09:52:50', '2024-05-13 09:52:50'),
(288, 77, 'What Should I Do If My Cat Accidentally Ingests Fiprofort?', 'If your cat ingests Fiprofort, the bitter taste will often cause excessive drooling, and may cause vomiting so, contact your veterinarian or a pet poison helpline immediately. It’s crucial to seek professional guidance to ensure your cat’s safety', '2024-05-13 09:53:02', '2024-05-13 09:53:02'),
(289, 73, 'Should I give Hemp products to my cats?', 'Products from Hemp can help your dog or cat with various problems, including anxiety, seizures, and more.', '2024-05-13 09:54:00', '2024-05-13 09:54:00'),
(290, 73, 'Can all cats eat this Hemp gravy for cats with Real Tuna and whitefish?', 'Kittens, adults, and senior cats can safely consume Hemp Gravy for Cats with Real Tuna and whitefish. Cats with sensitivity or allergy to grains can also safely use it.', '2024-05-13 09:54:20', '2024-05-13 09:54:20'),
(291, 73, 'How often should I give Hemp Gravy to my cat?', 'Hemp Gravy for Cats with Real Tuna and Whitefish is something you may give to your cat as often as necessary. But it’s crucial to give your cat the right amount of food according to age, activity level, and physical health.', '2024-05-13 09:54:52', '2024-05-13 09:54:52'),
(292, 73, 'Is Hemp Gravy For Cats Complete and Well-Balanced With Real Tuna & Whitefish?', 'Yes, Hemp Gravy With Real Tuna and whitefish is a healthy and comprehensive cat food. It has every vital nutrient that cats require to keep healthy.', '2024-05-13 09:55:09', '2024-05-13 09:55:09'),
(293, 73, 'Is genuine meat used to make Hemp Gravy for Cats with genuine Tuna and whitefish?', 'Indeed, real tuna and whitefish make Hemp Gravy for Cats With Real Tuna and whitefish.', '2024-05-13 09:55:30', '2024-05-13 09:55:30'),
(294, 93, 'What is Defender Nex Dewormer?', 'Defender Nex Dewormer for Cats and Kittens is a broad-spectrum dewormer. It works on tapeworms, hookworms and roundworms.', '2024-05-13 09:58:41', '2024-05-13 09:58:41'),
(295, 93, 'How does this Dewormer works?', 'Defender Nex Dewormer comprises two active ingredients: praziquantel and pyrantel pamoate. Praziquantel paralyzes tapeworms, forcing them to separate from the intestinal wall and pass through the stool. Pyrantel pamoate paralyzes and kills hookworms and roundworms.', '2024-05-13 09:58:56', '2024-05-13 09:58:56'),
(296, 93, 'Is it safe to use Defender Nex Dewormer on my cat or kitten?', 'Defender Nex Dewormer is suitable for most cats and kittens weighing over 2 pounds and older than 2 months. However, before administering any medication to your pet, consult your veterinarian.', '2024-05-13 09:59:19', '2024-05-13 09:59:19'),
(297, 93, 'How can I administer Defender Nex Dewormer to my cat or kitten?', 'This tablet can be administered directly or by hiding it in your cat’s food. You can also smash the tablet and mix it with some wet food.', '2024-05-13 09:59:36', '2024-05-13 09:59:36'),
(298, 93, 'Are there any side effects of using these tablets?', 'The most common side effects of Defender Dewormer Tablets are vomiting and diarrhea. These side effects are often minimal and resolve independently within a few days. If your cat or kitten has serious adverse effects, please call your veterinarian immediately.', '2024-05-13 09:59:50', '2024-05-13 09:59:50'),
(299, 95, 'Is this sweatshirt stylish too or only made to provide warmth?', 'Yes, of course! When you buy this dog winter sweatshirt for your dog, you are buying a stylish sweatshirt that has a pop of colour too.', '2024-05-13 10:17:01', '2024-05-13 10:17:01'),
(300, 95, 'Will wearing this sweatshirt keep my dog smell-free?', '<p>Yes, indeed! The hoodie has Silvadur technology, which keeps your dog feeling fresh and helps combat canine odors.</p>', '2024-05-13 10:17:01', '2024-05-13 10:17:22'),
(301, 95, 'Does having a high tummy cut impact potty breaks?', 'Nope! The high tummy cut was designed to provide hassle-free, easy toilet breaks.', '2024-05-13 10:17:43', '2024-05-13 10:17:43'),
(302, 95, 'Is it easy to put on and take off this sweatshirt?', 'It is, indeed! The sweatshirt has an easy-to-use Velcro fastening that makes it easy to go on and off and fits comfortably.', '2024-05-13 10:17:59', '2024-05-13 10:17:59'),
(303, 95, 'Can my dog wear this sweatshirt at night too?', 'Of course! The sweatshirt’s reflective rims will increase your pet’s safety by keeping them visible on walks in the dark.', '2024-05-13 10:18:18', '2024-05-13 10:18:18'),
(304, 96, 'Can I give my puppy small breed dog food?', 'Yes, you can give your small or medium breed puppy specialized small breed puppy food. It’s designed to meet their unique nutritional needs, offering the right balance of nutrients in smaller kibble sizes for their smaller mouths.', '2024-05-13 10:19:16', '2024-05-13 10:19:16'),
(305, 96, 'How long should I feed my puppy with small breed puppy food?', 'You should feed your puppy with small breed puppy food until they reach adulthood. Typically, small breed puppies transition to adult dog food at around 9 to 12 months of age.', '2024-05-13 10:19:30', '2024-05-13 10:19:30'),
(306, 96, 'How does Dog Food support the growth and overall well-being of small and medium breed puppies?', 'Nurture Puppy Dog Food is specifically designed to provide the essential nutrients that small and medium breed puppies need for controlled growth, joint health, and overall well-being. It addresses their unique requirements to ensure they grow up healthy and strong.', '2024-05-13 10:19:48', '2024-05-13 10:19:48'),
(307, 96, 'Can I mix small breed puppy food with regular adult dog food for my small breed puppy?', 'While it’s possible to mix the two, it’s generally better to stick with small breed puppy food until they reach adulthood. Mixing can dilute the nutritional benefits of the specialized puppy food.', '2024-05-13 10:20:06', '2024-05-13 10:20:06'),
(308, 96, 'How Much protein is present in this dog food?', 'This dog food you’re referring to contains approximately 30% crude protein', '2024-05-13 10:20:23', '2024-05-13 10:20:23'),
(309, 78, 'Is it okay to give Applaws natural tuna to my kitten?', 'Yes, the Applaws All Natural Tuna in Jelly Kitten Wet Food is made specifically for your growing kitten.', '2024-05-13 10:24:38', '2024-05-13 10:24:38'),
(310, 78, 'Is tuna good for my kitten’s health?', 'Tuna is enriched in protein and omega 3. The protein contributes to the growth of your kitten and the omega 3 helps in improving the skin health.', '2024-05-13 10:24:54', '2024-05-13 10:24:54'),
(311, 78, 'What food can help my kitten incase of inflammatory issues?', 'Applaws All Natural Tuna in Jelly Kitten Wet Food contains omega 3 which can help your cat to improve inflammatory health.', '2024-05-13 10:25:09', '2024-05-13 10:25:09'),
(312, 78, 'Which breeds of cat can consume Applaws All Natural Tuna in Jelly Kitten Wet Food?', '<p>This food is safe for any breed of cat.</p>', '2024-05-13 10:25:11', '2024-05-13 10:25:26'),
(313, 78, 'At what time is it ideal to serve Applaws All Natural Tuna in Jelly Kitten Wet Food?', 'It is advised to feed the tuna in small quantities throughout the day.', '2024-05-13 10:26:41', '2024-05-13 10:26:41'),
(314, 79, 'How often can I feed this food to my cat?', 'Yes you can feed your cat chicken everyday but make sure to add other food items also to make the diet nutritious and balanced.', '2024-05-13 10:30:08', '2024-05-13 10:30:08'),
(315, 79, 'Can I feed this to my sick kitten?', 'Yes this product is designed keeping in mind the sensitive stomach of the kittens. This product is easy to digest and allows fast recovery.', '2024-05-13 10:30:31', '2024-05-13 10:30:31'),
(316, 79, 'Do I need to heat the food before serving?', 'You can serve the Applaws All Natural Chicken Breast in Broth Kitten Wet Food at room temperature.', '2024-05-13 10:30:49', '2024-05-13 10:30:49'),
(317, 79, 'How many can I serve in one day to my kitten?', 'For the growing kittens it is recommended to serve half of the food in tin.', '2024-05-13 10:31:14', '2024-05-13 10:31:14'),
(318, 79, 'Does this food provide protein to my cat?', 'Applaws All Natural Chicken Breast in Broth Kitten Wet Food contains a minimum of 10% of crude protein.', '2024-05-13 10:31:30', '2024-05-13 10:31:30'),
(319, 80, 'What are the Ingredients in this Cat Food?', 'The ingredients in this cat food are Fish Broth, Tuna Fillet, Sunflower Oil, Carrageenan, and Locust Bean Gum. These are 100% natural human-grade ingredients of high quality.', '2024-05-13 10:37:52', '2024-05-13 10:37:52'),
(320, 80, 'What is the Nutritional Content of this Cat Food?', 'The nutritional analysis of this cat food indicates a minimum crude protein content of 11% and a minimum crude fat content of 1.5%. It has a maximum crude fiber content of 1%, a maximum moisture content of 86%, and a maximum ash content of 2%. These values provide insights into the nutritional composition of the product.', '2024-05-13 10:38:08', '2024-05-13 10:38:08'),
(321, 80, 'Is this cat food a good option for picky eaters?', 'Applaws Tuna Mousse Cat Wet Food’s rich and flavorful tuna content can appeal to cats with discerning palates. It’s worth trying if you have a picky eater, but always monitor their response.', '2024-05-13 10:38:25', '2024-05-13 10:38:25'),
(322, 80, 'How should I store this cat food to maintain its freshness?', 'To maintain freshness, store unopened cans in a cool, dry place. After opening, refrigerate any unused portions and use them within a few days.', '2024-05-13 10:38:49', '2024-05-13 10:38:49'),
(323, 80, 'Where Can I Find More Information about the Ingredients and Analysis of this Cat Food?', 'For more detailed information about the specific nutritional and ingredient details of this cat food, refer to the product’s packaging or the manufacturer’s website.', '2024-05-13 10:39:10', '2024-05-13 10:39:10'),
(324, 81, 'Is this cat food safe for pregnant or nursing cats?', 'While the cat food is generally safe for adult cats, special dietary considerations may be required for pregnant or nursing cats. Consult with your veterinarian for guidance on feeding during pregnancy and lactation.', '2024-05-13 10:44:03', '2024-05-13 10:44:03'),
(325, 81, 'How do I introduce this cat food to my cat\'s diet for the first time?', 'When transitioning to a new cat food, it’s recommended to gradually mix it with your cat’s current food over several days to minimize any digestive upset.', '2024-05-13 10:44:19', '2024-05-13 10:44:19'),
(326, 81, 'Can I use this cat food as a treat or snack in addition to my cat\'s regular meals?', 'Applaws cat food can be served as a treat or snack, but it’s important to consider the overall calorie intake in your cat’s diet to avoid overfeeding.', '2024-05-13 10:44:34', '2024-05-13 10:44:34'),
(327, 81, 'Is this cat food suitable for senior cats?', 'Applaws cat food is suitable for adult cats, and many senior cats can also enjoy its benefits. However, for specific senior cat dietary needs, it’s a good idea to consult with your veterinarian.', '2024-05-13 10:45:19', '2024-05-13 10:45:19'),
(328, 81, 'What is the shelf life of this cat food?', 'The shelf life of cat food can vary, but typically, unopened cans or pouches have a long shelf life. It’s advisable to check the expiration date on the packaging for specific information.', '2024-05-13 10:45:40', '2024-05-13 10:45:40'),
(329, 82, 'Is this cat food suitable for cats with food allergies or sensitivities?', 'This cat food is a hypoallergenic formula, making it suitable for cats with food allergies or sensitivities. It’s designed to minimize the risk of allergic reactions.', '2024-05-13 10:48:46', '2024-05-13 10:48:46'),
(330, 82, 'Does this cat food contain any artificial preservatives, colors, or flavors?', 'No, this cat food is free from artificial preservatives, colors, or flavors. It only contains natural ingredients.', '2024-05-13 10:49:04', '2024-05-13 10:49:04'),
(331, 82, 'How should I store this cat food to maintain its freshness?', 'To maintain the freshness of this cat food, store it in a cool, dry place, away from direct sunlight. Once opened, any unused portion should be refrigerated and used within a certain time frame for the best quality.', '2024-05-13 10:49:21', '2024-05-13 10:49:21'),
(332, 82, 'Can I use this cat food as the primary diet for my cat, or should it be used as a supplement?', 'While this cat food can be used as a primary diet for your cat, it’s also suitable as a supplementary option. You can consult with your veterinarian to determine the best feeding plan based on your cat’s specific needs.', '2024-05-13 10:49:41', '2024-05-13 10:49:41'),
(333, 82, 'Are there any known health benefits associated with feeding this cat food to my feline friend?', 'Feeding this cat food may lead to several potential health benefits for your cat, such as improved digestion, reduced risk of allergic reactions, and better overall well-being.', '2024-05-13 10:50:02', '2024-05-13 10:50:02'),
(334, 83, 'Is this cat food suitable for all cat breeds and ages?', 'Yes, Applaws All Natural Sardine With Shrimp in Jelly Cat Wet Food is suitable for adult cats of all breeds starting from 12 weeks old.', '2024-05-13 10:52:18', '2024-05-13 10:52:18'),
(335, 83, 'What are the key ingredients in this cat food product?', 'The key ingredients in this food are sardine, shrimp, and a vegetable jellifying agent.', '2024-05-13 10:52:30', '2024-05-13 10:52:30'),
(336, 83, 'Is this cat food grain-free?', 'Yes, Applaws All Natural Sardine With Shrimp in Jelly Cat Wet Food is grain-free.', '2024-05-13 10:52:55', '2024-05-13 10:52:55'),
(337, 83, 'Can I use this cat food alongside dry kibble or other cat food products?', 'This food can be paired with any dry food for a complete and balanced diet.', '2024-05-13 10:53:15', '2024-05-13 10:53:15'),
(338, 83, 'What is the feeding guideline for this cat food?', 'The feeding guidelines for Applaws All Natural Sardine With Shrimp in Jelly Cat Wet Food 70g can vary depending on your cat’s age, size, and activity level. Generally, it’s recommended to feed an average-sized adult cat around 2-3 cans per day, split into multiple meals.', '2024-05-13 10:53:31', '2024-05-13 10:53:31'),
(339, 85, 'How do I switch my cat to Applaws tuna food?', '<p>Any new food should be introduced to your cat gradually over ten days. Sudden changes in their diet can cause stomach discomfort or digestive disorders, so its better to start slowly and then increase. Applaws dry is a high-protein cat food your pet will enjoy, although they may need to adjust depending on their previous diet. It is normal for your cat’s potty habits to shift. Stools may loosen during this transitional stage but should firm up again with time, indicating a healthy digestive system.</p>', '2024-05-13 11:02:35', '2024-05-13 11:18:25'),
(340, 85, 'Can I give this All Natural Tuna Fillet With Prawns Cat food to my kitten?', '<p>Yes, they will enjoy its every bite from the age of 12 weeks. All Applaws cat food recipes suit kittens aged 12 weeks and up. Our recipes are high in quality protein and natural vitamins and minerals, allowing cats of every breed and age to flourish on an Applaws diet. If your kitten has particular dietary needs or you are unsure about any element of feeding your kitten, consult with your veterinarian to put your mind at ease.</p>', '2024-05-13 11:03:00', '2024-05-13 11:19:03'),
(341, 85, 'How much should I feed my cat?', '<p>Our easy feeding instructions can be found on the back of each Applaws pack and each product page of our website. Portion amounts can vary according to your cat’s age, activity level, and overall health. Generally, we recommend feeding your cat a bowl of full-dry cat food in the morning and evening, along with a complimentary wet meal, such as Applaws Cat Tins.</p>', '2024-05-13 11:03:18', '2024-05-13 11:19:20'),
(342, 85, 'Can I give Applaws to my senior cat?', '<p>Yes, senior cats can eat any wet food of Applaws. Cats of every breed and age can flourish on an Applaws diet because it contains high-quality meat and important vitamins and minerals. If your cat has particular nutritional needs or you are unsure about any element of feeding your cat, consult with your veterinarian to set your mind at ease.</p>', '2024-05-13 11:03:39', '2024-05-13 11:19:39'),
(343, 85, 'What is broth? How is it made and what are its ingredients?', '<p>Our broth provides the texture, moisture, and diversity your pets require in their diet. To provide taste, quality meat or fish is cooked in cleansed water. We then pour the broth over the flaked meat or fish during the packing process. It’s all-natural, with nothing added – simply delicious.</p>', '2024-05-13 11:03:57', '2024-05-13 11:19:52'),
(344, 84, 'Is this cat food the right food for cats of all ages, including kittens and seniors?', 'This particular type of cat wet food is completely suitable for adult cat’s needs. We recommend that kittens and older cats use products for their life stages.', '2024-05-13 11:11:54', '2024-05-13 11:11:54'),
(345, 84, 'How often should I feed this wet food to my cat?', 'Feeding instructions are often included on the packaging. Individual cat needs vary, so it’s best to consult your veterinarian for particular feeding suggestions.', '2024-05-13 11:12:11', '2024-05-13 11:12:11'),
(346, 84, 'Is this product sustainably sourced?', 'Applaws encourage responsible sourcing; however, please see their official guidelines or contact customer care for specifics on their sourcing procedures.', '2024-05-13 11:12:29', '2024-05-13 11:12:29'),
(347, 84, 'Is this cat food suitable for cats who have dietary sensitivities or allergies?', 'While it does not contain such as wheat, each cat’s sensitivity is unique. If your cat has special dietary requirements, it is best to speak with a veterinarian. If you have special concerns regarding your cat’s nutrition or health, they will help you know the best. They may give personalized advice based on your cat’s needs and situations.', '2024-05-13 11:12:46', '2024-05-13 11:12:46'),
(348, 84, 'Are there any artificial additives or preservatives in it?', 'No, Applaws enjoys manufacturing natural pet food free of artificial additives and preservatives.', '2024-05-13 11:13:22', '2024-05-13 11:13:22'),
(349, 86, 'Is giving my cat Applaws All Natural Chicken Breast in Broth Cat Wet Food okay?', 'The amount of food you feed your cat is determined by their age, weight, and degree of activity. As a general guideline, adult cats should be fed 1/2 to 1 can per 3kg of body weight per day. Kittens and pregnant or nursing cats may require additional food.', '2024-05-13 11:23:36', '2024-05-13 11:23:36'),
(350, 86, 'Is Applaws All Natural Chicken Breast in Broth Cat Wet Food safe for allergic cats?', 'Applaws All Natural Chicken Breast in Broth Cat Wet Food is grain-free, gluten-free, carrageenan-free, artificial flavoring-free, artificial coloring-free, and preservative-free, making it ideal for cats with allergies.', '2024-05-13 11:23:57', '2024-05-13 11:23:57'),
(351, 86, 'Is Applaws All Natural Chicken Breast in Broth Cat Wet Food a full and balanced diet for cats?', 'Applaws All Natural Chicken Breast in Broth Cat Wet Food is a comprehensive and balanced diet for cats of all life stages. It is designed to suit the nutritional demands of cats as defined by the Association of American Feed Control Officials (AAFCO).', '2024-05-13 11:24:16', '2024-05-13 11:24:16'),
(352, 86, 'Why does my pet scratches all the time and why does his coat stink?', 'There could be several reasons why your pet scrapes and smells. Applaws Natural Pet Food can assist with many common allergies. However, we recommend speaking with your veterinarian for further information and to put your mind at ease.', '2024-05-13 11:24:40', '2024-05-13 11:24:40'),
(353, 86, 'Can I feed my kitten Applaws All Natural Chicken Breast in Broth Cat Wet Food?', 'Applaws All Natural Chicken Breast in Broth Cat Wet Food is an excellent choice for kittens. Try mixing the food up a bit to make it easier for them to eat.', '2024-05-13 11:24:57', '2024-05-13 11:24:57'),
(354, 87, 'What are the primary components of this cat food?', 'Tuna fillet, seabream, and broth are the major ingredients in this cat food. It is intended to give an all-natural, protein-rich diet for adult cats.', '2024-05-13 11:27:09', '2024-05-13 11:27:09'),
(355, 87, 'Is this cat food appropriate for cats of all life stages?', 'Because this product is labeled as adult cat food, it has been specially developed to fulfill the nutritional demands of adult cats. If you own a kitten, opt for a kitten-specific formula.', '2024-05-13 11:27:23', '2024-05-13 11:27:23'),
(356, 87, 'Is there any artificial ingredients or preservatives in this cat food?', 'Applaws takes pleasure in manufacturing natural, additive-free pet food. As the name implies, this product is created entirely of natural materials. It contains no artificial colors, flavors, or preservatives.', '2024-05-13 11:27:40', '2024-05-13 11:27:40'),
(357, 87, 'Is this cat food appropriate for cats who suffer from allergies or sensitivities?', 'Individual cats may have allergies or sensitivities to specific proteins despite our cat chow being prepared from high-quality, natural ingredients. Always consult your veterinarian if you feel your cat has food allergies or sensitivities.', '2024-05-13 11:27:56', '2024-05-13 11:27:56'),
(358, 87, 'How should I feed my cat this cat food?', 'This cat food can be served immediately from the pouch. It’s best to stick to the feeding instructions on the package to ensure your cats get the right amount for their size and activity level. It’s best to gradually introduce new foods to your cat to give their digestive system time to acclimate.', '2024-05-13 11:28:10', '2024-05-13 11:28:10'),
(359, 88, 'What ingredients does this cat wet food contain?', 'This cat food’s major ingredients are chicken breast, liver, and a jelly-like broth. It is intended to give an all-natural, protein-rich diet for adult cats.', '2024-05-13 11:40:34', '2024-05-13 11:40:34'),
(360, 88, 'Is this cat food appropriate for cats of all life stages?', 'Because this product is labeled as adult cat food, it has been developed to fulfill the nutritional demands of adult cats. If you own a kitten, opt for a kitten-specific formula.', '2024-05-13 11:40:49', '2024-05-13 11:40:49'),
(361, 88, 'My cat isn’t interested in eating this product. What should I do?', 'If your cat isn’t eating it, try combining it with their regular food. Try mildly reheating the food before serving. Try a different taste or brand if your cat still won’t eat the food.', '2024-05-13 11:41:08', '2024-05-13 11:41:08'),
(362, 88, 'Is this cat food acceptable for cats with allergies or sensitivities?', 'While this cat food is prepared from high-quality, natural ingredients, some cats may have allergies or sensitivity to specific proteins. If your cat has food allergies or sensitivities, always consult your veterinarian.', '2024-05-13 11:41:26', '2024-05-13 11:41:26'),
(363, 88, 'What are the advantages of giving my cat Applaws wet food?', 'Applaws wet food is produced from natural ingredients without artificial flavors, colors, or preservatives. It is a high-protein diet that contains taurine, which is necessary for healthy heart and eye function.', '2024-05-13 11:41:59', '2024-05-13 11:41:59'),
(364, 89, 'Which ingredients are present in this Applaws Anchovy Broth Adult Cat Wet Food?', 'Applaws Tuna Fillet with Anchovy in Broth has the following ingredients: tuna fillet (65%), anchovy (10%), and broth.', '2024-05-13 11:44:03', '2024-05-13 11:44:03'),
(365, 89, 'Is Applaws Tuna Fillet with Anchovy in Broth a complete and balanced meal for cats?', 'Applaws Tuna Fillet with Anchovy in Broth is a supplement for adult cats. This implies it is not a comprehensive and balanced diet on its own. Cats should be fed a range of foods to ensure they get all the nutrients they require.', '2024-05-13 11:44:23', '2024-05-13 11:44:23'),
(366, 89, 'What are the advantages of using anchovies in this formula?', 'Anchovies are high in omega-3 fatty acids, which are helpful for a cat’s skin, coat, and overall health.', '2024-05-13 11:45:24', '2024-05-13 11:45:24'),
(367, 89, 'Is this cat food suitable for cats with allergies or sensitivities?', 'While it does not contain common allergens like grains, each cat’s sensitivity is unique. You should speak with a veterinarian if your cat has special nutritional requirements.', '2024-05-13 11:45:41', '2024-05-13 11:45:41'),
(368, 89, 'What portion of Applaws Tuna fillet with Anchovy in Broth should I give to my cat?', 'The amount of Applaws Tuna fillet with Anchovy in Broth you feed your cat will vary depending on their age, weight, and degree of activity. Feeding your cat 1-2 pouches daily is a decent beginning point.', '2024-05-13 11:46:03', '2024-05-13 11:46:03'),
(369, 90, 'How should I store this cat food?', 'It is advisable to keep unopened cans in a cold, dry place. Once opened, it should be refrigerated and consumed within the time range mentioned on the packaging.', '2024-05-13 11:47:00', '2024-05-13 11:47:00'),
(370, 90, 'What are this product’s analytic components?', 'This Tuna Fillet With Shrimp includes ingredients like crude protein (min) 19%, crude fat (min) 0.5%, crude fiber (max) 1.0%, moisture (max) 78%, ash (max), etc.', '2024-05-13 11:47:20', '2024-05-13 11:47:20'),
(371, 90, 'What are the advantages of incorporating shrimp into the formula?', 'Shrimp is high in protein and omega-3 fatty acids, which benefits a cat’s overall health.', '2024-05-13 11:47:39', '2024-05-13 11:47:39'),
(372, 90, 'Can I give this food to cat of any age or breed?', 'No, this specific variant of Applaws cat food is formulated for adult cats only.', '2024-05-13 11:48:10', '2024-05-13 11:48:10'),
(373, 90, 'What is the delivery policy for this product?', 'Free Standard Shipping with any online purchase of INR 500 (merchandise subtotal excludes store pick-up products; merchandise subtotal is computed before taxes, gift-wrap fees, and discounts or coupons.', '2024-05-13 11:48:26', '2024-05-13 11:48:26');
INSERT INTO `product_faqs` (`id`, `product_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(374, 91, 'What are the benefits of the pumpkin in this wet cat food for cats?', 'Pumpkin is high in fiber, aiding digestive problems, including constipation and diarrhea. It is also high in vitamins and minerals, such as potassium, A, and C.', '2024-05-13 11:49:27', '2024-05-13 11:49:27'),
(375, 91, 'Is the brown rice in this wet food a good source of carbs for cats?', 'Brown rice is a complete grain that is high in complex carbohydrates. Complex carbohydrates are slowly digested and delivered into the bloodstream, providing cats long-lasting energy.', '2024-05-13 11:49:50', '2024-05-13 11:49:50'),
(376, 91, 'Is this wet food the right choice for allergic cats?', 'Yes, this is because it has fewer ingredients, making it suitable for cat allergies. It contains only four ingredients: chicken breast, broth, pumpkin, and brown rice.', '2024-05-13 11:50:08', '2024-05-13 11:50:08'),
(377, 91, 'How much wet food should I give to my cat?', 'The amount of wet food you should feed your cat is determined by their age, weight, and degree of activity. Feeding your cat one pouch per 3 kg of body weight daily is an excellent beginning point.', '2024-05-13 11:50:29', '2024-05-13 11:50:29'),
(378, 91, 'Can I give this to my kitten?', 'Yes, your kitty can eat this wet food. It should be noted, however, that kittens have different nutritional requirements than adult cats. Kittens have higher protein and calorie requirements than adult cats. If you feed your kitten this wet food, you may need to supplement their diet with more protein and calories.', '2024-05-13 11:50:51', '2024-05-13 11:50:51'),
(379, 65, 'Is there a satisfaction guarantee with ORIJEN?', 'ORIJEN makes its products with the best quality ingredients that your pets of all breeds will enjoy. We guarantee you complete satisfaction. In case you are dissatisfied with our dry food. Depending on our policies, you can return it to us for a refund or exchange.', '2024-06-01 18:19:27', '2024-06-01 18:19:27'),
(380, 65, 'What should I do if my puppy does not like Orijen Grain free dry puppy food?', 'If your puppy does not like this food, try combining it with their desired meal. You can also gradually switch them to the new food over time. Talk to your doctor if you still have problems getting your puppy to consume Orijen. They can offer a meal more suited to your puppy’s needs.', '2024-06-01 18:20:02', '2024-06-01 18:20:02'),
(381, 65, 'Why is grain-free food beneficial to puppies?', 'Some believe that grain-free diets are better for puppies because they are more similar to those dogs eat in the natural environment. Grains are not a natural part of a dog’s diet, and some dogs may have difficulties digesting them. Grain-free meals may also benefit puppies with grain allergies or sensitivities.', '2024-06-01 18:20:34', '2024-06-01 18:20:34'),
(382, 65, 'How much Orijen Grain Free Dry Puppy Food should I give my puppy?', 'The amount of Orijen Puppy Food you need to feed your puppy depends on their breed, age and activity level. It is critical to follow the feeding instructions printed on the back of the bag. You can also visit your physician to discover the optimal feeding regimen for your puppy.', '2024-06-01 18:21:00', '2024-06-01 18:21:00'),
(383, 65, 'Is it affordable to buy this puppy dry food?', 'Orijen Grain Free Dry Puppy Food is a premium dog food that costs more than other brands. However, many pet owners believe that the quality and benefits of Orijen are worth more than its cost.', '2024-06-01 18:21:26', '2024-06-01 18:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(54, 26, 'uploads/product/17146278111.webp', '2024-05-02 09:30:11', '2024-05-02 09:30:11'),
(55, 26, 'uploads/product/17146278112.webp', '2024-05-02 09:30:11', '2024-05-02 09:30:11'),
(56, 26, 'uploads/product/17146278113.webp', '2024-05-02 09:30:11', '2024-05-02 09:30:11'),
(57, 26, 'uploads/product/17146278114.webp', '2024-05-02 09:30:11', '2024-05-02 09:30:11'),
(337, 14, 'uploads/product/17167865351.webp', '2024-05-27 09:08:55', '2024-05-27 09:08:55'),
(338, 62, 'uploads/product/17167920551.webp', '2024-05-27 10:40:55', '2024-05-27 10:40:55'),
(339, 62, 'uploads/product/17167920552.webp', '2024-05-27 10:40:55', '2024-05-27 10:40:55'),
(340, 62, 'uploads/product/17167920553.webp', '2024-05-27 10:40:55', '2024-05-27 10:40:55'),
(341, 62, 'uploads/product/17167920554.webp', '2024-05-27 10:40:55', '2024-05-27 10:40:55'),
(342, 63, 'uploads/product/17167923841.webp', '2024-05-27 10:46:24', '2024-05-27 10:46:24'),
(343, 63, 'uploads/product/17167923842.webp', '2024-05-27 10:46:24', '2024-05-27 10:46:24'),
(344, 63, 'uploads/product/17167923843.webp', '2024-05-27 10:46:24', '2024-05-27 10:46:24'),
(345, 63, 'uploads/product/17167923844.webp', '2024-05-27 10:46:24', '2024-05-27 10:46:24'),
(346, 64, 'uploads/product/17167925721.webp', '2024-05-27 10:49:32', '2024-05-27 10:49:32'),
(347, 64, 'uploads/product/17167925722.webp', '2024-05-27 10:49:32', '2024-05-27 10:49:32'),
(348, 64, 'uploads/product/17167925723.webp', '2024-05-27 10:49:32', '2024-05-27 10:49:32'),
(349, 64, 'uploads/product/17167925724.webp', '2024-05-27 10:49:32', '2024-05-27 10:49:32'),
(350, 65, 'uploads/product/17167928871.webp', '2024-05-27 10:54:47', '2024-05-27 10:54:47'),
(351, 65, 'uploads/product/17167928872.webp', '2024-05-27 10:54:47', '2024-05-27 10:54:47'),
(352, 65, 'uploads/product/17167928873.webp', '2024-05-27 10:54:47', '2024-05-27 10:54:47'),
(353, 65, 'uploads/product/17167928874.webp', '2024-05-27 10:54:47', '2024-05-27 10:54:47'),
(358, 66, 'uploads/product/17167932941.webp', '2024-05-27 11:01:34', '2024-05-27 11:01:34'),
(359, 66, 'uploads/product/17167932942.webp', '2024-05-27 11:01:34', '2024-05-27 11:01:34'),
(360, 66, 'uploads/product/17167932943.webp', '2024-05-27 11:01:34', '2024-05-27 11:01:34'),
(361, 66, 'uploads/product/17167932944.webp', '2024-05-27 11:01:34', '2024-05-27 11:01:34'),
(362, 16, 'uploads/product/17167937051.webp', '2024-05-27 11:08:25', '2024-05-27 11:08:25'),
(363, 16, 'uploads/product/17167937052.webp', '2024-05-27 11:08:25', '2024-05-27 11:08:25'),
(364, 16, 'uploads/product/17167937053.webp', '2024-05-27 11:08:25', '2024-05-27 11:08:25'),
(365, 16, 'uploads/product/17167937054.webp', '2024-05-27 11:08:25', '2024-05-27 11:08:25'),
(366, 19, 'uploads/product/17167938281.webp', '2024-05-27 11:10:28', '2024-05-27 11:10:28'),
(367, 19, 'uploads/product/17167938282.webp', '2024-05-27 11:10:28', '2024-05-27 11:10:28'),
(368, 19, 'uploads/product/17167938283.webp', '2024-05-27 11:10:28', '2024-05-27 11:10:28'),
(369, 19, 'uploads/product/17167938284.webp', '2024-05-27 11:10:28', '2024-05-27 11:10:28'),
(370, 20, 'uploads/product/17167939881.webp', '2024-05-27 11:13:08', '2024-05-27 11:13:08'),
(371, 20, 'uploads/product/17167939882.webp', '2024-05-27 11:13:08', '2024-05-27 11:13:08'),
(372, 20, 'uploads/product/17167939883.webp', '2024-05-27 11:13:08', '2024-05-27 11:13:08'),
(373, 20, 'uploads/product/17167939884.webp', '2024-05-27 11:13:08', '2024-05-27 11:13:08'),
(374, 21, 'uploads/product/17167941061.webp', '2024-05-27 11:15:06', '2024-05-27 11:15:06'),
(375, 21, 'uploads/product/17167941062.webp', '2024-05-27 11:15:06', '2024-05-27 11:15:06'),
(376, 21, 'uploads/product/17167941063.webp', '2024-05-27 11:15:06', '2024-05-27 11:15:06'),
(377, 21, 'uploads/product/17167941074.webp', '2024-05-27 11:15:07', '2024-05-27 11:15:07'),
(378, 23, 'uploads/product/17167942341.webp', '2024-05-27 11:17:14', '2024-05-27 11:17:14'),
(379, 23, 'uploads/product/17167942342.webp', '2024-05-27 11:17:14', '2024-05-27 11:17:14'),
(380, 23, 'uploads/product/17167942343.jpg', '2024-05-27 11:17:14', '2024-05-27 11:17:14'),
(381, 23, 'uploads/product/17167942344.webp', '2024-05-27 11:17:14', '2024-05-27 11:17:14'),
(382, 24, 'uploads/product/17167943791.webp', '2024-05-27 11:19:39', '2024-05-27 11:19:39'),
(383, 24, 'uploads/product/17167943792.webp', '2024-05-27 11:19:39', '2024-05-27 11:19:39'),
(384, 24, 'uploads/product/17167943793.jpg', '2024-05-27 11:19:39', '2024-05-27 11:19:39'),
(385, 24, 'uploads/product/17167943794.webp', '2024-05-27 11:19:39', '2024-05-27 11:19:39'),
(386, 25, 'uploads/product/17167945501.webp', '2024-05-27 11:22:30', '2024-05-27 11:22:30'),
(387, 25, 'uploads/product/17167945502.webp', '2024-05-27 11:22:30', '2024-05-27 11:22:30'),
(388, 25, 'uploads/product/17167945503.webp', '2024-05-27 11:22:30', '2024-05-27 11:22:30'),
(389, 27, 'uploads/product/17167948421.webp', '2024-05-27 11:27:22', '2024-05-27 11:27:22'),
(390, 27, 'uploads/product/17167948422.webp', '2024-05-27 11:27:22', '2024-05-27 11:27:22'),
(391, 27, 'uploads/product/17167948423.webp', '2024-05-27 11:27:22', '2024-05-27 11:27:22'),
(392, 28, 'uploads/product/17167949671.webp', '2024-05-27 11:29:27', '2024-05-27 11:29:27'),
(393, 28, 'uploads/product/17167949672.webp', '2024-05-27 11:29:27', '2024-05-27 11:29:27'),
(394, 28, 'uploads/product/17167949673.webp', '2024-05-27 11:29:27', '2024-05-27 11:29:27'),
(395, 28, 'uploads/product/17167949674.webp', '2024-05-27 11:29:27', '2024-05-27 11:29:27'),
(396, 29, 'uploads/product/17167951121.webp', '2024-05-27 11:31:52', '2024-05-27 11:31:52'),
(397, 29, 'uploads/product/17167951122.webp', '2024-05-27 11:31:52', '2024-05-27 11:31:52'),
(398, 29, 'uploads/product/17167951123.webp', '2024-05-27 11:31:52', '2024-05-27 11:31:52'),
(403, 30, 'uploads/product/17167952901.webp', '2024-05-27 11:34:50', '2024-05-27 11:34:50'),
(404, 30, 'uploads/product/17167952902.webp', '2024-05-27 11:34:50', '2024-05-27 11:34:50'),
(405, 30, 'uploads/product/17167952903.webp', '2024-05-27 11:34:50', '2024-05-27 11:34:50'),
(406, 30, 'uploads/product/17167952904.webp', '2024-05-27 11:34:50', '2024-05-27 11:34:50'),
(407, 31, 'uploads/product/17167954521.webp', '2024-05-27 11:37:32', '2024-05-27 11:37:32'),
(408, 31, 'uploads/product/17167954522.webp', '2024-05-27 11:37:32', '2024-05-27 11:37:32'),
(409, 31, 'uploads/product/17167954523.webp', '2024-05-27 11:37:32', '2024-05-27 11:37:32'),
(410, 31, 'uploads/product/17167954524.webp', '2024-05-27 11:37:32', '2024-05-27 11:37:32'),
(411, 32, 'uploads/product/17167957031.webp', '2024-05-27 11:41:43', '2024-05-27 11:41:43'),
(412, 32, 'uploads/product/17167957032.webp', '2024-05-27 11:41:43', '2024-05-27 11:41:43'),
(413, 32, 'uploads/product/17167957033.webp', '2024-05-27 11:41:43', '2024-05-27 11:41:43'),
(414, 32, 'uploads/product/17167957034.webp', '2024-05-27 11:41:43', '2024-05-27 11:41:43'),
(415, 33, 'uploads/product/17167958381.webp', '2024-05-27 11:43:58', '2024-05-27 11:43:58'),
(416, 33, 'uploads/product/17167958382.webp', '2024-05-27 11:43:58', '2024-05-27 11:43:58'),
(417, 33, 'uploads/product/17167958383.webp', '2024-05-27 11:43:58', '2024-05-27 11:43:58'),
(418, 33, 'uploads/product/17167958384.webp', '2024-05-27 11:43:58', '2024-05-27 11:43:58'),
(419, 34, 'uploads/product/17167959231.webp', '2024-05-27 11:45:23', '2024-05-27 11:45:23'),
(420, 34, 'uploads/product/17167959232.webp', '2024-05-27 11:45:23', '2024-05-27 11:45:23'),
(421, 34, 'uploads/product/17167959233.webp', '2024-05-27 11:45:23', '2024-05-27 11:45:23'),
(422, 34, 'uploads/product/17167959234.jpg', '2024-05-27 11:45:23', '2024-05-27 11:45:23'),
(423, 35, 'uploads/product/17167960371.webp', '2024-05-27 11:47:17', '2024-05-27 11:47:17'),
(424, 35, 'uploads/product/17167960372.webp', '2024-05-27 11:47:17', '2024-05-27 11:47:17'),
(425, 35, 'uploads/product/17167960373.webp', '2024-05-27 11:47:17', '2024-05-27 11:47:17'),
(426, 35, 'uploads/product/17167960374.webp', '2024-05-27 11:47:17', '2024-05-27 11:47:17'),
(427, 38, 'uploads/product/17167961671.webp', '2024-05-27 11:49:27', '2024-05-27 11:49:27'),
(428, 38, 'uploads/product/17167961672.webp', '2024-05-27 11:49:27', '2024-05-27 11:49:27'),
(429, 38, 'uploads/product/17167961673.webp', '2024-05-27 11:49:27', '2024-05-27 11:49:27'),
(430, 38, 'uploads/product/17167961674.webp', '2024-05-27 11:49:27', '2024-05-27 11:49:27'),
(431, 39, 'uploads/product/17167962801.webp', '2024-05-27 11:51:20', '2024-05-27 11:51:20'),
(432, 39, 'uploads/product/17167962802.webp', '2024-05-27 11:51:20', '2024-05-27 11:51:20'),
(433, 39, 'uploads/product/17167962803.webp', '2024-05-27 11:51:20', '2024-05-27 11:51:20'),
(434, 39, 'uploads/product/17167962804.webp', '2024-05-27 11:51:20', '2024-05-27 11:51:20'),
(435, 42, 'uploads/product/17167964121.webp', '2024-05-27 11:53:32', '2024-05-27 11:53:32'),
(436, 42, 'uploads/product/17167964122.webp', '2024-05-27 11:53:32', '2024-05-27 11:53:32'),
(437, 42, 'uploads/product/17167964123.webp', '2024-05-27 11:53:32', '2024-05-27 11:53:32'),
(438, 42, 'uploads/product/17167964124.webp', '2024-05-27 11:53:32', '2024-05-27 11:53:32'),
(439, 44, 'uploads/product/17168002271.webp', '2024-05-27 12:57:07', '2024-05-27 12:57:07'),
(440, 44, 'uploads/product/17168002272.webp', '2024-05-27 12:57:07', '2024-05-27 12:57:07'),
(441, 44, 'uploads/product/17168002273.webp', '2024-05-27 12:57:07', '2024-05-27 12:57:07'),
(442, 44, 'uploads/product/17168002274.webp', '2024-05-27 12:57:07', '2024-05-27 12:57:07'),
(443, 45, 'uploads/product/17168004191.webp', '2024-05-27 13:00:19', '2024-05-27 13:00:19'),
(444, 45, 'uploads/product/17168004192.webp', '2024-05-27 13:00:19', '2024-05-27 13:00:19'),
(445, 45, 'uploads/product/17168004193.webp', '2024-05-27 13:00:19', '2024-05-27 13:00:19'),
(446, 45, 'uploads/product/17168004194.webp', '2024-05-27 13:00:19', '2024-05-27 13:00:19'),
(447, 43, 'uploads/product/17168004721.webp', '2024-05-27 13:01:12', '2024-05-27 13:01:12'),
(448, 43, 'uploads/product/17168004722.webp', '2024-05-27 13:01:12', '2024-05-27 13:01:12'),
(449, 43, 'uploads/product/17168004723.webp', '2024-05-27 13:01:12', '2024-05-27 13:01:12'),
(450, 43, 'uploads/product/17168004724.webp', '2024-05-27 13:01:12', '2024-05-27 13:01:12'),
(451, 46, 'uploads/product/17168006331.webp', '2024-05-27 13:03:53', '2024-05-27 13:03:53'),
(452, 46, 'uploads/product/17168006332.webp', '2024-05-27 13:03:53', '2024-05-27 13:03:53'),
(453, 46, 'uploads/product/17168006333.webp', '2024-05-27 13:03:53', '2024-05-27 13:03:53'),
(454, 46, 'uploads/product/17168006334.webp', '2024-05-27 13:03:53', '2024-05-27 13:03:53'),
(455, 47, 'uploads/product/17168007701.webp', '2024-05-27 13:06:10', '2024-05-27 13:06:10'),
(456, 47, 'uploads/product/17168007702.webp', '2024-05-27 13:06:10', '2024-05-27 13:06:10'),
(457, 47, 'uploads/product/17168007703.webp', '2024-05-27 13:06:10', '2024-05-27 13:06:10'),
(458, 47, 'uploads/product/17168007704.webp', '2024-05-27 13:06:10', '2024-05-27 13:06:10'),
(459, 48, 'uploads/product/17168008921.webp', '2024-05-27 13:08:12', '2024-05-27 13:08:12'),
(460, 48, 'uploads/product/17168008922.png', '2024-05-27 13:08:12', '2024-05-27 13:08:12'),
(461, 49, 'uploads/product/17168009751.webp', '2024-05-27 13:09:35', '2024-05-27 13:09:35'),
(462, 49, 'uploads/product/17168009752.png', '2024-05-27 13:09:35', '2024-05-27 13:09:35'),
(463, 50, 'uploads/product/17168010541.webp', '2024-05-27 13:10:54', '2024-05-27 13:10:54'),
(464, 50, 'uploads/product/17168010542.png', '2024-05-27 13:10:54', '2024-05-27 13:10:54'),
(465, 51, 'uploads/product/17168011231.webp', '2024-05-27 13:12:03', '2024-05-27 13:12:03'),
(466, 51, 'uploads/product/17168011232.png', '2024-05-27 13:12:03', '2024-05-27 13:12:03'),
(471, 52, 'uploads/product/17168012971.webp', '2024-05-27 13:14:57', '2024-05-27 13:14:57'),
(472, 52, 'uploads/product/17168012972.webp', '2024-05-27 13:14:57', '2024-05-27 13:14:57'),
(473, 52, 'uploads/product/17168012973.webp', '2024-05-27 13:14:57', '2024-05-27 13:14:57'),
(474, 52, 'uploads/product/17168012974.webp', '2024-05-27 13:14:57', '2024-05-27 13:14:57'),
(475, 53, 'uploads/product/17168014001.webp', '2024-05-27 13:16:40', '2024-05-27 13:16:40'),
(476, 53, 'uploads/product/17168014002.webp', '2024-05-27 13:16:40', '2024-05-27 13:16:40'),
(477, 53, 'uploads/product/17168014003.webp', '2024-05-27 13:16:40', '2024-05-27 13:16:40'),
(478, 53, 'uploads/product/17168014004.webp', '2024-05-27 13:16:40', '2024-05-27 13:16:40'),
(479, 54, 'uploads/product/17168015121.webp', '2024-05-27 13:18:32', '2024-05-27 13:18:32'),
(480, 54, 'uploads/product/17168015122.webp', '2024-05-27 13:18:32', '2024-05-27 13:18:32'),
(481, 54, 'uploads/product/17168015123.webp', '2024-05-27 13:18:32', '2024-05-27 13:18:32'),
(482, 54, 'uploads/product/17168015124.webp', '2024-05-27 13:18:32', '2024-05-27 13:18:32'),
(483, 55, 'uploads/product/17168016091.webp', '2024-05-27 13:20:09', '2024-05-27 13:20:09'),
(484, 55, 'uploads/product/17168016092.webp', '2024-05-27 13:20:09', '2024-05-27 13:20:09'),
(485, 55, 'uploads/product/17168016093.webp', '2024-05-27 13:20:09', '2024-05-27 13:20:09'),
(486, 55, 'uploads/product/17168016094.webp', '2024-05-27 13:20:09', '2024-05-27 13:20:09'),
(487, 56, 'uploads/product/17168017101.webp', '2024-05-27 13:21:50', '2024-05-27 13:21:50'),
(488, 56, 'uploads/product/17168017102.webp', '2024-05-27 13:21:50', '2024-05-27 13:21:50'),
(489, 57, 'uploads/product/17168018241.webp', '2024-05-27 13:23:44', '2024-05-27 13:23:44'),
(490, 57, 'uploads/product/17168018242.webp', '2024-05-27 13:23:44', '2024-05-27 13:23:44'),
(491, 60, 'uploads/product/17168019591.webp', '2024-05-27 13:25:59', '2024-05-27 13:25:59'),
(492, 60, 'uploads/product/17168019592.webp', '2024-05-27 13:25:59', '2024-05-27 13:25:59'),
(493, 60, 'uploads/product/17168019593.webp', '2024-05-27 13:25:59', '2024-05-27 13:25:59'),
(494, 61, 'uploads/product/17168021091.webp', '2024-05-27 13:28:29', '2024-05-27 13:28:29'),
(495, 61, 'uploads/product/17168021092.webp', '2024-05-27 13:28:29', '2024-05-27 13:28:29'),
(496, 61, 'uploads/product/17168021093.webp', '2024-05-27 13:28:29', '2024-05-27 13:28:29'),
(497, 67, 'uploads/product/17168022531.webp', '2024-05-27 13:30:53', '2024-05-27 13:30:53'),
(498, 67, 'uploads/product/17168022532.webp', '2024-05-27 13:30:53', '2024-05-27 13:30:53'),
(499, 67, 'uploads/product/17168022533.webp', '2024-05-27 13:30:53', '2024-05-27 13:30:53'),
(500, 68, 'uploads/product/17168024071.webp', '2024-05-27 13:33:27', '2024-05-27 13:33:27'),
(501, 68, 'uploads/product/17168024072.webp', '2024-05-27 13:33:27', '2024-05-27 13:33:27'),
(502, 68, 'uploads/product/17168024073.webp', '2024-05-27 13:33:27', '2024-05-27 13:33:27'),
(503, 68, 'uploads/product/17168024074.webp', '2024-05-27 13:33:27', '2024-05-27 13:33:27'),
(504, 69, 'uploads/product/17168027471.webp', '2024-05-27 13:39:07', '2024-05-27 13:39:07'),
(505, 69, 'uploads/product/17168027472.webp', '2024-05-27 13:39:07', '2024-05-27 13:39:07'),
(506, 69, 'uploads/product/17168027473.webp', '2024-05-27 13:39:07', '2024-05-27 13:39:07'),
(507, 70, 'uploads/product/17168028661.webp', '2024-05-27 13:41:06', '2024-05-27 13:41:06'),
(508, 70, 'uploads/product/17168028662.webp', '2024-05-27 13:41:06', '2024-05-27 13:41:06'),
(509, 70, 'uploads/product/17168028663.webp', '2024-05-27 13:41:06', '2024-05-27 13:41:06'),
(510, 70, 'uploads/product/17168028664.jpg', '2024-05-27 13:41:06', '2024-05-27 13:41:06'),
(511, 71, 'uploads/product/17168030071.webp', '2024-05-27 13:43:27', '2024-05-27 13:43:27'),
(512, 71, 'uploads/product/17168030072.webp', '2024-05-27 13:43:27', '2024-05-27 13:43:27'),
(513, 71, 'uploads/product/17168030073.webp', '2024-05-27 13:43:27', '2024-05-27 13:43:27'),
(514, 71, 'uploads/product/17168030074.webp', '2024-05-27 13:43:27', '2024-05-27 13:43:27'),
(515, 72, 'uploads/product/17168031261.webp', '2024-05-27 13:45:26', '2024-05-27 13:45:26'),
(516, 72, 'uploads/product/17168031262.jpg', '2024-05-27 13:45:26', '2024-05-27 13:45:26'),
(517, 72, 'uploads/product/17168031263.webp', '2024-05-27 13:45:26', '2024-05-27 13:45:26'),
(518, 72, 'uploads/product/17168031264.webp', '2024-05-27 13:45:26', '2024-05-27 13:45:26'),
(519, 73, 'uploads/product/17168032701.webp', '2024-05-27 13:47:50', '2024-05-27 13:47:50'),
(520, 73, 'uploads/product/17168032702.webp', '2024-05-27 13:47:50', '2024-05-27 13:47:50'),
(521, 73, 'uploads/product/17168032703.webp', '2024-05-27 13:47:50', '2024-05-27 13:47:50'),
(522, 73, 'uploads/product/17168032704.webp', '2024-05-27 13:47:50', '2024-05-27 13:47:50'),
(523, 77, 'uploads/product/17168033741.webp', '2024-05-27 13:49:34', '2024-05-27 13:49:34'),
(524, 77, 'uploads/product/17168033742.png', '2024-05-27 13:49:34', '2024-05-27 13:49:34'),
(525, 78, 'uploads/product/17168035601.webp', '2024-05-27 13:52:40', '2024-05-27 13:52:40'),
(526, 78, 'uploads/product/17168035602.webp', '2024-05-27 13:52:40', '2024-05-27 13:52:40'),
(527, 78, 'uploads/product/17168035603.webp', '2024-05-27 13:52:40', '2024-05-27 13:52:40'),
(528, 78, 'uploads/product/17168035604.webp', '2024-05-27 13:52:40', '2024-05-27 13:52:40'),
(529, 79, 'uploads/product/17168037321.webp', '2024-05-27 13:55:32', '2024-05-27 13:55:32'),
(530, 79, 'uploads/product/17168037322.webp', '2024-05-27 13:55:32', '2024-05-27 13:55:32'),
(531, 79, 'uploads/product/17168037323.webp', '2024-05-27 13:55:32', '2024-05-27 13:55:32'),
(532, 79, 'uploads/product/17168037324.webp', '2024-05-27 13:55:32', '2024-05-27 13:55:32'),
(533, 80, 'uploads/product/17168038501.webp', '2024-05-27 13:57:30', '2024-05-27 13:57:30'),
(534, 80, 'uploads/product/17168038502.webp', '2024-05-27 13:57:30', '2024-05-27 13:57:30'),
(535, 80, 'uploads/product/17168038503.webp', '2024-05-27 13:57:30', '2024-05-27 13:57:30'),
(536, 80, 'uploads/product/17168038504.webp', '2024-05-27 13:57:30', '2024-05-27 13:57:30'),
(537, 81, 'uploads/product/17168039551.webp', '2024-05-27 13:59:15', '2024-05-27 13:59:15'),
(538, 81, 'uploads/product/17168039552.webp', '2024-05-27 13:59:15', '2024-05-27 13:59:15'),
(539, 81, 'uploads/product/17168039553.webp', '2024-05-27 13:59:15', '2024-05-27 13:59:15'),
(540, 81, 'uploads/product/17168039554.webp', '2024-05-27 13:59:15', '2024-05-27 13:59:15'),
(541, 82, 'uploads/product/17168041421.webp', '2024-05-27 14:02:22', '2024-05-27 14:02:22'),
(542, 82, 'uploads/product/17168041422.webp', '2024-05-27 14:02:22', '2024-05-27 14:02:22'),
(543, 82, 'uploads/product/17168041423.webp', '2024-05-27 14:02:22', '2024-05-27 14:02:22'),
(544, 82, 'uploads/product/17168041424.webp', '2024-05-27 14:02:22', '2024-05-27 14:02:22'),
(545, 83, 'uploads/product/17168042181.webp', '2024-05-27 14:03:38', '2024-05-27 14:03:38'),
(546, 83, 'uploads/product/17168042182.webp', '2024-05-27 14:03:38', '2024-05-27 14:03:38'),
(547, 83, 'uploads/product/17168042183.webp', '2024-05-27 14:03:38', '2024-05-27 14:03:38'),
(548, 83, 'uploads/product/17168042184.webp', '2024-05-27 14:03:38', '2024-05-27 14:03:38'),
(549, 84, 'uploads/product/17168043531.webp', '2024-05-27 14:05:53', '2024-05-27 14:05:53'),
(550, 84, 'uploads/product/17168043532.webp', '2024-05-27 14:05:53', '2024-05-27 14:05:53'),
(551, 84, 'uploads/product/17168043533.webp', '2024-05-27 14:05:53', '2024-05-27 14:05:53'),
(552, 84, 'uploads/product/17168043534.webp', '2024-05-27 14:05:53', '2024-05-27 14:05:53'),
(553, 85, 'uploads/product/17168044631.webp', '2024-05-27 14:07:43', '2024-05-27 14:07:43'),
(554, 85, 'uploads/product/17168044632.webp', '2024-05-27 14:07:43', '2024-05-27 14:07:43'),
(555, 85, 'uploads/product/17168044633.webp', '2024-05-27 14:07:43', '2024-05-27 14:07:43'),
(556, 85, 'uploads/product/17168044634.webp', '2024-05-27 14:07:43', '2024-05-27 14:07:43'),
(557, 86, 'uploads/product/17168045361.webp', '2024-05-27 14:08:56', '2024-05-27 14:08:56'),
(558, 86, 'uploads/product/17168045362.webp', '2024-05-27 14:08:56', '2024-05-27 14:08:56'),
(559, 86, 'uploads/product/17168045363.webp', '2024-05-27 14:08:56', '2024-05-27 14:08:56'),
(560, 86, 'uploads/product/17168045364.webp', '2024-05-27 14:08:56', '2024-05-27 14:08:56'),
(561, 87, 'uploads/product/17168046501.webp', '2024-05-27 14:10:50', '2024-05-27 14:10:50'),
(562, 87, 'uploads/product/17168046502.webp', '2024-05-27 14:10:50', '2024-05-27 14:10:50'),
(563, 87, 'uploads/product/17168046503.webp', '2024-05-27 14:10:50', '2024-05-27 14:10:50'),
(564, 87, 'uploads/product/17168046504.png', '2024-05-27 14:10:50', '2024-05-27 14:10:50'),
(565, 88, 'uploads/product/17168047461.webp', '2024-05-27 14:12:26', '2024-05-27 14:12:26'),
(566, 88, 'uploads/product/17168047462.webp', '2024-05-27 14:12:26', '2024-05-27 14:12:26'),
(567, 88, 'uploads/product/17168047463.png', '2024-05-27 14:12:26', '2024-05-27 14:12:26'),
(568, 88, 'uploads/product/17168047464.webp', '2024-05-27 14:12:26', '2024-05-27 14:12:26'),
(569, 89, 'uploads/product/17168048331.webp', '2024-05-27 14:13:53', '2024-05-27 14:13:53'),
(570, 89, 'uploads/product/17168048332.webp', '2024-05-27 14:13:53', '2024-05-27 14:13:53'),
(571, 89, 'uploads/product/17168048333.png', '2024-05-27 14:13:53', '2024-05-27 14:13:53'),
(572, 89, 'uploads/product/17168048334.png', '2024-05-27 14:13:53', '2024-05-27 14:13:53'),
(573, 90, 'uploads/product/17168050111.webp', '2024-05-27 14:16:51', '2024-05-27 14:16:51'),
(574, 90, 'uploads/product/17168050112.webp', '2024-05-27 14:16:51', '2024-05-27 14:16:51'),
(575, 90, 'uploads/product/17168050113.png', '2024-05-27 14:16:51', '2024-05-27 14:16:51'),
(576, 90, 'uploads/product/17168050114.png', '2024-05-27 14:16:51', '2024-05-27 14:16:51'),
(577, 91, 'uploads/product/17168059941.webp', '2024-05-27 14:33:14', '2024-05-27 14:33:14'),
(578, 91, 'uploads/product/17168059942.webp', '2024-05-27 14:33:14', '2024-05-27 14:33:14'),
(579, 91, 'uploads/product/17168059943.png', '2024-05-27 14:33:14', '2024-05-27 14:33:14'),
(580, 91, 'uploads/product/17168059944.png', '2024-05-27 14:33:14', '2024-05-27 14:33:14'),
(581, 92, 'uploads/product/17168061071.webp', '2024-05-27 14:35:07', '2024-05-27 14:35:07'),
(582, 92, 'uploads/product/17168061072.webp', '2024-05-27 14:35:07', '2024-05-27 14:35:07'),
(583, 92, 'uploads/product/17168061073.webp', '2024-05-27 14:35:07', '2024-05-27 14:35:07'),
(584, 93, 'uploads/product/17168062831.webp', '2024-05-27 14:38:03', '2024-05-27 14:38:03'),
(585, 93, 'uploads/product/17168062832.webp', '2024-05-27 14:38:03', '2024-05-27 14:38:03'),
(586, 93, 'uploads/product/17168062833.webp', '2024-05-27 14:38:03', '2024-05-27 14:38:03'),
(587, 94, 'uploads/product/17168064641.webp', '2024-05-27 14:41:04', '2024-05-27 14:41:04'),
(588, 94, 'uploads/product/17168064642.webp', '2024-05-27 14:41:04', '2024-05-27 14:41:04'),
(589, 94, 'uploads/product/17168064643.webp', '2024-05-27 14:41:04', '2024-05-27 14:41:04'),
(590, 94, 'uploads/product/17168064644.webp', '2024-05-27 14:41:04', '2024-05-27 14:41:04'),
(591, 95, 'uploads/product/17168066101.webp', '2024-05-27 14:43:30', '2024-05-27 14:43:30'),
(592, 95, 'uploads/product/17168066102.webp', '2024-05-27 14:43:30', '2024-05-27 14:43:30'),
(593, 95, 'uploads/product/17168066103.webp', '2024-05-27 14:43:30', '2024-05-27 14:43:30'),
(594, 95, 'uploads/product/17168066104.webp', '2024-05-27 14:43:30', '2024-05-27 14:43:30'),
(595, 96, 'uploads/product/17168067721.webp', '2024-05-27 14:46:12', '2024-05-27 14:46:12'),
(596, 96, 'uploads/product/17168067722.webp', '2024-05-27 14:46:12', '2024-05-27 14:46:12'),
(597, 96, 'uploads/product/17168067723.webp', '2024-05-27 14:46:12', '2024-05-27 14:46:12'),
(598, 97, 'uploads/product/17168068741.webp', '2024-05-27 14:47:54', '2024-05-27 14:47:54'),
(599, 97, 'uploads/product/17168068742.webp', '2024-05-27 14:47:54', '2024-05-27 14:47:54'),
(600, 97, 'uploads/product/17168068743.webp', '2024-05-27 14:47:54', '2024-05-27 14:47:54'),
(601, 97, 'uploads/product/17168068744.webp', '2024-05-27 14:47:54', '2024-05-27 14:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` float NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(4, 1, 2, 3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '2024-04-04 10:37:24', '2024-04-04 10:37:24'),
(5, 1, 3, 5, 'Contrary to popular belief, Lorem Ipsum is not simply random text.', '2024-04-04 10:39:41', '2024-04-04 10:39:41'),
(6, 1, 1, 5, 'Test', '2024-04-10 08:58:41', '2024-04-10 08:58:41'),
(7, 1, 1, 5, 'Hii', '2024-04-29 12:03:16', '2024-04-29 12:03:16'),
(8, 1, 1, 3, 'Test', '2024-04-29 12:03:54', '2024-04-29 12:03:54'),
(9, 25, 3, 5, 'nice product', '2024-05-06 04:58:52', '2024-05-06 04:58:52'),
(10, 3, 1, 5, 'Test Review', '2024-05-06 05:58:03', '2024-05-06 05:58:03'),
(11, 62, 1, 5, 'Good Product.', '2024-05-06 06:00:05', '2024-05-06 06:00:05'),
(14, 63, 18, 5, 'Good Products', '2024-05-30 05:06:47', '2024-05-30 05:06:47'),
(15, 14, 2, 3, 'sas', '2024-05-30 06:10:43', '2024-05-30 06:10:43'),
(16, 46, 1, 5, 'nice product', '2024-07-10 06:23:11', '2024-07-10 06:23:11'),
(17, 64, 1, 3, 'good quality', '2024-07-10 06:43:28', '2024-07-10 06:43:28'),
(18, 43, 25, 5, 'good one', '2024-07-12 06:49:47', '2024-07-12 06:49:47'),
(19, 43, 25, 1, 'testing', '2024-07-12 06:50:39', '2024-07-12 06:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `product_id`, `sku`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(3, 1, NULL, 300.00, 20, '2024-03-29 16:04:38', '2024-03-29 16:04:38'),
(5, 1, NULL, 500.00, 10, '2024-03-29 16:04:38', '2024-03-29 16:04:38'),
(6, 78, NULL, 135.00, 100, '2024-05-08 09:47:58', '2024-05-08 09:47:58'),
(7, 78, NULL, 3399.00, 100, '2024-05-08 09:47:58', '2024-05-08 09:47:58'),
(8, 96, NULL, 1341.00, 100, '2024-05-13 09:02:07', '2024-05-13 09:02:07'),
(9, 96, NULL, 4311.00, 100, '2024-05-13 09:02:07', '2024-05-13 09:02:07'),
(10, 16, NULL, 849.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(11, 16, NULL, 949.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(12, 16, NULL, 1049.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(13, 16, NULL, 1249.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(14, 16, NULL, 1349.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(15, 16, NULL, 1449.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(16, 16, NULL, 1549.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(17, 16, NULL, 1649.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(18, 16, NULL, 1749.00, 100, '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(19, 19, NULL, 549.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(20, 19, NULL, 649.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(21, 19, NULL, 749.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(22, 19, NULL, 849.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(23, 19, NULL, 949.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(24, 19, NULL, 1049.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(25, 19, NULL, 1149.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(26, 19, NULL, 1249.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(27, 19, NULL, 1349.00, 100, '2024-05-13 09:20:43', '2024-05-13 09:20:43'),
(28, 19, NULL, 549.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(29, 19, NULL, 649.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(30, 19, NULL, 749.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(31, 19, NULL, 849.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(32, 19, NULL, 949.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(33, 19, NULL, 1049.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(34, 19, NULL, 1149.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(35, 19, NULL, 1249.00, 100, '2024-05-13 09:25:12', '2024-05-13 09:25:12'),
(36, 19, NULL, 549.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(37, 19, NULL, 649.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(38, 19, NULL, 749.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(39, 19, NULL, 849.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(40, 19, NULL, 949.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(41, 19, NULL, 1049.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(42, 19, NULL, 1149.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(43, 19, NULL, 1249.00, 100, '2024-05-13 09:25:14', '2024-05-13 09:25:14'),
(44, 19, NULL, 549.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(45, 19, NULL, 649.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(46, 19, NULL, 749.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(47, 19, NULL, 849.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(48, 19, NULL, 949.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(49, 19, NULL, 1049.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(50, 19, NULL, 1149.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(51, 19, NULL, 1249.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(52, 19, NULL, 549.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(53, 19, NULL, 649.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(54, 19, NULL, 749.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(55, 19, NULL, 849.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(56, 19, NULL, 949.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(57, 19, NULL, 1049.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(58, 19, NULL, 1149.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(59, 19, NULL, 1249.00, 100, '2024-05-13 09:25:25', '2024-05-13 09:25:25'),
(60, 19, NULL, 549.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(61, 19, NULL, 649.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(62, 19, NULL, 749.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(63, 19, NULL, 849.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(64, 19, NULL, 949.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(65, 19, NULL, 1049.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(66, 19, NULL, 1149.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(67, 19, NULL, 1249.00, 100, '2024-05-13 09:25:27', '2024-05-13 09:25:27'),
(68, 19, NULL, 549.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(69, 19, NULL, 649.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(70, 19, NULL, 749.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(71, 19, NULL, 849.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(72, 19, NULL, 949.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(73, 19, NULL, 1049.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(74, 19, NULL, 1149.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(75, 19, NULL, 1249.00, 100, '2024-05-13 09:26:22', '2024-05-13 09:26:22'),
(76, 19, NULL, 549.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(77, 19, NULL, 649.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(78, 19, NULL, 749.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(79, 19, NULL, 849.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(80, 19, NULL, 949.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(81, 19, NULL, 1049.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(82, 19, NULL, 1149.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(83, 19, NULL, 1249.00, 100, '2024-05-13 09:26:23', '2024-05-13 09:26:23'),
(84, 19, NULL, 549.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(85, 19, NULL, 649.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(86, 19, NULL, 749.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(87, 19, NULL, 849.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(88, 19, NULL, 949.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(89, 19, NULL, 1049.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(90, 19, NULL, 1149.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(91, 19, NULL, 1249.00, 100, '2024-05-13 09:26:24', '2024-05-13 09:26:24'),
(92, 19, NULL, 549.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(93, 19, NULL, 649.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(94, 19, NULL, 749.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(95, 19, NULL, 849.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(96, 19, NULL, 949.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(97, 19, NULL, 1049.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(98, 19, NULL, 1149.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(99, 19, NULL, 1249.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(100, 19, NULL, 549.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(101, 19, NULL, 649.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(102, 19, NULL, 749.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(103, 19, NULL, 849.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(104, 19, NULL, 949.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(105, 19, NULL, 1049.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(106, 19, NULL, 1149.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(107, 19, NULL, 1249.00, 100, '2024-05-13 09:26:25', '2024-05-13 09:26:25'),
(108, 19, NULL, 549.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(109, 19, NULL, 649.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(110, 19, NULL, 749.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(111, 19, NULL, 849.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(112, 19, NULL, 949.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(113, 19, NULL, 1049.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(114, 19, NULL, 1149.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(115, 19, NULL, 1249.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(116, 19, NULL, 549.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(117, 19, NULL, 649.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(118, 19, NULL, 749.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(119, 19, NULL, 849.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(120, 19, NULL, 949.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(121, 19, NULL, 1049.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(122, 19, NULL, 1149.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(123, 19, NULL, 1249.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(124, 19, NULL, 549.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(125, 19, NULL, 649.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(126, 19, NULL, 749.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(127, 19, NULL, 849.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(128, 19, NULL, 949.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(129, 19, NULL, 1049.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(130, 19, NULL, 1149.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(131, 19, NULL, 1249.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(132, 19, NULL, 549.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(133, 19, NULL, 649.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(134, 19, NULL, 749.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(135, 19, NULL, 849.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(136, 19, NULL, 949.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(137, 19, NULL, 1049.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(138, 19, NULL, 1149.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(139, 19, NULL, 1249.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(140, 19, NULL, 549.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(141, 19, NULL, 649.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(142, 19, NULL, 749.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(143, 19, NULL, 849.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(144, 19, NULL, 949.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(145, 19, NULL, 1049.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(146, 19, NULL, 1149.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(147, 19, NULL, 1249.00, 100, '2024-05-13 09:26:26', '2024-05-13 09:26:26'),
(148, 19, NULL, 549.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(149, 19, NULL, 649.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(150, 19, NULL, 749.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(151, 19, NULL, 849.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(152, 19, NULL, 949.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(153, 19, NULL, 1049.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(154, 19, NULL, 1149.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(155, 19, NULL, 1249.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(156, 19, NULL, 549.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(157, 19, NULL, 649.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(158, 19, NULL, 749.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(159, 19, NULL, 849.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(160, 19, NULL, 949.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(161, 19, NULL, 1049.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(162, 19, NULL, 1149.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(163, 19, NULL, 1249.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(164, 19, NULL, 549.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(165, 19, NULL, 649.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(166, 19, NULL, 749.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(167, 19, NULL, 849.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(168, 19, NULL, 949.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(169, 19, NULL, 1049.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(170, 19, NULL, 1149.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(171, 19, NULL, 1249.00, 100, '2024-05-13 09:26:27', '2024-05-13 09:26:27'),
(172, 19, NULL, 549.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(173, 19, NULL, 649.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(174, 19, NULL, 749.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(175, 19, NULL, 849.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(176, 19, NULL, 949.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(177, 19, NULL, 1049.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(178, 19, NULL, 1149.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(179, 19, NULL, 1249.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(180, 19, NULL, 1349.00, 100, '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(181, 20, NULL, 849.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(182, 20, NULL, 949.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(183, 20, NULL, 1049.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(184, 20, NULL, 1249.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(185, 20, NULL, 1349.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(186, 20, NULL, 1449.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(187, 20, NULL, 1549.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(188, 20, NULL, 1649.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(189, 20, NULL, 1749.00, 100, '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(199, 21, NULL, 349.00, 100, '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(200, 21, NULL, 399.00, 100, '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(201, 21, NULL, 449.00, 100, '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(202, 21, NULL, 449.00, 100, '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(203, 25, NULL, 1341.00, 100, '2024-05-13 10:20:07', '2024-05-13 10:20:07'),
(204, 25, NULL, 4401.00, 100, '2024-05-13 10:20:07', '2024-05-13 10:20:07'),
(205, 27, NULL, 1341.00, 100, '2024-05-13 10:24:01', '2024-05-13 10:24:01'),
(206, 27, NULL, 4401.00, 100, '2024-05-13 10:24:01', '2024-05-13 10:24:01'),
(207, 29, NULL, 1341.00, 100, '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(208, 29, NULL, 4401.00, 100, '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(209, 29, NULL, 7101.00, 100, '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(210, 30, NULL, 719.00, 100, '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(211, 30, NULL, 2601.00, 100, '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(212, 30, NULL, 6921.00, 100, '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(213, 31, NULL, 764.00, 100, '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(214, 31, NULL, 2691.00, 100, '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(215, 31, NULL, 4941.00, 100, '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(216, 32, NULL, 801.00, 100, '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(217, 32, NULL, 2871.00, 100, '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(218, 32, NULL, 8361.00, 100, '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(219, 23, NULL, 314.00, 100, '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(220, 23, NULL, 349.00, 100, '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(221, 23, NULL, 399.00, 100, '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(222, 23, NULL, 449.00, 100, '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(223, 33, NULL, 799.00, 100, '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(224, 33, NULL, 2871.00, 100, '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(225, 33, NULL, 5121.00, 100, '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(226, 46, NULL, 415.00, 89, '2024-05-13 11:58:43', '2024-07-01 14:13:35'),
(227, 46, NULL, 1170.00, 99, '2024-05-13 11:58:43', '2024-07-01 13:18:24'),
(228, 47, NULL, 289.00, 100, '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(229, 47, NULL, 489.00, 100, '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(230, 47, NULL, 5599.00, 100, '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(231, 52, NULL, 783.00, 100, '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(232, 52, NULL, 999.00, 100, '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(233, 52, NULL, 1199.00, 100, '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(234, 52, NULL, 5562.00, 100, '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(235, 52, NULL, 1629.00, 100, '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(236, 53, NULL, 975.00, 100, '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(237, 53, NULL, 1299.00, 100, '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(238, 53, NULL, 1999.00, 100, '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(239, 62, NULL, 500.00, 18, '2024-05-13 13:17:37', '2024-07-04 08:27:04'),
(240, 62, NULL, 2699.00, 100, '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(241, 62, NULL, 6199.00, 100, '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(242, 62, NULL, 10399.00, 100, '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(243, 63, NULL, 499.00, 100, '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(244, 63, NULL, 2699.00, 100, '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(245, 63, NULL, 6199.00, 100, '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(246, 63, NULL, 10399.00, 100, '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(247, 64, NULL, 6199.00, 100, '2024-05-13 13:23:56', '2024-05-13 13:23:56'),
(248, 64, NULL, 10399.00, 100, '2024-05-13 13:23:56', '2024-05-13 13:23:56'),
(249, 65, NULL, 499.00, 100, '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(250, 65, NULL, 2699.00, 100, '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(251, 65, NULL, 6199.00, 100, '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(252, 65, NULL, 10399.00, 100, '2024-05-13 13:28:47', '2024-05-13 13:28:47'),
(253, 66, NULL, 499.00, 100, '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(254, 66, NULL, 2699.00, 100, '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(255, 66, NULL, 6199.00, 100, '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(256, 66, NULL, 14399.00, 100, '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(257, 73, NULL, 415.00, 100, '2024-05-13 13:44:39', '2024-05-13 13:44:39'),
(258, 73, NULL, 1170.00, 100, '2024-05-13 13:44:39', '2024-05-13 13:44:39'),
(261, 94, NULL, 2899.00, 100, '2024-05-13 14:03:47', '2024-05-13 14:03:47'),
(262, 94, NULL, 6399.00, 100, '2024-05-13 14:03:47', '2024-05-13 14:03:47'),
(263, 95, NULL, 549.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(264, 95, NULL, 649.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(265, 95, NULL, 749.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(266, 95, NULL, 849.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(267, 95, NULL, 949.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(268, 95, NULL, 1049.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(269, 95, NULL, 1149.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(270, 95, NULL, 1249.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(271, 95, NULL, 1349.00, 100, '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(272, 79, NULL, 135.00, 100, '2024-05-13 14:35:51', '2024-05-13 14:35:51'),
(273, 79, NULL, 3199.00, 100, '2024-05-13 14:35:51', '2024-05-13 14:35:51'),
(274, 80, NULL, 135.00, 100, '2024-05-13 14:41:02', '2024-05-13 14:41:02'),
(275, 80, NULL, 3400.00, 100, '2024-05-13 14:41:02', '2024-05-13 14:41:02'),
(276, 81, NULL, 135.00, 100, '2024-05-13 14:46:29', '2024-05-13 14:46:29'),
(277, 81, NULL, 3400.00, 100, '2024-05-13 14:46:29', '2024-05-13 14:46:29'),
(278, 82, NULL, 139.00, 100, '2024-05-13 14:50:46', '2024-05-13 14:50:46'),
(279, 82, NULL, 2999.00, 100, '2024-05-13 14:50:46', '2024-05-13 14:50:46'),
(280, 83, NULL, 120.00, 100, '2024-05-13 14:54:18', '2024-05-13 14:54:18'),
(281, 83, NULL, 2800.00, 100, '2024-05-13 14:54:18', '2024-05-13 14:54:18'),
(282, 84, NULL, 135.00, 100, '2024-05-13 15:14:06', '2024-05-13 15:14:06'),
(283, 84, NULL, 3200.00, 100, '2024-05-13 15:14:06', '2024-05-13 15:14:06'),
(284, 85, NULL, 135.00, 100, '2024-05-13 15:21:21', '2024-05-13 15:21:21'),
(285, 85, NULL, 3200.00, 100, '2024-05-13 15:21:21', '2024-05-13 15:21:21'),
(286, 86, NULL, 157.00, 100, '2024-05-13 15:25:48', '2024-05-13 15:25:48'),
(287, 86, NULL, 3200.00, 100, '2024-05-13 15:25:48', '2024-05-13 15:25:48'),
(294, 21, NULL, 29.00, 14, '2024-06-19 15:06:43', '2024-06-19 16:15:08'),
(295, 21, NULL, 20.00, 10, '2024-06-19 15:51:01', '2024-06-19 15:51:01'),
(296, 21, NULL, 100.00, 55, '2024-06-19 16:00:22', '2024-06-19 16:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_variation_values`
--

CREATE TABLE `product_variation_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variation_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` varchar(255) NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variation_values`
--

INSERT INTO `product_variation_values` (`id`, `product_id`, `variation_id`, `attribute_id`, `attribute_value`, `status`, `created_at`, `updated_at`) VALUES
(5, 21, 199, 1, 'Red', '0', '2024-03-29 16:04:38', '2024-03-29 16:04:38'),
(6, 1, 3, 2, 'S', '0', '2024-03-29 16:04:38', '2024-03-29 16:04:38'),
(7, 1, 5, 2, 'M', '0', '2024-03-29 16:04:38', '2024-03-29 16:04:38'),
(8, 78, 6, 2, '1 Can', '0', '2024-05-08 09:47:58', '2024-05-08 09:47:58'),
(9, 78, 7, 2, '24 Cans', '0', '2024-05-08 09:47:58', '2024-05-08 09:47:58'),
(11, 96, 8, 2, '2 Kg', '0', '2024-05-13 09:02:07', '2024-05-13 09:02:07'),
(12, 96, 9, 2, '7 Kg', '0', '2024-05-13 09:02:07', '2024-05-13 09:02:07'),
(13, 16, 10, 2, 'XS', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(14, 16, 11, 2, 'S', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(15, 16, 12, 2, 'M', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(16, 16, 13, 2, 'L', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(17, 16, 14, 2, 'XL', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(18, 16, 15, 2, '2XL', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(19, 16, 16, 2, '3XL', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(20, 16, 17, 2, '4XL', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(21, 16, 18, 2, '5XL', '0', '2024-05-13 09:13:28', '2024-05-13 09:13:28'),
(175, 19, 172, 2, 'XS', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(176, 19, 173, 2, 'S', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(177, 19, 174, 2, 'M', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(178, 19, 175, 2, 'L', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(179, 19, 176, 2, 'XL', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(180, 19, 177, 2, '2XL', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(181, 19, 178, 2, '3XL', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(182, 19, 179, 2, '4XL', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(183, 19, 180, 2, '5XL', '0', '2024-05-13 09:37:24', '2024-05-13 09:37:24'),
(184, 20, 181, 2, 'XS', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(185, 20, 182, 2, 'S', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(186, 20, 183, 2, 'M', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(187, 20, 184, 2, 'L', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(188, 20, 185, 2, 'XL', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(189, 20, 186, 2, '2XL', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(190, 20, 187, 2, '3XL', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(191, 20, 188, 2, '4XL', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(192, 20, 189, 2, '5XL', '0', '2024-05-13 09:47:45', '2024-05-13 09:47:45'),
(193, 21, 190, 1, 'Fuchsia & Amethyst', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(194, 21, 191, 1, 'Fuchsia & Sky', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(195, 21, 192, 1, 'Honey & Sky', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(196, 21, 193, 1, 'Honey & Wine', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(197, 21, 194, 1, 'Peach & Amethyst', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(198, 21, 195, 1, 'Peach & Sky', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(199, 21, 196, 1, 'Peach & Wine', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(200, 21, 197, 1, 'Emerald & Honey', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(201, 21, 198, 1, 'Emerald& Peach', '0', '2024-05-13 10:03:16', '2024-05-13 10:03:16'),
(202, 21, 199, 2, 'Small Length 4 Feet, Width 2 cm', '0', '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(203, 21, 200, 2, 'Medium Length 4 Feet, Width 2.5 cm', '0', '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(204, 21, 201, 2, 'Large Length 4 Feet, Width 3.2 cm', '0', '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(205, 21, 202, 2, 'X-Large Length 4 Feet, Width 3.8 cm', '0', '2024-05-13 10:14:11', '2024-05-13 10:14:11'),
(206, 25, 203, 2, '2 Kg', '0', '2024-05-13 10:20:07', '2024-05-13 10:20:07'),
(207, 25, 204, 2, '7 Kg', '0', '2024-05-13 10:20:07', '2024-05-13 10:20:07'),
(208, 27, 205, 2, '2 Kg', '0', '2024-05-13 10:24:01', '2024-05-13 10:24:01'),
(209, 27, 206, 2, '7 Kg', '0', '2024-05-13 10:24:01', '2024-05-13 10:24:01'),
(210, 29, 207, 2, '2 Kg', '0', '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(211, 29, 208, 2, '7 Kg', '0', '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(212, 29, 209, 2, '12 Kg', '0', '2024-05-13 10:27:34', '2024-05-13 10:27:34'),
(213, 30, 210, 2, '800 Gms', '0', '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(214, 30, 211, 2, '3.5 Kg', '0', '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(215, 30, 212, 2, '12 Kg', '0', '2024-05-13 10:31:01', '2024-05-13 10:31:01'),
(216, 31, 213, 2, '800 Gms', '0', '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(217, 31, 214, 2, '3.5 Kg', '0', '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(218, 31, 215, 2, '12 Kg', '0', '2024-05-13 10:34:18', '2024-05-13 10:34:18'),
(219, 32, 216, 2, '800 Gms', '0', '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(220, 32, 217, 2, '3.5 Kg', '0', '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(221, 32, 218, 2, '12 Kg', '0', '2024-05-13 10:45:36', '2024-05-13 10:45:36'),
(222, 23, 219, 2, 'Small: Neck 28-40 cm, Strap - 2 cm', '0', '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(223, 23, 220, 2, 'Medium: Neck 35-50 cm, Strap - 2.5 cm', '0', '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(224, 23, 221, 2, 'Large: Neck 45-60 cm, Strap - 3.2 cm', '0', '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(225, 23, 222, 2, 'XL: Neck 55-70 cm, Strap - 3.8 cm', '0', '2024-05-13 11:16:32', '2024-05-13 11:16:32'),
(226, 33, 223, 2, '800 Gms', '0', '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(227, 33, 224, 2, '3.5 Kg', '0', '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(228, 33, 225, 2, '12 Kg', '0', '2024-05-13 11:35:12', '2024-05-13 11:35:12'),
(229, 46, 226, 2, 'Pack of 7', '0', '2024-05-13 11:58:43', '2024-05-13 11:58:43'),
(230, 46, 227, 2, 'Pack of 20', '0', '2024-05-13 11:58:43', '2024-05-13 11:58:43'),
(231, 47, 228, 2, '100 ml', '0', '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(232, 47, 229, 2, '200 ml', '0', '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(233, 47, 230, 2, '5 Litre', '0', '2024-05-13 12:53:23', '2024-05-13 12:53:23'),
(234, 52, 231, 2, 'Small', '0', '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(235, 52, 232, 2, 'Medium', '0', '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(236, 52, 233, 2, 'Large', '0', '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(237, 52, 234, 2, 'X-Large', '0', '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(238, 52, 235, 2, 'Unique', '0', '2024-05-13 13:04:06', '2024-05-13 13:04:06'),
(239, 53, 236, 2, 'Medium', '0', '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(240, 53, 237, 2, 'Large', '0', '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(241, 53, 238, 2, 'X-Large', '0', '2024-05-13 13:08:08', '2024-05-13 13:08:08'),
(242, 62, 239, 2, '340 Gms', '1', '2024-05-13 13:17:37', '2024-06-20 07:51:46'),
(243, 62, 240, 2, '2 Kg', '0', '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(244, 62, 241, 2, '6 Kg', '0', '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(245, 62, 242, 2, '11.4 Kg', '0', '2024-05-13 13:17:37', '2024-05-13 13:17:37'),
(246, 63, 243, 2, '340 Gms', '0', '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(247, 63, 244, 2, '2 Kg', '0', '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(248, 63, 245, 2, '6 Kg', '0', '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(249, 63, 246, 2, '11.4 Kg', '0', '2024-05-13 13:21:19', '2024-05-13 13:21:19'),
(250, 64, 247, 2, '6 Kg', '0', '2024-05-13 13:23:56', '2024-05-13 13:23:56'),
(251, 64, 248, 2, '11.4 Kg', '0', '2024-05-13 13:23:56', '2024-05-13 13:23:56'),
(252, 65, 249, 2, '340 Gms', '0', '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(253, 65, 250, 2, '2 Kg', '0', '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(254, 65, 251, 2, '6 Kg', '0', '2024-05-13 13:28:15', '2024-05-13 13:28:15'),
(255, 65, 252, 2, '11.4 Kg', '0', '2024-05-13 13:28:47', '2024-05-13 13:28:47'),
(256, 66, 253, 2, '340 Gms', '0', '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(257, 66, 254, 2, '2 Kg', '0', '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(258, 66, 255, 2, '6 Kg', '0', '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(259, 66, 256, 2, '11.4 Kg', '0', '2024-05-13 13:35:27', '2024-05-13 13:35:27'),
(260, 73, 257, 2, 'Pack of 7', '0', '2024-05-13 13:44:39', '2024-05-13 13:44:39'),
(261, 73, 258, 2, 'Pack of 20', '0', '2024-05-13 13:44:39', '2024-05-13 13:44:39'),
(264, 94, 261, 2, '1.8 Kg', '0', '2024-05-13 14:03:47', '2024-05-13 14:03:47'),
(265, 94, 262, 2, '5.4 Kg', '0', '2024-05-13 14:03:47', '2024-05-13 14:03:47'),
(266, 95, 263, 2, 'XS', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(267, 95, 264, 2, 'S', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(268, 95, 265, 2, 'M', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(269, 95, 266, 2, 'L', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(270, 95, 267, 2, 'XL', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(271, 95, 268, 2, '2XL', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(272, 95, 269, 2, '3XL', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(273, 95, 270, 2, '4XL', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(274, 95, 271, 2, '5XL', '0', '2024-05-13 14:12:07', '2024-05-13 14:12:07'),
(275, 79, 272, 2, '1 can', '0', '2024-05-13 14:35:51', '2024-05-13 14:35:51'),
(276, 79, 273, 2, '24 cans', '0', '2024-05-13 14:35:51', '2024-05-13 14:35:51'),
(277, 80, 274, 2, '1 Can', '0', '2024-05-13 14:41:02', '2024-05-13 14:41:02'),
(278, 80, 275, 2, '24 Cans', '0', '2024-05-13 14:41:02', '2024-05-13 14:41:02'),
(279, 81, 276, 2, '1 Can', '0', '2024-05-13 14:46:29', '2024-05-13 14:46:29'),
(280, 81, 277, 2, '24 Cans', '0', '2024-05-13 14:46:29', '2024-05-13 14:46:29'),
(281, 82, 278, 2, '1 Can', '0', '2024-05-13 14:50:46', '2024-05-13 14:50:46'),
(282, 82, 279, 2, '24 Cans', '0', '2024-05-13 14:50:46', '2024-05-13 14:50:46'),
(283, 83, 280, 2, '1 Can', '0', '2024-05-13 14:54:18', '2024-05-13 14:54:18'),
(284, 83, 281, 2, '24 Cans', '0', '2024-05-13 14:54:18', '2024-05-13 14:54:18'),
(285, 84, 282, 2, '1 Can', '0', '2024-05-13 15:14:06', '2024-05-13 15:14:06'),
(286, 84, 283, 2, '24 Cans', '0', '2024-05-13 15:14:06', '2024-05-13 15:14:06'),
(287, 85, 284, 2, '1 Can', '0', '2024-05-13 15:21:21', '2024-05-13 15:21:21'),
(288, 85, 285, 2, '24 Cans', '0', '2024-05-13 15:21:21', '2024-05-13 15:21:21'),
(289, 86, 286, 2, '1 Can', '0', '2024-05-13 15:25:48', '2024-05-13 15:25:48'),
(290, 86, 287, 2, '24 Cans', '0', '2024-05-13 15:25:48', '2024-05-13 15:25:48'),
(297, 21, 294, 1, 'Red', '1', '2024-06-19 15:06:43', '2024-06-19 15:58:32'),
(298, 21, 294, 2, 'X-Large Length 4 Feet, Width 3.8 cm', '0', '2024-06-19 15:06:43', '2024-06-19 15:06:43'),
(299, 21, 295, 1, 'Green', '0', '2024-06-19 15:51:01', '2024-06-19 15:51:01'),
(300, 21, 295, 2, 'Small Length 4 Feet, Width 2 cm', '0', '2024-06-19 15:51:01', '2024-06-19 15:51:01'),
(301, 21, 296, 1, 'Red', '1', '2024-06-19 16:00:22', '2024-06-19 16:22:11'),
(302, 21, 296, 2, 'Large Length 4 Feet, Width 3.2 cm', '0', '2024-06-19 16:00:22', '2024-06-19 16:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `video_link` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relocate_quote_forms`
--

CREATE TABLE `relocate_quote_forms` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pet_type` varchar(100) DEFAULT NULL,
  `pet_name` varchar(100) DEFAULT NULL,
  `pet_breed` varchar(100) DEFAULT NULL,
  `pet_age` decimal(10,0) DEFAULT NULL,
  `pet_gender` varchar(20) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relocate_quote_forms`
--

INSERT INTO `relocate_quote_forms` (`id`, `owner_name`, `email`, `phone_number`, `pet_type`, `pet_name`, `pet_breed`, `pet_age`, `pet_gender`, `origin`, `destination`, `created_at`, `updated_at`) VALUES
(4, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'dog', 'Test', 'test', 12, 'male', '123', '2122', '2024-05-06 09:27:12', '2024-05-06 09:27:12'),
(5, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'dog', 'Test', 'test', 12, 'male', '123', '2122', '2024-05-06 09:27:18', '2024-05-06 09:27:18'),
(6, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'dog', 'Test', 'test', 12, 'male', '123', '2122', '2024-05-06 09:27:22', '2024-05-06 09:27:22'),
(7, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'cat', 'fdf', 'fgsdg', 5345, 'male', '35463546', '3463546', '2024-05-06 09:28:23', '2024-05-06 09:28:23'),
(8, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'cat', 'fdf', 'fgsdg', 5345, 'male', '35463546', '3463546', '2024-05-06 09:28:24', '2024-05-06 09:28:24'),
(9, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'cat', 'fdf', 'fgsdg', 5345, 'male', '35463546', '3463546', '2024-05-06 09:28:24', '2024-05-06 09:28:24'),
(10, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456813', 'cat', 'job seeker', '24342', 43, 'male', 'test', 'rwerw', '2024-05-06 09:30:02', '2024-05-06 09:30:02'),
(11, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456812', 'horse', 'job seeker', '24342', 32, 'male', 'rwefrtwt', 'tewrt', '2024-05-06 09:37:55', '2024-05-06 09:37:55'),
(12, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456813', 'dog', 'Peter Thomas', '24342', 334, 'male', '223', 'tewrt', '2024-05-06 09:42:27', '2024-05-06 09:42:27'),
(13, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456814', 'dog', 'Peter Thomas', '24342', 25, 'female', 'rwefrtwt', 'tewrt', '2024-05-13 04:36:43', '2024-05-13 04:36:43'),
(14, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456812', 'dog', 'Peter Thomas', '24342', 3, 'male', 'mohali', 'delhi', '2024-05-16 07:52:11', '2024-05-16 07:52:11'),
(15, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456813', 'dog', 'Peter Thomas', '24342', 43, 'male', 'rwefrtwt', 'tewrt', '2024-05-16 07:59:24', '2024-05-16 07:59:24'),
(16, 'John', 'john@gmail.com', '8956123470', 'dog', 'Lio', 'German', 2, 'male', 'test', 'test', '2024-05-24 04:37:31', '2024-05-24 04:37:31'),
(17, 'Rahul Dubey', 'gigsoftpro@gmail.com', '9988224462', 'cat', 'wqeerw', 'qwewrewrqwer', 10, 'male', 'qsdfdsfds', 'dsfdsfs', '2024-05-28 12:42:46', '2024-05-28 12:42:46'),
(18, 'sfdsf', 'sdfdsf@gmail.com', '7988798789', 'dog', 'dsfsd', 'sdfsdf', 1, 'male', 'sdf', 'sdf', '2024-05-29 11:15:16', '2024-05-29 11:15:16'),
(19, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456814', 'dog', 'Duke', 'Labra', 25, 'male', 'Mohali', 'Chandigarh', '2024-05-30 04:22:09', '2024-05-30 04:22:09'),
(20, 'Peter Thomas', 'rinkusharma4543@gmail.com', '7453456814', 'cat', 'Micke', 'Kitty', 25, 'male', 'Usa', 'India', '2024-05-30 04:23:10', '2024-05-30 04:23:10'),
(21, 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'dog', 'pet', 'pet', 12, 'male', 'mohali', 'sirsa', '2024-05-30 05:09:56', '2024-05-30 05:09:56'),
(22, 'Test', 'test@gmail.com', '9876543210', 'dog', 'fdsfdsfs', 'dfddsf', 3, 'male', 'India', 'USA', '2024-07-03 06:49:23', '2024-07-03 06:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'Remediovet', 'https://remedio.evgigsoft.com/', NULL, NULL, NULL, 'Plot 157-A, Shop 9, Sarangpur, Chandigarh 160014', '892-057-8443', NULL, 'woof@remediovet.com', NULL, 'https://www.facebook.com/remediovet/', 'https://twitter.com/RemedioVet', 'https://linkedin.com/company/remediovet/', 'https://www.instagram.com/remediovet/', 'https://www.youtube.com/@RemedioVet', '2024-03-26 06:16:17', '2024-05-13 04:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shipping_id` int(11) NOT NULL,
  `shipping_name` varchar(100) NOT NULL,
  `shipping_type` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`shipping_id`, `shipping_name`, `shipping_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'Free', 0, '2024-04-17 17:20:04', '2024-04-17 17:20:04'),
(2, 'Flat Rate', 'Flat', 1, '2024-04-17 08:18:27', '2024-04-17 08:18:27');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `shipping_rate_type` varchar(50) NOT NULL,
  `shipping_rate` float(20,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `shipping_details` (`id`, `shipping_id`, `shipping_rate_type`, `shipping_rate`, `created_at`, `updated_at`) VALUES
(1, 2, 'fix', 10.00, '2024-05-06 09:16:39', '2024-05-06 09:16:39'),
(2, 2, 'percentage', 5.00, '2024-05-06 09:17:11', '2024-05-06 09:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 0, NULL, NULL),
(2, 'M', 0, NULL, NULL),
(3, 'L', 0, NULL, NULL),
(4, 'XL', 0, NULL, NULL),
(5, 'XXL', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sub_image` text DEFAULT NULL,
  `mobile_slider_image` text DEFAULT NULL,
  `redirect_link` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hidden, 0=visible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `description`, `image`, `sub_image`, `mobile_slider_image`, `redirect_link`, `button_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TRIVE WITH', 'Skin & Coat Supplement', 'Healthy Skin, Shiny Coat, Zero Hairfall', 'uploads/slider/1721020020.jpg', 'uploads/slider/1716979489.png', 'uploads/slider/1715596145.jpg', 'product/omega-3-6-skin-coat-tonic-for-dogs-cats-yummy-chicken-flavour', 'Shop Now', 0, '2024-02-15 23:05:58', '2024-07-15 09:07:00'),
(3, 'FOR SENIOR DOGS', 'A BALANCED NUTRITION', 'Help your furbaby be happiest and healthiest\r\nin their senior days with this special diet', 'uploads/slider/1721020058.jpg', 'uploads/slider/1708073685.webp', 'uploads/slider/1715596341.jpg', 'product/orijen-grain-free-senior-dry-dog-food-for-all-breeds', 'Shop Now', 0, '2024-02-15 23:16:09', '2024-07-15 09:07:38'),
(4, 'HEALTHY CATS', 'HAPPY HEARTS Check', 'Keep the worms away', 'uploads/slider/1721020069.jpg', 'uploads/slider/1708060903.webp', 'uploads/slider/1720511731.png', 'product/defender-nex-pro-herbal-dewormer-for-cats-and-kittens', 'Shop Now', 0, '2024-02-15 23:17:03', '2024-07-15 09:07:49'),
(9, 'Calcium Supplement', NULL, 'As a responsible pet owner, you must ensure that your beloved furry friend is healthy and strong. Unfortunately, in India, it is common for pets to suffer from a lack of calcium and phosphorus.', 'uploads/slider/1721020443.jpg', 'uploads/slider/1721020443.jpg', 'uploads/slider/1721020443.jpg', 'https://remediovet.com/product/calcium-syrup-for-dogs-and-cats-yummy-chicken-flavour/', 'Shop Now', 0, '2024-07-15 09:12:25', '2024-07-15 09:14:03'),
(10, 'The ultimate dog leash and collar set for medium & large breeds', NULL, 'https://remedio.evgigsoft.com/product/the-ultimate-dog-leash-and-collar-set', 'uploads/slider/1721020612.jpg', 'uploads/slider/1721020612.jpg', 'uploads/slider/1721020612.jpg', 'https://remedio.evgigsoft.com/product/the-ultimate-dog-leash-and-collar-set', NULL, 0, '2024-07-15 09:16:52', '2024-07-15 09:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `specialoffers`
--

CREATE TABLE `specialoffers` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `product` int(11) NOT NULL,
  `offer_type` enum('dog','cat') DEFAULT 'dog',
  `featured_image` varchar(300) NOT NULL,
  `product_url` varchar(200) DEFAULT NULL,
  `time` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialoffers`
--

INSERT INTO `specialoffers` (`id`, `title`, `product`, `offer_type`, `featured_image`, `product_url`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Special Offer 1', 14, 'dog', 'uploads/specialoffers/1717582149.jpg', NULL, '60', 1, '2024-04-22 07:41:55', '2024-07-01 07:22:11'),
(3, 'Special Offer 2', 56, 'dog', 'uploads/specialoffers/1717582185.png', 'https://remedio.evgigsoft.com/shop/dog/calcium-syrup-for-dogs-cats-yummy-chicken-flavour', '120', 1, '2024-04-22 07:41:55', '2024-07-01 07:22:17'),
(6, 'Special Offer 3', 21, 'dog', 'uploads/specialoffers/1719471539.jpg', NULL, '240', 1, '2024-06-14 06:51:50', '2024-07-01 07:22:24'),
(7, 'Test', 15, 'cat', 'uploads/specialoffers/1720068790.png', NULL, '10', 1, '2024-07-04 04:53:10', '2024-07-04 07:16:57'),
(8, 'gdfgfdgfdg', 20, 'cat', 'uploads/specialoffers/1720077451.jfif', NULL, '23', 0, '2024-07-04 07:17:31', '2024-07-04 07:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'ANDHRA PRADESH', 105),
(2, 'ASSAM', 105),
(3, 'ARUNACHAL PRADESH', 105),
(4, 'BIHAR', 105),
(5, 'GUJRAT', 105),
(6, 'HARYANA', 105),
(7, 'HIMACHAL PRADESH', 105),
(8, 'JAMMU & KASHMIR', 105),
(9, 'KARNATAKA', 105),
(10, 'KERALA', 105),
(11, 'MADHYA PRADESH', 105),
(12, 'MAHARASHTRA', 105),
(13, 'MANIPUR', 105),
(14, 'MEGHALAYA', 105),
(15, 'MIZORAM', 105),
(16, 'NAGALAND', 105),
(17, 'ORISSA', 105),
(18, 'PUNJAB', 105),
(19, 'RAJASTHAN', 105),
(20, 'SIKKIM', 105),
(21, 'TAMIL NADU', 105),
(22, 'TRIPURA', 105),
(23, 'UTTAR PRADESH', 105),
(24, 'WEST BENGAL', 105),
(25, 'DELHI', 105),
(26, 'GOA', 105),
(27, 'PONDICHERY', 105),
(28, 'LAKSHDWEEP', 105),
(29, 'DAMAN & DIU', 105),
(30, 'DADRA & NAGAR', 105),
(31, 'CHANDIGARH', 105),
(32, 'ANDAMAN & NICOBAR', 105),
(33, 'UTTARANCHAL', 105),
(34, 'JHARKHAND', 105),
(35, 'CHATTISGARH', 105);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_form`
--

CREATE TABLE `subscribe_form` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribe_form`
--

INSERT INTO `subscribe_form` (`id`, `phone_number`, `created_at`, `updated_at`) VALUES
(40, '8458521585', '2024-06-03 07:57:12', '2024-06-03 07:57:12'),
(41, '8756478945', '2024-06-18 12:24:44', '2024-06-18 12:24:44'),
(42, '9876543210', '2024-06-18 12:26:07', '2024-06-18 12:26:07'),
(43, '94367856780', '2024-06-18 12:26:26', '2024-06-18 12:26:26'),
(44, '8059876544', '2024-07-01 05:56:07', '2024-07-01 05:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=user, 1=admin, 2=Editor, 3=Viewer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `google_id`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`, `role_as`) VALUES
(1, 'Admin', '', 'admin@yopmail.com', NULL, '$2y$10$evG9Pz6jJkF2P/yOstKEuuURNfXCnIuqM4bYYovWimrOMgbEnDkJC', NULL, 'tkOhqH64BWSVZpvANn3KwmaU5k6Qtmpj4SSlviA26fgW7q7LhutoaODRK761', '2024-02-08 07:03:12', '2024-02-08 07:03:12', 1),
(2, 'Peter Thomas', '', 'peter@yopmail.com', NULL, '$2y$10$J5NXwtH1CCE3Z7fKNVL8D.Q9IAwSJbmjkHfmQx..zpUQB17EBZ35K', '745345685', 'rb0vaogTkaPTkeecPLw5UPoXOGeKAKqn5UVaOxL5vMEHz9IvAQEWyhEsIApB', '2024-02-15 00:08:01', '2024-04-19 10:55:08', 0),
(3, 'Mat', '', 'mat@yopmail.com', NULL, '$2y$10$lhDVexRmT.ga2ZaBsC2boeFL3lsHWT/BRx4blwLwuCOcSMtxPhuhG', NULL, 'VResUukvWHQNMVxxG5s36c9rrLork7XxZrWH47wnsYrJBwRNToBhTwYbS6X1', '2024-04-04 14:39:03', '2024-04-04 14:39:03', 0),
(4, 'Smith', '', 'smith4543@yopmail.com', NULL, '$2y$10$/gS2F6aD4kU6OcdWvum/decA0/.Ez3HTb.nNPkHP5nhqjzcu1aU3q', NULL, NULL, '2024-04-08 10:02:36', '2024-04-08 10:02:36', 0),
(6, 'Peter Thomas', '', 'rinkusharma4543@gmail.com', NULL, '$2y$10$hgZrbf7/O5bx445XuJ4o3OTbM4rcDbKuUKJHNsigEAGX3xv16KSES', NULL, NULL, '2024-04-19 10:28:46', '2024-04-19 10:28:46', 0),
(7, 'jaskaran', '', 'jaskaran.gigsoft@gmail.com', NULL, '$2y$10$27N6xSgggRH14kNdweJ1De7uo7GTFBsoUZpm3Eq7Gi4NEpThtDoBO', NULL, NULL, '2024-05-06 09:04:52', '2024-05-06 09:04:52', 0),
(8, 'Micky', '', 'micky@yopmail.com', NULL, '$2y$10$TYv19UUY7dEViMO.LAIIw.x/fJ85TVe4YNJLBeGifde.qzcqgccX2', NULL, NULL, '2024-05-07 11:05:15', '2024-05-07 11:05:15', 0),
(9, 'mat', '', 'mat4345@yopmail.com', NULL, '$2y$10$0o94BfkMrn5VOryuvgnYW.TeFBxz/q9XgpDPP2JLzljgu4J2pTpE6', NULL, NULL, '2024-05-07 11:55:56', '2024-05-07 11:55:56', 0),
(10, 'raj', '', 'dipen.garg@gmail.com', NULL, '$2y$10$eyCdXJZmIjBHCiqatm7mquGVVtWToQ53.DJRSNSx.w.81LvUtRye2', NULL, NULL, '2024-05-10 18:31:34', '2024-05-10 18:31:34', 0),
(11, 'Peter', '', 'guru4543@yopmail.com', NULL, '123456', '7453456814', NULL, '2024-05-14 08:28:25', '2024-05-14 08:28:25', 0),
(12, 'Peter', '', 'jacks4543@yopmail.com', NULL, '$2y$10$wbO3s9xqQ7y..R5G4OFS5OLhkj2xsjrWwenwBqF2ttsirBxQguF.u', '7453456812', NULL, '2024-05-14 09:40:59', '2024-05-14 09:40:59', 0),
(15, 'Rahul', NULL, 'gigsoftpro@gmail.com', NULL, '$2y$10$c3OSBUEsGkg/WuXwJHKD6eFa3oNXa.iWk6tqle9BMgrZM9cUj0XGW', '9988224462', NULL, '2024-05-28 16:34:36', '2024-05-28 16:34:36', 0),
(16, 'Ajay', NULL, 'ajaykumar.gigsoft@gmail.com', NULL, '$2y$10$q0yQ8oF4R8N5NfPL8TLkIeQSjMOKm3EawRbuF2xNIWHxTIriI1RJC', NULL, NULL, '2024-05-28 19:22:38', '2024-05-28 19:22:38', 0),
(17, 'Amit', NULL, 'amit@yopmail.com', NULL, '$2y$10$UCs0yvcMTTeaQBScugWmruGmrlo2AmRWzud5T5Hwyhmwr0DAyidMW', '8529856858', NULL, '2024-05-29 07:41:11', '2024-05-29 07:41:11', 0),
(18, 'Gigsoft', NULL, 'ravindergigsoftpro9@gmail.com', NULL, '$2y$10$L8/5d7gLAvr9qht3F6odVu6p0sKhR5yceGaLpQEXMzs8YWg9kXlJy', '0507400016', NULL, '2024-05-30 08:21:46', '2024-05-30 08:21:46', 0),
(19, 'testdesigner', '111989669359368658279', 'testdesigner25@gmail.com', NULL, '$2y$10$zSp9FfC8b95U/oKXMDDsW.EyV27C4d39hxM1oF.4EDO.lQNoYrEoK', NULL, NULL, '2024-06-04 16:13:26', '2024-06-04 16:13:26', 0),
(20, 'Rahul Dubey', NULL, 'Rahuldubey.nps@gmail.com', NULL, '$2y$10$EHVfO2wW8B9zXOc.AV7aCuCfUjLrKI2/GGltNPAwx2nvV3IvVyniW', NULL, NULL, '2024-06-18 14:54:27', '2024-06-18 14:54:27', 0),
(21, 'Ravinder Singh', NULL, 'test767778@gmail.com', NULL, '$2y$10$3c/QJoajIHs0q6JSW/Bxs.RP6IImXkVOd1jhholn9Gw9ES68w.Rua', NULL, NULL, '2024-06-18 15:16:48', '2024-06-18 15:16:48', 0),
(22, 'Ashok', NULL, 'ashok@yopmail.com', NULL, '$2y$10$G0YrSmlYyfJR5/0Ov6gwgep46pZmPhtw5p9f.QC8Wb1KhysAO9ggS', NULL, NULL, '2024-06-18 16:32:01', '2024-06-18 16:32:01', 0),
(23, 'ashu', NULL, 'ashu@gmail.com', NULL, '$2y$10$KPZU2ttz8MYyezoNefhfzuTU9iD9s4F3xT/qQcDDgcHXZ1CQCU.cK', NULL, NULL, '2024-07-01 08:31:02', '2024-07-01 08:31:02', 0),
(24, 'Editor', NULL, 'editor@yopmail.com', NULL, '$2y$10$evG9Pz6jJkF2P/yOstKEuuURNfXCnIuqM4bYYovWimrOMgbEnDkJC', NULL, NULL, '2024-07-09 11:01:46', '2024-07-09 11:05:22', 2),
(25, 'Viewer', NULL, 'viewer@yopmail.com', NULL, '$2y$10$2tOjWk5H81n04b/8yEsIue8GDCsDUmZg9M06avo4jtC7hvRX477w6', NULL, NULL, '2024-07-09 13:42:04', '2024-07-09 13:42:04', 3),
(26, 'Ashok', NULL, 'checkout@yopmail.com', NULL, '$2y$10$CNufMLGYpDHdhzDUAlCAce9elWuTOvNlw70K.Yrjp9Hr1iy17KoH.', '9856421305', NULL, '2024-07-19 10:23:27', '2024-07-19 10:23:27', 0),
(27, 'ashish', NULL, 'unifi@yopmail.com', NULL, '$2y$10$J4K/DeB9cATbQlkClDxBRetnDFZLFi1GkkKyx0l7AqHgq0MrvxuDi', '9898998983', NULL, '2024-07-30 09:11:44', '2024-07-30 09:11:44', 0),
(28, 'Ashish', NULL, 'ashish@yopmail.com', NULL, '$2y$10$/ts5.XYYoPsGHQHWZAirkeeyVJ1cVEY749BH6I22PUhyc7/uv4TZq', '1234567890', NULL, '2024-07-30 11:26:18', '2024-07-30 11:26:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `apartment` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `address_type`, `full_name`, `email`, `phone`, `apartment`, `city`, `state`, `country`, `pin_code`, `created_at`, `updated_at`) VALUES
(4, 2, 'billing', 'Peter', 'ajaykumar.gigsoft@gmail.com', '5222585821', '19 Hodgson St Clifton Beach Tasmania', 'Tasmania', 'California', 'India', '95833', '2024-04-08 15:49:55', '2024-04-10 13:54:58'),
(9, 2, 'shipping', 'Peter Thomas', 'mat345@yopmail.com', '7453456810', '3b2 Market', 'Mohali', 'Punjab', 'India', NULL, '2024-04-10 13:31:56', '2024-05-07 13:46:23'),
(12, 2, 'shipping', 'job seeker', 'amana@yopmail.com', '0204449212', 'David Kayanda Road', 'Kizingo', 'Chhattisgarh', 'Kenya', NULL, '2024-05-14 15:19:12', '2024-05-14 15:19:12'),
(13, 18, 'billing', 'Gigsoft Pro', 'ravindergigsoftpro9@gmail.com', '0507400016', 'E253, Industrial Area', 'Mohali', 'Punjab', 'India', NULL, '2024-05-30 08:43:58', '2024-05-30 08:43:58'),
(14, 22, 'billing', 'Ashok', 'ashok@yopmail.com', '9856421305', '100', 'Chandigarh', 'Punjab', 'India', NULL, '2024-06-19 08:46:46', '2024-06-19 08:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(21, '1', 25, '2024-05-10 14:33:28', '2024-05-10 14:33:28'),
(24, '6', 15, '2024-05-16 09:10:01', '2024-05-16 09:10:01'),
(56, '2', 28, '2024-05-24 08:42:54', '2024-05-24 08:42:54'),
(57, '2', 64, '2024-05-28 16:53:31', '2024-05-28 16:53:31'),
(58, '1', 64, '2024-05-28 16:53:55', '2024-05-28 16:53:55'),
(61, '15', 64, '2024-05-30 09:42:04', '2024-05-30 09:42:04'),
(62, '2', 62, '2024-05-30 11:31:06', '2024-05-30 11:31:06'),
(63, '2', 14, '2024-06-01 16:18:33', '2024-06-01 16:18:33'),
(65, '1', 28, '2024-07-01 14:19:05', '2024-07-01 14:19:05'),
(73, '1', 46, '2024-07-10 13:44:36', '2024-07-10 13:44:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variation_id` (`product_variation_id`);

--
-- Indexes for table `cart_coupons`
--
ALTER TABLE `cart_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactuss`
--
ALTER TABLE `contactuss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_management`
--
ALTER TABLE `content_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directories`
--
ALTER TABLE `directories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_hours`
--
ALTER TABLE `directory_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate_forms`
--
ALTER TABLE `donate_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqitems`
--
ALTER TABLE `faqitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_reviews`
--
ALTER TABLE `google_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `GuestCart`
--
ALTER TABLE `GuestCart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quantity` (`quantity`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `updated_at` (`updated_at`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `product_variation_id` (`product_variation_id`);

--
-- Indexes for table `guest_cart_coupon`
--
ALTER TABLE `guest_cart_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variation_id` (`product_variation_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pet_flight`
--
ALTER TABLE `pet_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_flight_forms`
--
ALTER TABLE `pet_flight_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_attributes_values`
--
ALTER TABLE `product_attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cat_mapings`
--
ALTER TABLE `product_cat_mapings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variation_values`
--
ALTER TABLE `product_variation_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_id` (`variation_id`);

--
-- Indexes for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `relocate_quote_forms`
--
ALTER TABLE `relocate_quote_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialoffers`
--
ALTER TABLE `specialoffers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe_form`
--
ALTER TABLE `subscribe_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `cart_coupons`
--
ALTER TABLE `cart_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactuss`
--
ALTER TABLE `contactuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `content_management`
--
ALTER TABLE `content_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `directories`
--
ALTER TABLE `directories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `directory_hours`
--
ALTER TABLE `directory_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donate_forms`
--
ALTER TABLE `donate_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqitems`
--
ALTER TABLE `faqitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `google_reviews`
--
ALTER TABLE `google_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `GuestCart`
--
ALTER TABLE `GuestCart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `guest_cart_coupon`
--
ALTER TABLE `guest_cart_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_flight`
--
ALTER TABLE `pet_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pet_flight_forms`
--
ALTER TABLE `pet_flight_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_addons`
--
ALTER TABLE `product_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_attributes_values`
--
ALTER TABLE `product_attributes_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `product_cat_mapings`
--
ALTER TABLE `product_cat_mapings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_faqs`
--
ALTER TABLE `product_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `product_variation_values`
--
ALTER TABLE `product_variation_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249929;

--
-- AUTO_INCREMENT for table `relocate_quote_forms`
--
ALTER TABLE `relocate_quote_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `specialoffers`
--
ALTER TABLE `specialoffers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscribe_form`
--
ALTER TABLE `subscribe_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`);

--
-- Constraints for table `cart_coupons`
--
ALTER TABLE `cart_coupons`
  ADD CONSTRAINT `cart_coupons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `GuestCart`
--
ALTER TABLE `GuestCart`
  ADD CONSTRAINT `GuestCart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `GuestCart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `GuestCart_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `GuestCart_ibfk_4` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD CONSTRAINT `product_addons_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_faqs`
--
ALTER TABLE `product_faqs`
  ADD CONSTRAINT `product_faqs_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
