.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
.super Ljava/lang/Object;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerInfo"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 57
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method
