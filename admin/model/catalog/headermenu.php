<?php
class ModelCatalogHeadermenu extends Model{

    public function addMenu($data) {
        $this->db->query("INSERT INTO " . DB_PREFIX . "headermenu SET `name` = '". $this->db->escape($data['name']) ."', link = '" .  $this->db->escape($data['link']) . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "'");
    }

    public function editMenu($menu_id, $data) {
        $this->db->query("UPDATE " . DB_PREFIX . "headermenu SET name = '" .  $this->db->escape($data['name']) . "', link = '" .  $this->db->escape($data['link']) . "', sort_order = '" . (int)$data['sort_order'] . "', status = '" . (int)$data['status'] . "' WHERE headermenu_id = '" . (int)$menu_id . "'");
    }

    public function getMenus($data = array()) {
        $sql = "SELECT * FROM " . DB_PREFIX . "headermenu";

        $sort_data = array(
            'name',
            'sort_order',
            'status'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
            $sql .= " ORDER BY " . $data['sort'];
        } else {
            $sql .= " ORDER BY name";
        }

        if (isset($data['order']) && ($data['order'] == 'DESC')) {
            $sql .= " DESC";
        } else {
            $sql .= " ASC";
        }

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }

            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }

        $query = $this->db->query($sql);

        return $query->rows;
    }

    public function deleteMenu($menu_id) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "headermenu WHERE headermenu_id = '" . (int)$menu_id . "'");
    }

    public function getMenu($menu_id) {
        $query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "headermenu WHERE headermenu_id = '" . (int)$menu_id . "'");
        return $query->row;
    }

    public function getTotalMenus() {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "headermenu");

        return $query->row['total'];
    }
}