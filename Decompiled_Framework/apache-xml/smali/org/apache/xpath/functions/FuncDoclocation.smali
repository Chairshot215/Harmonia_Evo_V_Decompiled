.class public Lorg/apache/xpath/functions/FuncDoclocation;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncDoclocation.java"


# static fields
.field static final serialVersionUID:J = 0x67a7fa82b733b581L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionDef1Arg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncDoclocation;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v2

    const/4 v1, 0x0

    if-eq v5, v2, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    const/16 v3, 0xb

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v2

    :cond_0
    if-eq v5, v2, :cond_1

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Lorg/apache/xpath/objects/XString;

    if-eqz v1, :cond_2

    :goto_0
    invoke-direct {v3, v1}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method
