.class public Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"

# interfaces
.implements Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .locals 2

    .prologue
    .line 484
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][AlbumSNManager][onBinderDied]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public onConnected(Lcom/htc/opensense/social/SocialServiceManager;)V
    .locals 11
    .parameter "serviceManager"

    .prologue
    const/16 v10, 0x4e84

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 404
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][onConnected]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    .line 410
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][AlbumSNManager][onConnected]: no account info..."

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x274d

    invoke-virtual {v0, v1, v9, v7}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    if-nez v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v6}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    .line 421
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    if-nez v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 430
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->setDataHandler(Landroid/os/Handler;)V

    .line 431
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->setUIHandler(Landroid/os/Handler;)V

    .line 432
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v8, v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->enableRecentPhotoList()V

    .line 435
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v8, v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v8, v0, :cond_5

    .line 438
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->enablePhotoOfMe()V

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z

    move-result v0

    if-ne v8, v0, :cond_6

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v8, v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->enableRecentVideoList()V

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    if-nez v0, :cond_7

    .line 449
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 453
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 454
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    .line 456
    :cond_7
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    if-nez v0, :cond_8

    .line 458
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1202(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    .line 462
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    .line 463
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    if-nez v0, :cond_9

    .line 467
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;-><init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 471
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    .line 472
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->access$1300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    .line 475
    :cond_9
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v10, v9, v7}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 476
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v10, v9, v7}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method
