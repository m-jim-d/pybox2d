pybox2d
-------
2D Game Physics for Python

https://github.com/m-jim-d/pybox2d

How to get it
-------------

First, download and install Miniconda:
https://www.anaconda.com/download/success#miniconda

To create a new conda environment with pybox2d, run the following from an Anaconda prompt:

```bash
$ conda create -n pybox2d -c conda-forge python=3.11
$ conda activate pybox2d
# Windows example (Python 3.11):
$ pip install https://github.com/m-jim-d/pybox2d/releases/download/v2.3.13/box2d-2.3.13-cp311-cp311-win_amd64.whl
# For other platforms/versions, see: https://github.com/m-jim-d/pybox2d/releases
$ pip install pygame-ce
```

Recent builds should be available for Windows, Linux, and MacOS, with Python
3.6, 3.8, 3.9, 3.10, and 3.11.

What is it?
-----------
pybox2d is a 2D physics library for your games and simple simulations. It's
based on the Box2D library, written in C++. It supports several shape types
(circle, polygon, thin line segments), and quite a few joint types (revolute,
prismatic, wheel, etc.).

This version of pybox2d originates from
[pybox2d/pybox2d](https://github.com/pybox2d/pybox2d) and most recently a fork
from [Car-Role/pybox2d-test](https://github.com/Car-Role/pybox2d-test). 

This modified version allows `b2Globals.b2_velocityThreshold` to be adjusted at
runtime (see [issue #75](https://github.com/pybox2d/pybox2d/issues/75)). Setting
this to zero is useful for keeping low-velocity objects from sticking to walls.
This is most apparent in applications like pool games where there are no gravitational effects.

An example of how to implement this threshold feature in Python can be found in the
[pet-code](https://github.com/m-jim-d/pet-code) repository (search on
"threshold" in A16c_2D_B2D_serverN.py, A15_environment.py, and
A15_air_table.py).

This version of pybox2d also includes fixes to the contact-normal rendering in the testbed framework (see [issue #57](https://github.com/pybox2d/pybox2d/issues/57)). The original code had three bugs: normals were drawn at incorrect angles due to a screen-coordinate Y-flip issue, some normals appeared at the origin instead of at actual contact points, and vector arithmetic failed due to a type mismatch. These fixes ensure contact normals display correctly when debugging physics interactions.


Getting Started
---------------
Check out the testbed [examples](https://github.com/m-jim-d/pybox2d/tree/master/library/Box2D/examples) to see what pybox2d can do. Then take a look at the [getting started manual](https://github.com/pybox2d/pybox2d/wiki/manual) located on the pybox2d wiki.

Bugs
----
Please submit any bugs that you find to the 
[issue tracker](https://github.com/m-jim-d/pybox2d/issues).

Testbed examples
----------------

You can browse the testbed examples on GitHub
[here](https://github.com/m-jim-d/pybox2d/tree/master/library/Box2D/examples)

1. Install a backend such as pygame or pyglet to use as a renderer.

    | Backend        | Install                                                       | Homepage                             |
    | -------------  | ------------------------------------------------------------- | ------------------------------------ |
    | pygame         | `pip install pygame-ce`                                       | http://pygame.org                    |  
    | pyqt5          | `pip install pyqt5`                                           | https://www.riverbankcomputing.com/  |
    | pyglet         | `pip install pyglet` (or use conda-forge)                     | http://pyglet.org                    |
    | opencv         | `pip install opencv-python`                                   | http://opencv.org                    |

2. Run your first example with the pygame backend:
    ```bash
    # As a start, try the web example with the pygame backend:
    $ python -m Box2D.examples.web --backend=pygame
    ```

3. Take a look at the other examples, setting the backend as appropriate:
    ```bash
    $ python -m Box2D.examples.apply_force
    $ python -m Box2D.examples.body_types
    $ python -m Box2D.examples.box_cutter
    $ python -m Box2D.examples.breakable
    $ python -m Box2D.examples.bridge
    $ python -m Box2D.examples.bullet
    $ python -m Box2D.examples.cantilever
    $ python -m Box2D.examples.car
    $ python -m Box2D.examples.chain
    $ python -m Box2D.examples.character_collision
    $ python -m Box2D.examples.cloth
    $ python -m Box2D.examples.collision_filtering
    $ python -m Box2D.examples.collision_processing
    $ python -m Box2D.examples.confined
    $ python -m Box2D.examples.convex_hull
    $ python -m Box2D.examples.conveyor_belt
    $ python -m Box2D.examples.distance
    $ python -m Box2D.examples.edge_shapes
    $ python -m Box2D.examples.edge_test
    $ python -m Box2D.examples.gish_tribute
    $ python -m Box2D.examples.hello
    $ python -m Box2D.examples.liquid
    $ python -m Box2D.examples.mobile
    $ python -m Box2D.examples.motor_joint
    $ python -m Box2D.examples.one_sided_platform
    $ python -m Box2D.examples.pinball
    $ python -m Box2D.examples.pulley
    $ python -m Box2D.examples.pyramid
    $ python -m Box2D.examples.raycast
    $ python -m Box2D.examples.restitution
    $ python -m Box2D.examples.rope
    $ python -m Box2D.examples.settings
    $ python -m Box2D.examples.theo_jansen
    $ python -m Box2D.examples.tiles
    $ python -m Box2D.examples.time_of_impact
    $ python -m Box2D.examples.top_down_car
    $ python -m Box2D.examples.tumbler
    $ python -m Box2D.examples.vertical_stack
    $ python -m Box2D.examples.web
    ```

These framework examples are included in the distribution, but they are also
written in a way such that you can copy the `examples` directly and modify them
yourself.

For example, the following would be possible:

```bash
$ git clone https://github.com/m-jim-d/pybox2d pybox2d
$ mkdir my_new_examples
$ cp -R pybox2d/library/Box2D/examples/* my_new_examples
$ cd my_new_examples
$ python web.py --backend=pygame
```

Simple examples
---------------

There are also some simple examples that are not weighed down by testbed architecture.
You can browse them on GitHub
[here](https://github.com/m-jim-d/pybox2d/tree/master/library/Box2D/examples/simple)

These can also be run directly from your pybox2d installation:

```bash
$ python -m Box2D.examples.simple.simple_01
$ python -m Box2D.examples.simple.simple_02
```

A similar opencv-based example is here:
```bash
$ python -m Box2D.examples.simple_cv
```
