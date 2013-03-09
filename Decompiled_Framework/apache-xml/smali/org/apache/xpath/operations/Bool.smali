.class public Lorg/apache/xpath/operations/Bool;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "Bool.java"


# static fields
.field static final serialVersionUID:J = 0x9ed34d4f9cfd0bL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xpath/operations/UnaryOperation;->m_right:Lorg/apache/xpath/Expression;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->bool(Lorg/apache/xpath/XPathContext;)Z

    move-result v0

    return v0
.end method

.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_1
.end method
