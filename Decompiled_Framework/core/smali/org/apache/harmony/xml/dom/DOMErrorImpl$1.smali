.class final Lorg/apache/harmony/xml/dom/DOMErrorImpl$1;
.super Ljava/lang/Object;
.source "DOMErrorImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/dom/DOMErrorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
