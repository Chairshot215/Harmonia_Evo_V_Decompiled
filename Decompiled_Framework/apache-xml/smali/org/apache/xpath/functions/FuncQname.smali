.class public Lorg/apache/xpath/functions/FuncQname;
.super Lorg/apache/xpath/functions/FunctionDef1Arg;
.source "FuncQname.java"


# static fields
.field static final serialVersionUID:J = -0x1543d9e4efa7b6a4L


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

    invoke-virtual {p0, p1}, Lorg/apache/xpath/functions/FuncQname;->getArg0AsNode(Lorg/apache/xpath/XPathContext;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v4, v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lorg/apache/xpath/objects/XString;

    invoke-direct {v3, v2}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_0
.end method
