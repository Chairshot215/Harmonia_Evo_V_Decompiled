.class final Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rawContactId:J

.field final synthetic val$sourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$rawContactId:J

    iput-object p4, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$sourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 0

    .prologue
    .line 2483
    return-void
.end method

.method public onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 9
    .parameter "service"

    .prologue
    .line 2453
    move-object v4, p1

    .line 2454
    .local v4, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-nez v4, :cond_0

    .line 2477
    :goto_0
    return-void

    .line 2455
    :cond_0
    sget-object v6, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2456
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2457
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v7, 0x32

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2460
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 2461
    .local v3, objMsg:Landroid/os/Message;
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2463
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2464
    .local v1, msg:Landroid/os/Message;
    const/16 v5, 0x39

    iput v5, v1, Landroid/os/Message;->what:I

    .line 2465
    iget-object v5, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$context:Landroid/content/Context;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2467
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "_id"

    iget-wide v7, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$rawContactId:J

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2468
    const-string v5, "sourceid"

    iget-object v7, p0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;->val$sourceId:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const-string v5, "SocialServiceManager"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2470
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2472
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2474
    .local v2, msgEnd:Landroid/os/Message;
    const/16 v5, 0x32

    iput v5, v2, Landroid/os/Message;->what:I

    .line 2475
    sget-object v5, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2476
    monitor-exit v6

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgEnd:Landroid/os/Message;
    .end local v3           #objMsg:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
