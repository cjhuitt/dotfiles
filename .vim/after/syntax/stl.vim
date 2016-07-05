" Vim syntax file
" Language: C++ stl extension (for version 2.6.0)
" Maintainer: Caleb Huitt
" Last Change: 2005-06-03

syn keyword stlFunction distance advance for_each find find_if adjacent_find 
syn keyword stlFunction find_first_of count count_if mismatch equal search 
syn keyword stlFunction search_n find_end copy copy_n copy_backward swap 
syn keyword stlFunction iter_swap swap_ranges transform replace replace_if 
syn keyword stlFunction replace_copy replace_copy_if fill fill_n generate 
syn keyword stlFunction generate_n remove remove_if remove_copy remove_copy_if 
syn keyword stlFunction unique unique_copy reverse reverse_copy rotate 
syn keyword stlFunction rotate_copy random_shuffle random_sample random_sample_n 
syn keyword stlFunction partition stable_partition sort stable_sort partial_sort 
syn keyword stlFunction partial_sort_copy is_sorted nth_element lower_bound 
syn keyword stlFunction upper_bound equal_range binary_search merge inplace_merge 
syn keyword stlFunction includes set_union set_intersection set_difference 
syn keyword stlFunction set_symmetric_difference push_heap pop_heap make_heap 
syn keyword stlFunction sort_heap is_heap min max min_element max_element 
syn keyword stlFunction lexicographical_compare lexicographical_compare_3way 
syn keyword stlFunction next_permutation prev_permutation iota accumulate 
syn keyword stlFunction inner_produce partial_sum adjacent_difference power
syn keyword stlFunction begin end make_shared make_unique move
"syn keyword stlTypedef 
"syn keyword stlConstant 
"syn keyword stlStruct 
syn keyword stlClass vector deque list slist bit_vector set map multiset multimap 
syn keyword stlClass hash_set hash_map hash_multiset hash_multimap hash string 
syn keyword stlClass basic_string rope stack queue priority_queue iterator 
syn keyword stlClass const_iterator reverse_iterator auto_ptr
syn keyword stlClass shared_ptr weak_ptr unique_ptr
"syn keyword stlMacro 
"syn keyword stlEnum 
"syn keyword stlUserFunction 
"syn keyword stlDefine 
"syn keyword stlNamespace

" Default highlighting
if version >= 508 || !exists("did_stl_syntax_inits")
  if version < 508
    let did_stl_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink stlFunction Function
"  HiLink stlTypedef Type
"  HiLink stlConstant Constant
"  HiLink stlStruct Type
  HiLink stlClass Class
"  HiLink stlUnion Type
"  HiLink stlMacro Macro
"  HiLink stlEnum Type
"  HiLink stlUserFunction Type
"  HiLink stlDefine Constant
"  HiLink stlNamespace Namespace
  delcommand HiLink
endif

