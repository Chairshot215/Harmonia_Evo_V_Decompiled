.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
.super Ljava/lang/Object;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerInfo"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

.field public mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 68
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 69
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method
