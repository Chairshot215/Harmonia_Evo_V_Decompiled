.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;
.super Ljava/lang/Object;
.source "PhotoFrameWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 671
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Data migration timeout."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->access$1700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 674
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch album by file path."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    const/4 v2, 0x0

    #setter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->bLaunchPhoto:Z
    invoke-static {v1, v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1602(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Z)Z

    .line 676
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->access$1700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->image:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->access$1700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 680
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask$1;->this$1:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;

    iget-object v1, v1, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriCheckTask;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 683
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
