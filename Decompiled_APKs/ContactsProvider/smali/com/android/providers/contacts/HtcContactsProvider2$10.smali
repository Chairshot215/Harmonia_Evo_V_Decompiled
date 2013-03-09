.class Lcom/android/providers/contacts/HtcContactsProvider2$10;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

.field final synthetic val$sourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12218
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iput-object p2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->val$sourceId:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 0

    .prologue
    .line 12261
    return-void
.end method

.method public onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 9
    .parameter "service"

    .prologue
    .line 12225
    move-object v3, p1

    .line 12226
    .local v3, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-nez v3, :cond_0

    .line 12253
    :goto_0
    return-void

    .line 12228
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mObjectLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2700(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 12229
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->startHandler()V
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2800(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    .line 12230
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x25

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 12235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 12236
    .local v2, objMsg:Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 12239
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x36

    iput v4, v1, Landroid/os/Message;->what:I

    .line 12240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12241
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "sourceid"

    iget-object v6, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->val$sourceId:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12243
    const-string v4, "SocialServiceManager"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12245
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12247
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12248
    iget-object v4, p0, Lcom/android/providers/contacts/HtcContactsProvider2$10;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$2900(Lcom/android/providers/contacts/HtcContactsProvider2;)Landroid/os/Handler;

    move-result-object v4

    const/16 v6, 0x25

    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12252
    monitor-exit v5

    goto :goto_0

    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #objMsg:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
