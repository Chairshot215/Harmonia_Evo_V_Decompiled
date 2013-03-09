.class public Lorg/apache/xpath/operations/Quo;
.super Lorg/apache/xpath/operations/Operation;
.source "Quo.java"


# static fields
.field static final serialVersionUID:J = 0x9a0bfdd28148eb1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v1

    invoke-virtual {p2}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    int-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v0
.end method
