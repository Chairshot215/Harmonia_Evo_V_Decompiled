.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
.super Ljava/lang/Object;
.source "MediaHandlerFaceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
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

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mServiceURL:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)V

    return-void
.end method
