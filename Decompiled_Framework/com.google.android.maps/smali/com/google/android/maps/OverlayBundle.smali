.class final Lcom/google/android/maps/OverlayBundle;
.super Ljava/lang/Object;
.source "OverlayBundle.java"


# instance fields
.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;J)Z
    .locals 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z

    move-result v1

    or-int/2addr v6, v1

    goto :goto_1

    :cond_1
    return v6
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 4

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 4

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 4

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 4

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 4

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/OverlayBundle;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/maps/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
