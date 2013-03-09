.class Lcom/htc/home/personalize/WallpaperPreview$2;
.super Ljava/lang/Thread;
.source "WallpaperPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperPreview;->SetLockScreenWallPaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPreview;

.field final synthetic val$display:Landroid/view/Display;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPreview;Ljava/lang/String;Ljava/io/InputStream;Landroid/view/Display;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    iput-object p3, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$stream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$display:Landroid/view/Display;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 190
    :try_start_0
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$stream:Ljava/io/InputStream;

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 192
    .local v10, wallpaper:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$display:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$display:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, croppedImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 196
    .local v8, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$display:Landroid/view/Display;

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v13

    iget-object v14, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$display:Landroid/view/Display;

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 198
    .local v2, dstRect:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    .line 199
    .local v3, dx:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v4, v11, 0x2

    .line 200
    .local v4, dy:I
    const-string v11, "WALLPAPER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dx:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " dy:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v11, 0x0

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 205
    const/4 v11, 0x0

    neg-int v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    neg-int v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 208
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v8, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    const v11, 0xff00ff

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 213
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/lockscreen/lock_screen_port"

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, out:Ljava/io/FileOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v1, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    .line 216
    .local v9, success:Z
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 218
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 219
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->val$stream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 221
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v7, pickWallpaper:Landroid/content/Intent;
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-virtual {v11, v7}, Lcom/htc/home/personalize/WallpaperPreview;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/htc/home/personalize/WallpaperPreview;->setResult(I)V

    .line 224
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    invoke-virtual {v11}, Lcom/htc/home/personalize/WallpaperPreview;->finish()V

    .line 225
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    iget-object v12, p0, Lcom/htc/home/personalize/WallpaperPreview$2;->this$0:Lcom/htc/home/personalize/WallpaperPreview;

    #getter for: Lcom/htc/home/personalize/WallpaperPreview;->mWallpaperLabel:Ljava/lang/String;
    invoke-static {v12}, Lcom/htc/home/personalize/WallpaperPreview;->access$300(Lcom/htc/home/personalize/WallpaperPreview;)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/htc/home/personalize/WallpaperPreview;->notifyWallpaperTitle(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/htc/home/personalize/WallpaperPreview;->access$400(Lcom/htc/home/personalize/WallpaperPreview;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #croppedImage:Landroid/graphics/Bitmap;
    .end local v2           #dstRect:Landroid/graphics/Rect;
    .end local v3           #dx:I
    .end local v4           #dy:I
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #pickWallpaper:Landroid/content/Intent;
    .end local v8           #srcRect:Landroid/graphics/Rect;
    .end local v9           #success:Z
    .end local v10           #wallpaper:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v5

    .line 229
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 232
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
