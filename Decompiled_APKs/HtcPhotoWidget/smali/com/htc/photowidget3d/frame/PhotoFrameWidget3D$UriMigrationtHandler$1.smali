.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

.field final synthetic val$response:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iput-object p2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->val$response:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getHostContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->val$response:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/ImageUtils;->getFilePathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, strPath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] strPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onReceive] mImage.getDataPath() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v3, v3, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$3000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;

    invoke-direct {v2, p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_0
    return-void
.end method
