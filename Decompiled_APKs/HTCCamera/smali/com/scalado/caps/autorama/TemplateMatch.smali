.class public Lcom/scalado/caps/autorama/TemplateMatch;
.super Lcom/scalado/caps/PeerBase;
.source "TemplateMatch.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCreate()I

    move-result v0

    return-void
.end method

.method private native nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V
.end method

.method private native nativeCreate()I
.end method

.method private native nativeGetTranslationX()I
.end method

.method private native nativeGetTranslationY()I
.end method

.method private native nativeSetRegion(IIII)V
.end method

.method private native nativeSetTemplateRegion(IIII)V
.end method


# virtual methods
.method public calculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)Lcom/scalado/base/Vector;
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeCalculateTranslation(Lcom/scalado/base/Image;Lcom/scalado/base/Image;)V

    invoke-direct {p0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeGetTranslationX()I

    move-result v0

    invoke-direct {p0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeGetTranslationY()I

    move-result v1

    new-instance v2, Lcom/scalado/base/Vector;

    invoke-direct {v2, v0, v1}, Lcom/scalado/base/Vector;-><init>(II)V

    return-object v2
.end method

.method public setImageRegion(Lcom/scalado/base/Rect;)V
    .locals 4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetRegion(IIII)V

    return-void
.end method

.method public setTemplateRegion(Lcom/scalado/base/Rect;)V
    .locals 4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/scalado/caps/autorama/TemplateMatch;->nativeSetTemplateRegion(IIII)V

    return-void
.end method
