.class public Lorg/apache/xpath/functions/FuncLang;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncLang.java"


# static fields
.field static final serialVersionUID:J = -0x6d3341a25189a979L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v9, -0x1

    iget-object v7, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p1, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    :goto_0
    if-eq v9, v5, :cond_1

    const/4 v7, 0x1

    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v8

    if-ne v7, v8, :cond_2

    const-string v7, "http://www.w3.org/XML/1998/namespace"

    const-string v8, "lang"

    invoke-interface {v0, v5, v7, v8}, Lorg/apache/xml/dtm/DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v9, v3, :cond_2

    invoke-interface {v0, v3}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v6, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_1
    return-object v7

    :cond_2
    invoke-interface {v0, v5}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v5

    goto :goto_0

    :cond_3
    sget-object v7, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1
.end method
