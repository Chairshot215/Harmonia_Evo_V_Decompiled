.class public Lorg/apache/xpath/objects/XNull;
.super Lorg/apache/xpath/objects/XNodeSet;
.source "XNull.java"


# static fields
.field static final serialVersionUID:J = -0x5ef28b163716bc5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    const-string v0, "#CLASS_NULL"

    return-object v0
.end method

.method public num()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rtf(Lorg/apache/xpath/XPathContext;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public str()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
