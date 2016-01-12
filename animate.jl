#ENV["PYTHON"] = "/home/ohm/anaconda2/python"
using PyCall
using PyPlot
@pyimport matplotlib.animation as anim# First set up the figure, the axis, and the plot element we want to animate
f(x,y) = sin(x) .+ cos(y)
fig = figure()
ims = []
nx = 120
ny = 100
x = repmat(linspace(0, 2pi, nx), 1, ny)
y = repmat(linspace(0, 2pi, ny)', nx, 1)
@show size(x) size(y)
for i in 1:20
    x += pi ./ 15
    y += pi ./ 20
    im = imshow(f(x, y); cmap="viridis")
    push!(ims, PyCall.PyObject[im])
end

ani = anim.ArtistAnimation(fig, ims, interval=50, blit=true, repeat_delay=1000)
ani[:save]("ani.mp4", extra_args=["-vcodec", "libx264", "-pix_fmt", "yuv420p"]);

# # call our new function to display the animation
display("text/html", string("""<video autoplay controls><source src="data:video/x-m4v;base64,""",
        base64encode(open(readbytes,"ani.mp4")),"""" type="video/mp4"></video>"""));
