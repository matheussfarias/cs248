import matplotlib.pyplot as plt

energy = [1, 9, 10, 31, 37, 50, 6400]

matheus_blue = '#0028b9ff'
fig, ax = plt.subplots()
ax.set_axisbelow(True)
ax.grid(color='gray', linestyle='dashed')
ax.barh(['a','b','c','d','e','f','g'], width=energy, color = matheus_blue, edgecolor='black', linewidth=2, log=True)
ax.invert_yaxis()  # labels read top-to-bottom
ax.set_title('Relative Energy Cost')
plt.gca().axes.get_yaxis().set_visible(False)
plt.savefig('images/pdf/figure1.pdf')
plt.savefig('images/png/figure1.png', dpi=1000)