-- 提取链接
-- main.lua  

-- Create By TouchSpriteStudio on 22:54:13   
-- Copyright © TouchSpriteStudio . All rights reserved.
	
	
	
	
	
	require('tsp')
	
	
	
	urlarr = {{"https://v.douyin.com/XnbKXx/"},
{"https://v.douyin.com/XnVh97/"},
{"https://v.douyin.com/Xn4Mqo/"},
{"https://v.douyin.com/Xn4d2W/"},
{"https://v.douyin.com/XnKpSt/"},
{"https://v.douyin.com/Xn31uQ/"},
{"https://v.douyin.com/XWfFDV/"},
{"https://v.douyin.com/XWjpUC/"},
{"https://v.douyin.com/XWddnH/"},
{"https://v.douyin.com/X7Ny9W/"},
{"https://v.douyin.com/XWkMJE/"},
{"https://v.douyin.com/Xnc5Cj/"},
{"https://v.douyin.com/XWP7Rg/"},
{"https://v.douyin.com/Xn4xgy/"},
{"https://v.douyin.com/XnEqEo/"},
{"https://v.douyin.com/Xnqy4f/"},
{"https://v.douyin.com/XWk24a/"},
{"https://v.douyin.com/XWSJ2R/"},
{"https://v.douyin.com/XWaGsG/"},
{"https://v.douyin.com/XW6fL1/"},
{"https://v.douyin.com/Xn3TRo/"},
{"https://v.douyin.com/X7UBnQ/"},
{"https://v.douyin.com/X7JYyu/"},
{"https://v.douyin.com/X769p7/"},
{"https://v.douyin.com/X7RubL/"},
{"https://v.douyin.com/X7dSCa/"},
{"https://v.douyin.com/X7Y5rr/"},
{"https://v.douyin.com/X7Rf6x/"},
{"https://v.douyin.com/X78LWR/"},
{"https://v.douyin.com/X7Fjwe/"},
{"https://v.douyin.com/X7Ba31/"},
{"https://v.douyin.com/X7jHor/"},
{"https://v.douyin.com/X7yMr4/"},
{"https://v.douyin.com/X78Msg/"},
{"https://v.douyin.com/X7Fq2Y/"},
{"https://v.douyin.com/X7Yen4/"},
{"https://v.douyin.com/X72SFp/"},
{"https://v.douyin.com/X7UQPt/"},
{"https://v.douyin.com/XWoE2D/"},
{"https://v.douyin.com/XWoMMf/"},
{"https://v.douyin.com/X72N6U/"},
{"https://v.douyin.com/X7RJm9/"},
{"https://v.douyin.com/X7AMNH/"},
{"https://v.douyin.com/X7d4TG/"},
{"https://v.douyin.com/X76oo7/"},
{"https://v.douyin.com/XWEQTF/"},
{"https://v.douyin.com/X7DxC1/"},
{"https://v.douyin.com/X7FLw8/"},
{"https://v.douyin.com/X7Jyfa/"},
{"https://v.douyin.com/XWoqyp/"},
{"https://v.douyin.com/X7Nhjt/"},
{"https://v.douyin.com/XWoDaU/"},
{"https://v.douyin.com/X71LKL/"},
{"https://v.douyin.com/X7MWoL/"},
{"https://v.douyin.com/X7h2Jc/"},
{"https://v.douyin.com/X7FR4f/"},
{"https://v.douyin.com/X7rswS/"},
{"https://v.douyin.com/X7FaGQ/"},
{"https://v.douyin.com/X7SRuD/"},
{"https://v.douyin.com/X7AtWW/"},
{"https://v.douyin.com/X7NgV6/"},
{"https://v.douyin.com/X7UBqA/"},
{"https://v.douyin.com/X7Fgem/"},
{"https://v.douyin.com/X7Ff3V/"},
{"https://v.douyin.com/X7DeQ2/"},
{"https://v.douyin.com/X7YS1q/"},
{"https://v.douyin.com/X78wcX/"},
{"https://v.douyin.com/XWEJ3r/"},
{"https://v.douyin.com/X7Rkxd/"},
{"https://v.douyin.com/X7e8eN/"},
{"https://v.douyin.com/X7Uprq/"},
{"https://v.douyin.com/X78KXA/"},
{"https://v.douyin.com/X7JcAn/"},
{"https://v.douyin.com/X7Loqg/"},
{"https://v.douyin.com/X7j68y/"},
{"https://v.douyin.com/X7SoSb/"},
{"https://v.douyin.com/X7NkSN/"},
{"https://v.douyin.com/X78e8M/"},
{"https://v.douyin.com/X7Ns7L/"},
{"https://v.douyin.com/X7ULGJ/"},
{"https://v.douyin.com/X7dRhQ/"},
{"https://v.douyin.com/X7AnM6/"},
{"https://v.douyin.com/X7DfVt/"},
{"https://v.douyin.com/X7Drpd/"},
{"https://v.douyin.com/X722FG/"},
{"https://v.douyin.com/X7hBdd/"},
{"https://v.douyin.com/X7MwaL/"},
{"https://v.douyin.com/X7DJKY/"},
{"https://v.douyin.com/X7DuWg/"},
{"https://v.douyin.com/X7yM36/"},
{"https://v.douyin.com/X7Fe1p/"},
{"https://v.douyin.com/X7BpN8/"},
{"https://v.douyin.com/X76u5o/"},
{"https://v.douyin.com/X71a7L/"},
{"https://v.douyin.com/X7NXHQ/"},
{"https://v.douyin.com/X7eGTD/"},
{"https://v.douyin.com/X7YfQ6/"},
{"https://v.douyin.com/X7LFyo/"},
{"https://v.douyin.com/X7yFF1/"},
{"https://v.douyin.com/X7JqEN/"},
{"https://v.douyin.com/XntDv5/"},
{"https://v.douyin.com/Xn3Usp/"},
{"https://v.douyin.com/XnGxYv/"},
{"https://v.douyin.com/XnQNdf/"},
{"https://v.douyin.com/XnCV1p/"},
{"https://v.douyin.com/XnK9sa/"},
{"https://v.douyin.com/XnVHGV/"},
{"https://v.douyin.com/Xnw6cT/"},
{"https://v.douyin.com/XnTrpv/"},
{"https://v.douyin.com/X8DBbY/"},
{"https://v.douyin.com/XnGEro/"},
{"https://v.douyin.com/XW16Qy/"},
{"https://v.douyin.com/XnsR8M/"},
{"https://v.douyin.com/XnsoHA/"},
{"https://v.douyin.com/XnWUUQ/"},
{"https://v.douyin.com/Xnbcmu/"},
{"https://v.douyin.com/XnQt6V/"},
{"https://v.douyin.com/Xnc79A/"},
{"https://v.douyin.com/Xn4aXy/"},
{"https://v.douyin.com/XWr4SV/"},
{"https://v.douyin.com/Xn7R82/"},
{"https://v.douyin.com/XnVu1j/"},
{"https://v.douyin.com/XnVXR5/"},
{"https://v.douyin.com/XnsPFD/"},
{"https://v.douyin.com/Xncfra/"},
{"https://v.douyin.com/XnoAAB/"},
{"https://v.douyin.com/XWJRNy/"},
{"https://v.douyin.com/XnbXM6/"},
{"https://v.douyin.com/Xn39oD/"},
{"https://v.douyin.com/XnwXvd/"},
{"https://v.douyin.com/XnTut6/"},
{"https://v.douyin.com/XnsPNt/"},
{"https://v.douyin.com/XnTuAK/"},
{"https://v.douyin.com/XncFJK/"},
{"https://v.douyin.com/Xntmcm/"},
{"https://v.douyin.com/XnEJkd/"},
{"https://v.douyin.com/XngwHK/"},
{"https://v.douyin.com/Xnwpkp/"},
{"https://v.douyin.com/Xnb7g2/"},
{"https://v.douyin.com/XnWCdS/"},
{"https://v.douyin.com/XWeQYV/"},
{"https://v.douyin.com/XW5cJE/"},
{"https://v.douyin.com/XWMqme/"},
{"https://v.douyin.com/XW2dBm/"},
{"https://v.douyin.com/XWjNpm/"},
{"https://v.douyin.com/XWNTvq/"},
{"https://v.douyin.com/XWL1PW/"},
{"https://v.douyin.com/XWf8oh/"},
{"https://v.douyin.com/XWrBJ8/"},
{"https://v.douyin.com/XWSGXq/"},
{"https://v.douyin.com/XWP38t/"},
{"https://v.douyin.com/XWdTcp/"},
{"https://v.douyin.com/XWeUkF/"},
{"https://v.douyin.com/XWjJTd/"},
{"https://v.douyin.com/XWh89C/"},
{"https://v.douyin.com/XWkUHt/"},
{"https://v.douyin.com/XWLBAv/"},
{"https://v.douyin.com/XWhQRP/"},
{"https://v.douyin.com/XWUhc8/"},
{"https://v.douyin.com/XWRRdP/"},
{"https://v.douyin.com/XWrYvm/"},
{"https://v.douyin.com/XWmSpb/"},
{"https://v.douyin.com/XWyqth/"},
{"https://v.douyin.com/XW2FjV/"},
{"https://v.douyin.com/XW2QwK/"},
{"https://v.douyin.com/XWFaEu/"},
{"https://v.douyin.com/XWSXvP/"},
{"https://v.douyin.com/XW88N9/"},
{"https://v.douyin.com/XW8Jmr/"},
{"https://v.douyin.com/XWfB3o/"},
{"https://v.douyin.com/XWPvkc/"},
{"https://v.douyin.com/XW2URQ/"},
{"https://v.douyin.com/XWjDHt/"},
{"https://v.douyin.com/XWYdDH/"},
{"https://v.douyin.com/XWLoqF/"},
{"https://v.douyin.com/XWPdG2/"},
{"https://v.douyin.com/XWUyFb/"},
{"https://v.douyin.com/XWeku5/"},
{"https://v.douyin.com/XWeqhm/"},
{"https://v.douyin.com/XWhvgr/"},
{"https://v.douyin.com/XWU7x3/"},
{"https://v.douyin.com/XnVutK/"},
{"https://v.douyin.com/XWPt88/"},
{"https://v.douyin.com/Xng3Vx/"},
{"https://v.douyin.com/XWBvUy/"},
{"https://v.douyin.com/XWdnpX/"},
{"https://v.douyin.com/XncgMw/"},
{"https://v.douyin.com/XnEora/"},
{"https://v.douyin.com/XntdLN/"},
{"https://v.douyin.com/X7LNuE/"},
{"https://v.douyin.com/XFeBCo/"},
{"https://v.douyin.com/XWYvcM/"},
{"https://v.douyin.com/XFda1M/"},
{"https://v.douyin.com/XnKNxE/"},
{"https://v.douyin.com/XWacUT/"},
{"https://v.douyin.com/XWRYTL/"},
{"https://v.douyin.com/XNwHRh/"},
{"https://v.douyin.com/XF2RoP/"},
{"https://v.douyin.com/XWyVGf/"},
{"https://v.douyin.com/XFdqrk/"},
}


nike ={}
nike.login = 'bcyzjkrstuuv9adelm57@vvccb.com'
nike.pwd = 'ZOOTqmebbf6293'

inputText(nike.pwd)










	
	
	
	
	