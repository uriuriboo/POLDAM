id=49

origin=${id}_flow_m_c_f_origin.dot
target=${id}_flow_m_c_f_target.dot
dotdir=/data/selog-2023-yamaoka/poldam_mcf
svgdir=/data/selog-2023-yamaoka/svg_tmp


dot -Tsvg $dotdir/$origin -o $svgdir/$origin.svg
dot -Tsvg $dotdir/$target -o $svgdir/$target.svg