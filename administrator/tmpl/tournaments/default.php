<?php

defined('_JEXEC') or die;
?>

<h1>Turnyrai</h1>

<table class="table table-striped">

    <thead>

        <tr>
            <th>ID</th>
            <th>Pavadinimas</th>
            <th>Data</th>
            <th>Vieta</th>
            <th>Statusas</th>
        </tr>

    </thead>

    <tbody>

    <?php if (!empty($this->items)) : ?>

        <?php foreach ($this->items as $item) : ?>

            <tr>

                <td><?= $item->id; ?></td>

                <td><?= htmlspecialchars($item->title); ?></td>

                <td><?= $item->start_date; ?></td>

                <td><?= htmlspecialchars($item->location); ?></td>

                <td>

                    <?= $item->status ? 'Aktyvus' : 'Neaktyvus'; ?>

                </td>

            </tr>

        <?php endforeach; ?>

    <?php endif; ?>

    </tbody>

</table>