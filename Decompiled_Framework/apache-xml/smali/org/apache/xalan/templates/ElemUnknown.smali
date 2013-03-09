.class public Lorg/apache/xalan/templates/ElemUnknown;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemUnknown.java"


# static fields
.field static final serialVersionUID:J = -0x3f7a0c22378f7638L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    return-void
.end method

.method private executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v2

    :cond_1
    return-void
.end method

.method private hasFallbackChildren()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUnknown;->hasFallbackChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemUnknown;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0
.end method

.method public getXSLToken()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
