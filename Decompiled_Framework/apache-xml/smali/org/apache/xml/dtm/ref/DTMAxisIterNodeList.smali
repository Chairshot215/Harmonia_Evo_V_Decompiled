.class public Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMAxisIterNodeList.java"


# instance fields
.field private m_cachedNodes:Lorg/apache/xml/utils/IntVector;

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

.field private m_last:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;Lorg/apache/xml/dtm/DTMAxisIterator;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    :goto_0
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    goto :goto_0
.end method


# virtual methods
.method public getDTMAxisIterator()Lorg/apache/xml/dtm/DTMAxisIterator;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    return-object v0
.end method

.method public getLength()I
    .locals 3

    const/4 v2, -0x1

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-ne v1, v2, :cond_1

    :goto_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    return v1
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    const/4 v3, -0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntVector;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    if-ne v2, v3, :cond_2

    :goto_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_iter:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    if-gt v0, p1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_cachedNodes:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_3

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_last:I

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIterNodeList;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method
