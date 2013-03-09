.class public Lorg/apache/xpath/functions/FuncCeiling;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncCeiling.java"


# static fields
.field static final serialVersionUID:J = -0x11b5392d5ae1d4e3L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

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

    iget-object v1, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
