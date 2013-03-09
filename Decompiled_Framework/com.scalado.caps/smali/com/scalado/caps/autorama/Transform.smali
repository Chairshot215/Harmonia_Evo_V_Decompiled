.class public Lcom/scalado/caps/autorama/Transform;
.super Lcom/scalado/caps/PeerBase;
.source "Transform.java"


# static fields
.field public static final DEFAULT_DIRECTION_TRIGGER:I = 0xa

.field public static final DEFAULT_OVERLAP:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/autorama/Transform;->nativeCreate()I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/autorama/Transform;->nativeCreate()I

    new-instance v0, Lcom/scalado/base/Vector;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Vector;-><init>(II)V

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, p3, p4}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/scalado/caps/autorama/Transform;->setTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V

    return-void
.end method

.method private native nativeCreate()I
.end method

.method private native nativeGetDirection(I)I
.end method

.method private native nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)I
.end method

.method private native nativeIsTimeToCapture(II)Z
.end method

.method private native nativeSetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)I
.end method


# virtual methods
.method public getDirection(I)Lcom/scalado/caps/autorama/Direction;
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/Transform;->nativeGetDirection(I)I

    move-result v0

    invoke-static {v0}, Lcom/scalado/caps/autorama/Direction;->translateIntToDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    return-object v1
.end method

.method public getTranslationDelta()Lcom/scalado/base/Vector;
    .locals 2

    new-instance v1, Lcom/scalado/base/Vector;

    invoke-direct {v1}, Lcom/scalado/base/Vector;-><init>()V

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/scalado/caps/autorama/Transform;->nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)I

    return-object v1
.end method

.method public getTranslationDimensions()Lcom/scalado/base/Size;
    .locals 2

    new-instance v1, Lcom/scalado/base/Vector;

    invoke-direct {v1}, Lcom/scalado/base/Vector;-><init>()V

    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/scalado/caps/autorama/Transform;->nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)I

    return-object v0
.end method

.method public isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Direction;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/scalado/caps/autorama/Transform;->nativeIsTimeToCapture(II)Z

    move-result v0

    return v0
.end method

.method public setTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/Transform;->nativeSetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)I

    return-void
.end method
