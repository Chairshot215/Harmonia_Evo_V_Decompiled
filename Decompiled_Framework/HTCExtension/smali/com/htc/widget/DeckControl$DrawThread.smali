.class Lcom/htc/widget/DeckControl$DrawThread;
.super Ljava/lang/Thread;
.source "DeckControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/widget/DeckControl;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControl;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    const-string v0, "DrawThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v3, v7, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v3, v7, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;
    invoke-static {v3}, Lcom/htc/widget/DeckControl;->access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;
    invoke-static {v3}, Lcom/htc/widget/DeckControl;->access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->recycle()V

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    invoke-static {v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/Bitmap;)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    #setter for: Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;
    invoke-static {v3, v4}, Lcom/htc/widget/DeckControl;->access$302(Lcom/htc/widget/DeckControl;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;
    invoke-static {v3}, Lcom/htc/widget/DeckControl;->access$400(Lcom/htc/widget/DeckControl;)Lcom/htc/widget/DeckControlView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->surfaceview:Lcom/htc/widget/DeckControlView;
    invoke-static {v3}, Lcom/htc/widget/DeckControl;->access$400(Lcom/htc/widget/DeckControl;)Lcom/htc/widget/DeckControlView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/DeckControl$DrawThread;->this$0:Lcom/htc/widget/DeckControl;

    #getter for: Lcom/htc/widget/DeckControl;->bgsbitmap:Lcom/htc/sunny/SBitmap;
    invoke-static {v4}, Lcom/htc/widget/DeckControl;->access$300(Lcom/htc/widget/DeckControl;)Lcom/htc/sunny/SBitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/DeckControlView;->setBackground(Lcom/htc/sunny/SBitmap;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const-string v3, "GlideModeGallery"

    const-string v4, "GlideMode:DrawThread.run(Drawable)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
