.class Lcom/htc/launcher/Launcher$22;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->startCreateScenePreviewThread(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 6326
    iput-object p1, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 6329
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x18

    if-ne v5, v6, :cond_2

    .line 6330
    const/4 v4, 0x0

    .line 6331
    .local v4, snapshot:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 6334
    .local v1, buttonBarSnapShot:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v5, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    invoke-static {}, Lcom/htc/launcher/Workspace;->getDefaultScreenIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/launcher/Launcher;->flattenWidgets(I)V

    .line 6335
    iget-object v5, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v5, v5, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v5}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->captureScreenShot()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 6336
    iget-object v5, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v5, v5, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    iget-object v6, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mLeapController:Lcom/htc/launcher/LeapController;
    invoke-static {v6}, Lcom/htc/launcher/Launcher;->access$6700(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/LeapController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/launcher/LeapController;->isLeapMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->getNavBarScreenShot(Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6341
    :goto_0
    const/4 v3, 0x0

    .line 6342
    .local v3, screenCache:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 6343
    .local v0, buttonBarCache:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 6345
    :try_start_1
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 6350
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 6352
    :try_start_2
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 6357
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/htc/launcher/Launcher$22;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->createScenePreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    invoke-static {v5, v3, v0}, Lcom/htc/launcher/Launcher;->access$6800(Lcom/htc/launcher/Launcher;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 6359
    .end local v0           #buttonBarCache:Landroid/graphics/Bitmap;
    .end local v1           #buttonBarSnapShot:Landroid/graphics/Bitmap;
    .end local v3           #screenCache:Landroid/graphics/Bitmap;
    .end local v4           #snapshot:Landroid/graphics/Bitmap;
    :cond_2
    return-void

    .line 6337
    .restart local v1       #buttonBarSnapShot:Landroid/graphics/Bitmap;
    .restart local v4       #snapshot:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 6338
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Rosie"

    const-string v6, "captureScreenShot exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6346
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buttonBarCache:Landroid/graphics/Bitmap;
    .restart local v3       #screenCache:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 6347
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "Rosie"

    const-string v6, "createBitmap exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6353
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 6354
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "Rosie"

    const-string v6, "createBitmap exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
