.class public Lorg/apache/xpath/operations/Gte;
.super Lorg/apache/xpath/operations/Operation;
.source "Gte.java"


# static fields
.field static final serialVersionUID:J = 0x7ee244dd1899299cL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/Operation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/objects/XObject;->greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_TRUE:Lorg/apache/xpath/objects/XBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XBoolean;->S_FALSE:Lorg/apache/xpath/objects/XBoolean;

    goto :goto_0
.end method
