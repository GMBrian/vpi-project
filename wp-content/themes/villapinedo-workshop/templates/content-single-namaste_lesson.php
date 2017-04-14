<?php while ( have_posts() ) : the_post(); ?>
	<article>
<!--		<header class="post-header">-->
<!--			<h1 class="entry-title">--><?php //the_title(); ?><!--</h1>-->
<!--			--><?php ////get_template_part( 'templates/entry-meta' ); ?>
<!--		</header>-->
		<div class="entry-content">

			<?php if( have_rows('opdrachten') ): ?>

				<h3>Opdrachten</h3>

				<ul class="lesson-assignments">

					<?php while( have_rows('opdrachten') ): the_row(); ?>

						<li>
							<?php $assignment = get_sub_field( 'opdracht' ); ?>
							<a class="btn" href="<?= get_the_permalink($assignment->ID); ?>"><?= $assignment->post_title; ?></a>
						</li>

					<?php endwhile; ?>

				</ul>

			<?php endif; ?>

			<?php the_content(); ?>

			<?php if( have_rows('blokken') ): ?>

				<div class="row lesson-container">

					<?php while( have_rows('blokken') ): the_row(); ?>

						<div class="col-md-4 col-sm-12 lesson-block-container">
							<div class="lesson-block">

							<h3><?= get_sub_field( 'titel' ); ?></h3>

							<?= get_sub_field( 'inhoud' ); ?>

							</div>

						</div>

					<?php endwhile; ?>

				</div>

			<?php endif; ?>

			<div class="clearfix"></div>


			<div class="page-links">
				<div class="course-link">
					<?= do_shortcode('[namaste-course-link]'); ?>
				</div>

				<div class="next-link">
					<?php

					$next = get_field('volgende_week');
					$next_id = $next->ID;

					?>
					<a href="<?= get_the_permalink($next_id); ?>"><?= $next->post_title; ?></a>
				</div>

			</div>

		</div>
		<footer>
			<?php /* wp_link_pages( [
				'before' => '<nav class="page-nav"><p>' . __( 'Pages:', 'sage' ),
				'after'  => '</p></nav>'
			] ); */ ?>
		</footer>
		<?php //comments_template( '/templates/comments.php' ); ?>
	</article>
<?php endwhile; ?>
