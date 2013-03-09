.class public Lorg/apache/xpath/operations/Number;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Number.java"


# static fields
.field static final serialVersionUID:J = 0x63e0b7f89837d0b5L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->num(Lorg/apache/xpath/XPathContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    move-object p1, v0

    goto :goto_0
.end method
