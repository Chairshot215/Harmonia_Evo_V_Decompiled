.class public Lorg/apache/xpath/functions/FuncNamespace;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncNamespace.java"


# static fields
.field static final serialVersionUID:J = -0x412a6323c251fb55L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncNamespace;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_5

    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_1
    return-object v4

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "xmlns:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "xmlns"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_1

    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_1

    :cond_5
    new-instance v4, Lorg/apache/xpath/objects/XString;

    invoke-direct {v4, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
