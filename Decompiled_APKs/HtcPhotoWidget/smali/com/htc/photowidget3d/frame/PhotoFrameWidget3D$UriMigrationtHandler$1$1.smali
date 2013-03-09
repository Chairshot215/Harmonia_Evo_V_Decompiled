.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 913
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onReceive] uri data migration succeed, launch album."

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->val$response:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/htc/photowidget3d/image/IImage;->setImageUri(Landroid/net/Uri;)V

    .line 915
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v1

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->launchAlbum(Lcom/htc/photowidget3d/image/IImage;)V
    invoke-static {v0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1500(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Lcom/htc/photowidget3d/image/IImage;)V

    .line 916
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1$1;->this$2:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;

    iget-object v0, v0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->restoreImageUri()V
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2900(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V

    .line 917
    return-void
.end method
