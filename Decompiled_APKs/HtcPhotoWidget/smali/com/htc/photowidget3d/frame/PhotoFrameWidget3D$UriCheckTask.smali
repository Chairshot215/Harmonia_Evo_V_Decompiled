.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
.super Landroid/os/AsyncTask;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private image:Lcom/htc/photowidget3d/image/IImage;

.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/image/IImage;)V
    .locals 1
    .parameter
    .parameter "img"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    .line 614
    iput-object p2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    .line 615
    return-void
.end method

.method static synthetic access$1700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/image/IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .parameter "arg0"

    .prologue
    .line 620
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, ">>[UriCheckTask][doInBackground]"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :try_start_0
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v3}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 631
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getHostContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/htc/photowidget3d/util/ImageUtils;->getFilePathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, strPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v3}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 643
    .end local v1           #strPath:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UriCheckTask][doInBackground] occurs exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 609
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 649
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 651
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, ">>[UriCheckTask][onPostExecute]"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->uriCheckTask:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;
    invoke-static {v0, v4}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$702(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    .line 654
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->launchAlbum(Lcom/htc/photowidget3d/image/IImage;)V
    invoke-static {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1500(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/image/IImage;)V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    const/4 v1, 0x1

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z
    invoke-static {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1602(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Z)Z

    .line 666
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uri is invalid, need to do migration."

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->stop()V

    .line 690
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0, v4}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2002(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    new-instance v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {v1, v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2002(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    .line 694
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->start()V

    .line 695
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mUriMigrationHandler:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->sendRequest(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 609
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
