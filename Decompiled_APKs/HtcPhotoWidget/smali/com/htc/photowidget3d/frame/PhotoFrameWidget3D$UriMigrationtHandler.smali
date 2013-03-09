.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;
.super Landroid/content/BroadcastReceiver;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriMigrationtHandler"
.end annotation


# static fields
.field private static final ID_UPDATE_REQUEST:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_REQUEST"

.field private static final ID_UPDATE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field private static final MEDIA_TYPE_AUDIO:I = 0x2

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_NONE:I = 0x0

.field private static final MEDIA_TYPE_PLAYLIST:I = 0x4

.field private static final MEDIA_TYPE_VIDEO:I = 0x3

.field private static final UPGRADE_COMPLETE_INTENT:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"


# instance fields
.field mIntentFilter:Landroid/content/IntentFilter;

.field mRegistered:Z

.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)V
    .locals 2
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 810
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 811
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mRegistered:Z

    .line 815
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 816
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v1, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v1, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 820
    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 821
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 867
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->isDestroy:Z
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$000(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 869
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UriMigrationtHandler onReceive, Widget is destroy"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v3

    if-nez v3, :cond_2

    .line 875
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UriMigrationtHandler onReceive, mImage is null"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :cond_2
    if-eqz p2, :cond_0

    .line 881
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 885
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UriMigrationtHandler][onReceive] action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v3, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 887
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mImage:Lcom/htc/photowidget3d/image/IImage;
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->sendRequest(Landroid/net/Uri;)V

    .line 889
    :cond_3
    const-string v3, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    const-string v3, "media_ids_res"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 892
    .local v2, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v2, :cond_0

    .line 894
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 895
    .local v1, response:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onReceive] uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    if-eqz v1, :cond_0

    .line 900
    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #getter for: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$3100(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    new-instance v4, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler$1;-><init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;Landroid/net/Uri;)V

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public sendRequest(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 825
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UriMigrationtHandler][sendRequest] uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v2, "media_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v1, mUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    const-string v2, "media_ids_req"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 836
    const-string v2, "category"

    iget-object v3, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    iget-object v2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2600(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 838
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->stop()V

    .line 844
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2700(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mRegistered:Z

    .line 846
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$2800(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 854
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$UriMigrationtHandler;->mRegistered:Z

    .line 855
    return-void
.end method
