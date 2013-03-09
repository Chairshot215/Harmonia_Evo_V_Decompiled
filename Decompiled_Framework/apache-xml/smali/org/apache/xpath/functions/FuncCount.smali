.class public Lorg/apache/xpath/functions/FuncCount;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCount.java"


# static fields
.field static final serialVersionUID:J = -0x62c1e906877afb17L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

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

    iget-object v2, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v0

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    new-instance v2, Lorg/apache/xpath/objects/XNumber;

    int-to-double v3, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v2
.end method
