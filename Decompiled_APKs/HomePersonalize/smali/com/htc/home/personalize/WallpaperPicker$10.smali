.class Lcom/htc/home/personalize/WallpaperPicker$10;
.super Ljava/lang/Thread;
.source "WallpaperPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/WallpaperPicker;->SetLockScreenWallPaper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/WallpaperPicker;

.field final synthetic val$display:Landroid/view/Display;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/WallpaperPicker;Ljava/lang/String;Ljava/io/InputStream;Landroid/view/Display;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    iput-object p3, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$stream:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$display:Landroid/view/Display;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1014
    :try_start_0
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$stream:Ljava/io/InputStream;

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1016
    .local v10, wallpaper:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$display:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$display:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1018
    .local v1, croppedImage:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1019
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1020
    .local v8, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$display:Landroid/view/Display;

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v13

    iget-object v14, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$display:Landroid/view/Display;

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1022
    .local v2, dstRect:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v3, v11, 0x2

    .line 1023
    .local v3, dx:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v4, v11, 0x2

    .line 1024
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

    .line 1026
    const/4 v11, 0x0

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 1029
    const/4 v11, 0x0

    neg-int v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    neg-int v13, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 1032
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v8, v2, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1033
    const v11, 0xff00ff

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1037
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v11, "/data/misc/lockscreen/lock_screen_port"

    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v6, out:Ljava/io/FileOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v1, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    .line 1040
    .local v9, success:Z
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1041
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 1042
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1043
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->val$stream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1045
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.htc.launcher.lockscreen.WallpaperChanged"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v7, pickWallpaper:Landroid/content/Intent;
    iget-object v11, p0, Lcom/htc/home/personalize/WallpaperPicker$10;->this$0:Lcom/htc/home/personalize/WallpaperPicker;

    invoke-virtual {v11, v7}, Lcom/htc/home/personalize/WallpaperPicker;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1054
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

    .line 1047
    :catch_0
    move-exception v5

    .line 1049
    .local v5, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1050
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 1052
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
