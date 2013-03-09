.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnImageClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    return-void
.end method

.method private launchAlbum()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    move-result-object v0

    if-nez v0, :cond_1

    .line 460
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[OnImageClickHandler][launchAlbum] uriCheckTask is null, execute uri check task"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/image/IImage;)V

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    invoke-static {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$702(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    .line 463
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[OnImageClickHandler][launchAlbum] uriCheckTask exists, do nothing."

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onImageClick(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    .line 485
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[OnImageClickHandler][onImageClick]"

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, sdState:Ljava/lang/String;
    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    const v3, 0x7f050008

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V

    .line 514
    :goto_0
    return-void

    .line 489
    :cond_0
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    const v3, 0x7f05000a

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V

    goto :goto_0

    .line 491
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 492
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    const v3, 0x7f050009

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showToast(I)V
    invoke-static {v2, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;I)V

    goto :goto_0

    .line 493
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->getState()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 494
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->lanuchPhotoPicker()V
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 499
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 502
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showImageMissing(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V
    invoke-static {v2, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/widget/FusionImageFrame;)V

    goto :goto_0

    .line 506
    :cond_4
    invoke-direct {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->launchAlbum()V

    goto :goto_0

    .line 511
    .end local v0           #file:Ljava/io/File;
    :cond_5
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$OnImageClickHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->showImageMissing(Lcom/htc/photowidget3d/widget/FusionImageFrame;)V
    invoke-static {v2, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1200(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/widget/FusionImageFrame;)V

    goto :goto_0
.end method
