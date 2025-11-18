// Mirror Side R to create Side L with 6 holes
// This mirrors the design so the flaps go in the opposite direction

// Import the right side STL
module side_r() {
    import("/mnt/user-data/uploads/side_R.stl");
}

// Mirror along Y-axis to reverse the flap direction (left-right mirror)
mirror([0, 1, 0]) {
    side_r();
}
