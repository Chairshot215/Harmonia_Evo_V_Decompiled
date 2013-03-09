.class public Lorg/apache/xpath/operations/String;
.super Lorg/apache/xpath/operations/UnaryOperation;
.source "String.java"


# static fields
.field static final serialVersionUID:J = 0x29438c3e2055eea8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/operations/UnaryOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public operate(Lorg/apache/xpath/objects/XObject;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    return-object v0
.end method
