.class public Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;,
        Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    }
.end annotation


# static fields
.field private static final KEY_TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SPECIAL_ITEM_PHOTO_OF_ME:I = 0x63

.field public static final SPECIAL_ITEM_RECENT_PHOTO:I = 0x1e

.field public static final SPECIAL_ITEM_RECENT_VIDEO:I = 0x1e


# instance fields
.field private mAccount:[Landroid/accounts/Account;

.field private mAccountMgr:Landroid/accounts/AccountManager;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mFlagLoginAction:Z

.field private mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

.field private mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

.field private mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

.field private mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

.field private mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

.field private mIsEnablePhotoOfMe:Z

.field private mIsEnableRecentList:Z

.field private mIsEnableRecentVideo:Z

.field private mServiceID:I

.field private mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field private mServiceName:Ljava/lang/String;

.field protected mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$1;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public static createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->scan4UploadServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v3, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v9, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v8, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "tag_display_name"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v9, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v9, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v9, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v8, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public InitAccountLogin(Landroid/app/Activity;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumSNManager][InitAccountLogin]: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return-void
.end method

.method public InitConnection(ZZ)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v2, v3, :cond_0

    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AlbumSNManager][InitConnection]: connectTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AlbumSNManager][InitConnection]: connectTo with listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    goto :goto_1
.end method

.method public UninitConnection()V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][UninitConnection]: disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-void
.end method

.method public cancelBackgroundAction()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->cancelBackgroundAction()V

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    :cond_4
    return-void
.end method

.method public enablePhotoOfMeAlbumList()V
    .locals 1

    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ISSUPPORT_SOCIALNETWORK_TAG_OF_ME:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    :cond_0
    return-void
.end method

.method public enableRecentAlbumList()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    return-void
.end method

.method public enableRecentVideoList()V
    .locals 3

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][enableRecentVideoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ISSUPPORT_SOCIALNETWORK_VIDEOS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    :cond_0
    return-void
.end method

.method public getActiveUser(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUser(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumList(Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaList(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumNextOnList(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaNextOnList(Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOp([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaInfo([Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOpFast([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Album;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaOpFast([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAlbumRecentList(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaRecentList(Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCachedAccountOwner()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedFriendList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedPhotoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCachedUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getUserResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaListCount(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCommentList(Lcom/htc/opensense/social/MediumOp;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaList(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getCurrentServiceURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaList(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaInfo3(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo2(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfo(Ljava/lang/String;)Lcom/htc/opensense/social/MediumOp;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    :cond_0
    return-object v0
.end method

.method public getMediumInfo2(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getPersonInfo(Ljava/lang/String;)Lcom/htc/opensense/social/PersonOp;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/PersonOp;

    :cond_0
    return-object v0
.end method

.method public getPersonInfo2(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotoList(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaList(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotosOfMeList(Ljava/lang/String;ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeList(Ljava/lang/Object;ZI)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getRecentPhotoList(Ljava/lang/String;ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentMediaList(Ljava/lang/Object;ZI)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSocialServiceManager()Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    goto :goto_0
.end method

.method public getTagList(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaList(Ljava/lang/Object;Z)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountActive()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no service id availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no active account availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountActive]: active account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isAccountStatusChanged()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: sync active account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: no change just skip!"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    goto :goto_0
.end method

.method public isExistActiveUserCache()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isExistActiveUserCache()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isExistingAccount()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFlaggedLoginAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDestroy()V

    :cond_0
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDestroy()V

    :cond_1
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDestroy()V

    :cond_2
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->onDestroy()V

    :cond_3
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->onDestroy()V

    :cond_4
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    return-void
.end method

.method public resetActiveAccount()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    return-void
.end method

.method public resetFlagLoginAction()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return-void
.end method

.method public scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    const-string v6, "SupportGallery"

    invoke-static {v5, v6}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available services."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v6, v6, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iput-boolean v8, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-boolean v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    if-nez v5, :cond_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: Match found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v1, v0

    goto/16 :goto_0
.end method

.method public setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setPhotoTags(Lcom/htc/opensense/social/data/Medium;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Medium;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public syncActiveAccount()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method

.method public updateFriendList(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->updateCacheList(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method
