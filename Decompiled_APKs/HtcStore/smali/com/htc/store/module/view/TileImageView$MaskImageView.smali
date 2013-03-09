.class Lcom/htc/store/module/view/TileImageView$MaskImageView;
.super Landroid/widget/ImageView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/view/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaskImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/view/TileImageView;


# direct methods
.method public constructor <init>(Lcom/htc/store/module/view/TileImageView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/htc/store/module/view/TileImageView$MaskImageView;->this$0:Lcom/htc/store/module/view/TileImageView;

    .line 196
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 202
    const/4 v2, 0x0

    .line 203
    .local v2, mask:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 205
    .local v0, background:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/htc/store/module/view/TileImageView$MaskImageView;->this$0:Lcom/htc/store/module/view/TileImageView;

    invoke-virtual {v3}, Lcom/htc/store/module/view/TileImageView;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    iget-object v3, p0, Lcom/htc/store/module/view/TileImageView$MaskImageView;->this$0:Lcom/htc/store/module/view/TileImageView;

    invoke-virtual {v3}, Lcom/htc/store/module/view/TileImageView;->getBmpRetNoBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v1, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    invoke-super {p0, v1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-static {}, Lcom/htc/store/module/view/TileImageView;->access$000()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    .end local v1           #c:Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
