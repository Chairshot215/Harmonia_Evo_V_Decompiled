.class public Lorg/apache/xpath/functions/FuncRound;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncRound.java"


# static fields
.field static final serialVersionUID:J = -0x6e9d33d4555c1233L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-wide/16 v5, 0x0

    iget-object v3, p0, Lorg/apache/xpath/functions/FunctionOneArg;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    const-wide/high16 v3, -0x4020

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_0

    cmpg-double v3, v1, v5

    if-gez v3, :cond_0

    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v4, -0x8000

    invoke-direct {v3, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    :goto_0
    return-object v3

    :cond_0
    cmpl-double v3, v1, v5

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v3, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    goto :goto_0
.end method
