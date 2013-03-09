.class public Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;
.super Lorg/apache/xml/dtm/ref/DTMNodeListBase;
.source "DTMChildIterNodeList.java"


# instance fields
.field private m_firstChild:I

.field private m_parentDTM:Lorg/apache/xml/dtm/DTM;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMNodeListBase;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_firstChild:I

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMChildIterNodeList;->m_parentDTM:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method
