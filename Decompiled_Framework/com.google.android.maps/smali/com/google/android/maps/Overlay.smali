.class public abstract Lcom/google/android/maps/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 3

    const/16 v2, 0x3e80

    const/16 v1, -0x3e80

    const/16 v0, 0x3e80

    if-gt p2, v2, :cond_0

    if-gt p3, v2, :cond_0

    if-lt p2, v1, :cond_0

    if-ge p3, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_2

    const/high16 v1, 0x7f00

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p4, :cond_3

    const v1, -0x4099999a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->skew(FF)V

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
