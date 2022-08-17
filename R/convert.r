#' @export
id2id <- function(ids, queryCol, subjectCol) {

    query <- as.character(hgnc[[queryCol]])
    subject <- as.character(hgnc[[subjectCol]])

    out <- subject[match(ids, query)]

    return(setNames(out, ids)) 

}

#' @export
ensembl2symbol <- function(ids) {

    queryCol <- match("ensembl_gene_id", names(hgnc))
    subjectCol <- match("symbol", names(hgnc))

    return(id2id(ids, queryCol, subjectCol))

}

#' @export
ensembl2entrez <- function(ids) {

    queryCol <- match("ensembl_gene_id", names(hgnc))
    subjectCol <- match("entrez_id", names(hgnc))

    return(id2id(ids, queryCol, subjectCol))

}

#' @export
entrez2ensembl <- function(ids) {

    ids <- as.character(ids)
    queryCol <- match("entrez_id", names(hgnc))
    subjectCol <- match("ensembl_gene_id", names(hgnc))

    return(id2id(ids, queryCol, subjectCol))

}
