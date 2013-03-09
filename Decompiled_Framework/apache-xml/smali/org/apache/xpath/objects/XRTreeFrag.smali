.class public Lorg/apache/xpath/objects/XRTreeFrag;
.super Lorg/apache/xpath/objects/XObject;
.source "XRTreeFrag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

.field protected m_allowRelease:Z

.field private m_dtmRoot:I

.field private m_xmlStr:Lorg/apache/xml/utils/XMLString;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    invoke-virtual {p0, p3}, Lorg/apache/xpath/objects/XRTreeFrag;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-void
.end method

.method private final initDTM(ILorg/apache/xpath/XPathContext;)V
    .locals 2

    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    :cond_0
    return-void
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    return-void
.end method

.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    new-instance v0, Lorg/apache/xpath/axes/RTFIterator;

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/axes/RTFIterator;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v0
.end method

.method public bool()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public convertToNodeset()Lorg/w3c/dom/NodeList;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/w3c/dom/NodeList;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XRTreeFrag;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 7

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v3

    if-ne v5, v3, :cond_1

    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->bool()Z

    move-result v3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->num()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v5, v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_0

    :cond_6
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "#RTREEFRAG"

    return-object v0
.end method

.method public num()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v1

    return-wide v1
.end method

.method public object()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v3, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v3}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public rtf()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    return v0
.end method

.method public str()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-object v0
.end method
