<nav class="main-navigation">
    <ul class="main-navigation__list">
        <?php foreach ($projects as $project): ?>
            <li class="main-navigation__list-item">
                <a class="main-navigation__list-item-link" href="#"><?= htmlspecialchars($project[name]); ?></a>
                <span class="main-navigation__list-item-count"><?=$project[count]; ?></span>
            </li>
        <?php endforeach; ?>
    </ul>
</nav>
