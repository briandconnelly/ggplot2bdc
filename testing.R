ggplot(mtcars, aes(x=hp, y=mpg, color=gear, shape=factor(cyl))) +
    geom_point() +
    facet_grid(cyl ~ .) +
    labs(x='My X Title', y='My Y Title', title='My Plot Title') +
    theme_bdc_grey(grid.x=FALSE, grid.y=TRUE) +
    coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
ggsave('test-grey.pdf')

ggplot(mtcars, aes(x=hp, y=mpg, color=gear, shape=factor(cyl))) +
    geom_point() +
    #facet_grid(. ~ cyl) +
    labs(x='My X Title', y='My Y Title', title='My Plot Title') +
    theme_bdc_simple(grid.x=FALSE, grid.y=FALSE) +
    coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
ggsave('test-simple.pdf')

ggplot(mtcars, aes(x=hp, y=mpg, color=gear, shape=factor(cyl))) +
    geom_point() +
    facet_grid(cyl ~ .) +
    labs(x='My X Title', y='My Y Title', title='My Plot Title') +
    theme_bdc_black(grid.x=TRUE, grid.y=FALSE) +
    coord_golden(xvals=mtcars$hp, yvals=mtcars$mpg)
ggsave('test-black.pdf')
