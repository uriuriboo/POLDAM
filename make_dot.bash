origin=2_flow_m_c_origin.dot
target=2_flow_m_c_target.dot
dotdir=/data/selog-2023-yamaoka/poldam_tmp
svgdir=/data/selog-2023-yamaoka/svg_tmp


dot -Tsvg $dotdir/$origin -o $svgdir/$origin.svg
dot -Tsvg $dotdir/$target -o $svgdir/$target.svg