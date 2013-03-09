.class Lcom/htc/widget/HtcListItemTileImage$MaskImageView;
.super Landroid/widget/ImageView;
.source "HtcListItemTileImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListItemTileImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaskImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListItemTileImage;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListItemTileImage;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/widget/HtcListItemTileImage;

    .line 213
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, bmpMask:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 222
    .local v1, bmpRet:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 224
    .local v3, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/htc/widget/HtcListItemTileImage;->access$000()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/htc/widget/HtcListItemTileImage;->access$100()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 226
    invoke-static {}, Lcom/htc/widget/HtcListItemTileImage;->access$200()Landroid/graphics/Rect;

    move-result-object v3

    .line 228
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 229
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    .local v2, c:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 231
    invoke-super {p0, v2}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget v4, p0, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/widget/HtcListItemTileImage$MaskImageView;->mPaddingTop:I

    int-to-float v5, v5

    invoke-static {}, Lcom/htc/widget/HtcListItemTileImage;->access$300()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    .end local v2           #c:Landroid/graphics/Canvas;
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
