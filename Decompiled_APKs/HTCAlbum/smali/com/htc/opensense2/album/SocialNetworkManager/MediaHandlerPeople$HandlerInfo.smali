.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
.super Ljava/lang/Object;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerInfo"
.end annotation


# instance fields
.field public mAccount:Landroid/accounts/Account;

.field public mContext:Landroid/content/Context;

.field public mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field public mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    .line 57
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 58
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 59
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method
