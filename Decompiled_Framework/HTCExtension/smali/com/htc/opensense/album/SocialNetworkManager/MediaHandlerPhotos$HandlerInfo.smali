.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
.super Ljava/lang/Object;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
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

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method
