.class public Lorg/apache/xpath/functions/FuncLast;
.super Lorg/apache/xpath/functions/Function;
.source "FuncLast.java"


# static fields
.field static final serialVersionUID:J = 0x7fc19d9b2acad86fL


# instance fields
.field private m_isTopLevel:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncLast;->getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I

    move-result v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getCountOfContextNodeList(Lorg/apache/xpath/XPathContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-boolean v3, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lorg/apache/xpath/axes/SubContextList;->getLastPos(Lorg/apache/xpath/XPathContext;)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public postCompileStep(Lorg/apache/xpath/compiler/Compiler;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xpath/functions/FuncLast;->m_isTopLevel:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
