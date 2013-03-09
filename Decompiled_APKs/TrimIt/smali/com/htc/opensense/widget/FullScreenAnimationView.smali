.class public Lcom/htc/opensense/widget/FullScreenAnimationView;
.super Landroid/widget/ImageView;
.source "FullScreenAnimationView.java"


# instance fields
.field private bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static OnAnimationEnd(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V
    .locals 3
    .parameter "dt"

    .prologue
    .line 25
    const-string v0, "HtcAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnAnimationEnd+]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 27
    return-void
.end method

.method public static OnAnimationStart(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V
    .locals 3
    .parameter "dt"

    .prologue
    .line 19
    const-string v0, "HtcAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnAnimationStart+]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->bmp:Landroid/graphics/Bitmap;

    .line 39
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 40
    .local v0, drawble:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    .end local v0           #drawble:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenAnimationView;->bmp:Landroid/graphics/Bitmap;

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
