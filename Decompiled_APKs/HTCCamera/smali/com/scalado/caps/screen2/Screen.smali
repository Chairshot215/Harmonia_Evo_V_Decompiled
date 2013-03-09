.class public Lcom/scalado/caps/screen2/Screen;
.super Lcom/scalado/caps/PeerBase;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/screen2/Screen$ProcessIterator;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scalado/base/Size;Lcom/scalado/stream/Stream;Lcom/scalado/caps/screen2/TextureCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/screen2/Screen;->nativeCreateCapsScreen(Lcom/scalado/base/Size;Lcom/scalado/stream/Stream;Lcom/scalado/caps/screen2/TextureCache;)I

    return-void
.end method

.method private native nativeCreateCapsScreen(Lcom/scalado/base/Size;Lcom/scalado/stream/Stream;Lcom/scalado/caps/screen2/TextureCache;)I
.end method

.method private native nativeRender()I
.end method

.method private native nativeSetApplyDithering(Z)I
.end method

.method private native nativeViewport(Lcom/scalado/caps/screen2/Viewport;)I
.end method


# virtual methods
.method public preRender()Lcom/scalado/base/Iterator;
    .locals 1

    new-instance v0, Lcom/scalado/caps/screen2/Screen$ProcessIterator;

    invoke-direct {v0, p0, p0}, Lcom/scalado/caps/screen2/Screen$ProcessIterator;-><init>(Lcom/scalado/caps/screen2/Screen;Lcom/scalado/caps/screen2/Screen;)V

    return-object v0
.end method

.method public render()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/screen2/Screen;->nativeRender()I

    return-void
.end method

.method public setApplyDithering(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/screen2/Screen;->nativeSetApplyDithering(Z)I

    return-void
.end method

.method public viewport()Lcom/scalado/caps/screen2/Viewport;
    .locals 2

    new-instance v1, Lcom/scalado/caps/screen2/Viewport;

    invoke-direct {v1}, Lcom/scalado/caps/screen2/Viewport;-><init>()V

    invoke-direct {p0, v1}, Lcom/scalado/caps/screen2/Screen;->nativeViewport(Lcom/scalado/caps/screen2/Viewport;)I

    move-result v0

    return-object v1
.end method
