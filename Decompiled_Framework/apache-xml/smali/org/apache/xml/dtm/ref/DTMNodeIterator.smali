.class public Lorg/apache/xml/dtm/ref/DTMNodeIterator;
.super Ljava/lang/Object;
.source "DTMNodeIterator.java"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

.field private valid:Z


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    :try_start_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/DTMIterator;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public detach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    return-void
.end method

.method public getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 2

    new-instance v0, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method public getWhatToShow()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getWhatToShow()I

    move-result v0

    return v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->valid:Z

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xml/dtm/DTMDOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMDOMException;-><init>(S)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->previousNode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;->dtm_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method
