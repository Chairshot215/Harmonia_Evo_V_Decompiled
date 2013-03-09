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

    .prologue
    .line 66
    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 73
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 75
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 78
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 79
    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 80
    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 81
    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 82
    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 87
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    .line 88
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 89
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 90
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    .line 91
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 92
    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    .line 329
    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$1;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 107
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, service:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 111
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    .end local v1           #service:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    .line 112
    .restart local v1       #service:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 113
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 117
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public static createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 10
    .parameter "context"
    .parameter "szServiceName"
    .parameter
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

    .prologue
    .line 753
    .local p2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v0, 0x0

    .line 754
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 756
    .local v2, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v3, v2

    .line 806
    .end local v2           #intent:Landroid/content/Intent;
    .local v3, intent:Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 759
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    move-object v3, v2

    .line 760
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 762
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_3
    invoke-static {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->scan4UploadServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v3, v2

    .line 763
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 766
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 767
    .local v4, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 768
    .local v7, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 772
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_7

    .line 774
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v9, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v9, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v9, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_6

    .line 772
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 787
    :cond_6
    const/4 v6, 0x0

    .local v6, nIndexTag:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_5

    .line 789
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 790
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v8, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const-string v9, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v9, "tag_display_name"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v9, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 794
    const-string v9, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 795
    const-string v9, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 796
    const-string v9, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 797
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 801
    .end local v6           #nIndexTag:I
    :cond_7
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const-string v8, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 804
    const-string v8, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v3, v2

    .line 806
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_0
.end method


# virtual methods
.method public InitAccountLogin(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 287
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

    .line 288
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

    .line 289
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 291
    return-void
.end method

.method public InitConnection(ZZ)Z
    .locals 6
    .parameter "bEnableListener"
    .parameter "bEnableAutoSync"

    .prologue
    const/4 v5, 0x0

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, bResult:Z
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v2, v3, :cond_0

    .line 360
    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v1, v0

    .line 383
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 370
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    if-nez p1, :cond_1

    .line 372
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

    .line 373
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

    .line 383
    .restart local v1       #bResult:I
    goto :goto_0

    .line 377
    .end local v1           #bResult:I
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

    .line 378
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    .line 379
    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 380
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

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
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

    .line 390
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 394
    return-void
.end method

.method public cancelBackgroundAction()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->cancelBackgroundAction()V

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    .line 748
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    .line 750
    :cond_4
    return-void
.end method

.method public enablePhotoOfMeAlbumList()V
    .locals 1

    .prologue
    .line 313
    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ISSUPPORT_SOCIALNETWORK_TAG_OF_ME:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 317
    :cond_0
    return-void
.end method

.method public enableRecentAlbumList()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 307
    return-void
.end method

.method public enableRecentVideoList()V
    .locals 3

    .prologue
    .line 323
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

    .line 324
    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ISSUPPORT_SOCIALNETWORK_VIDEOS:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 328
    :cond_0
    return-void
.end method

.method public getActiveUser(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUser(Z)V

    .line 571
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumList(Ljava/util/List;Z)Z
    .locals 1
    .parameter
    .parameter "bIsForceSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, szUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaList(Ljava/lang/Object;Z)Z

    .line 585
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumNextOnList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaNextOnList(Z)Z

    .line 599
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOp([Ljava/lang/String;)Z
    .locals 1
    .parameter "szUIDs"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaInfo([Ljava/lang/String;)Z

    .line 524
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOpFast([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;
    .locals 2
    .parameter "albums"
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

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, albumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaOpFast([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 532
    :cond_0
    return-object v0
.end method

.method public getAlbumRecentList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaRecentList(Z)Z

    .line 592
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

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 676
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
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

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;>;"
    check-cast v0, Ljava/util/List;

    .line 700
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;>;"
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

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 714
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;>;"
    check-cast v0, Ljava/util/List;

    .line 716
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;>;"
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

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 692
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
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

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 706
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v0, Ljava/util/List;

    .line 708
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
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

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 722
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
    check-cast v0, Ljava/util/List;

    .line 724
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
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

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 684
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 3
    .parameter "medium"

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaListCount(Ljava/lang/Object;Z)Z

    .line 636
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCommentList(Lcom/htc/opensense/social/MediumOp;)Z
    .locals 2
    .parameter "mediumOp"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaList(Ljava/lang/Object;Z)Z

    .line 627
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getCurrentServiceURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
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
    .parameter "personOp"
    .parameter "bIsForceSync"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaList(Ljava/lang/Object;Z)Z

    .line 578
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaInfo3(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo2(Ljava/lang/String;)V

    .line 508
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfo(Ljava/lang/String;)Lcom/htc/opensense/social/MediumOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, mediumOp:Lcom/htc/opensense/social/MediumOp;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    .line 541
    .restart local v0       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    :cond_0
    return-object v0
.end method

.method public getMediumInfo2(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfo(Ljava/lang/String;)V

    .line 548
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 2
    .parameter "medium"
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

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v0, Ljava/util/List;

    .line 556
    .restart local v0       #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_0
    return-object v0
.end method

.method public getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "szUIDs"
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

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    check-cast v0, Ljava/util/List;

    .line 516
    .restart local v0       #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_0
    return-object v0
.end method

.method public getPersonInfo(Ljava/lang/String;)Lcom/htc/opensense/social/PersonOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, personOp:Lcom/htc/opensense/social/PersonOp;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #personOp:Lcom/htc/opensense/social/PersonOp;
    check-cast v0, Lcom/htc/opensense/social/PersonOp;

    .line 494
    .restart local v0       #personOp:Lcom/htc/opensense/social/PersonOp;
    :cond_0
    return-object v0
.end method

.method public getPersonInfo2(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo(Ljava/lang/String;)V

    .line 501
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotoList(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaList(Ljava/lang/Object;Z)Z

    .line 606
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotosOfMeList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeList(Ljava/lang/Object;ZI)Z

    .line 620
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getRecentPhotoList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentMediaList(Ljava/lang/Object;ZI)Z

    .line 613
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSocialServiceManager()Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 643
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    goto :goto_0
.end method

.method public getTagList(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 2
    .parameter "medium"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaList(Ljava/lang/Object;Z)Z

    .line 663
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountActive()Z
    .locals 6

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 211
    .local v0, account:[Landroid/accounts/Account;
    const/4 v3, -0x1

    iget v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v3, v4, :cond_0

    .line 213
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no service id availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 229
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 216
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
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

    .line 218
    if-eqz v0, :cond_1

    array-length v3, v0

    if-nez v3, :cond_2

    .line 220
    :cond_1
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountActive]: no active account availabled..."

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    :goto_1
    move v2, v1

    .line 229
    .restart local v2       #bResult:I
    goto :goto_0

    .line 225
    .end local v2           #bResult:I
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

    .line 226
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isAccountStatusChanged()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 237
    const/4 v1, 0x1

    .line 243
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 245
    .local v0, account:[Landroid/accounts/Account;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 247
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v3, v3

    if-nez v3, :cond_1

    .line 249
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

    .line 264
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 252
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
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

    .line 255
    .restart local v2       #bResult:I
    goto :goto_0

    .line 259
    .end local v2           #bResult:I
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

    .line 260
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: no change just skip!"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v1, 0x0

    move v2, v1

    .line 264
    .restart local v2       #bResult:I
    goto :goto_0
.end method

.method public isExistActiveUserCache()Z
    .locals 2

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isExistActiveUserCache()Z

    move-result v0

    .line 564
    :cond_0
    return v0
.end method

.method public isExistingAccount()Z
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 270
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :cond_0
    return v0
.end method

.method public isFlaggedLoginAction()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 121
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 122
    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDestroy()V

    .line 127
    :cond_0
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    .line 129
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDestroy()V

    .line 131
    :cond_1
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 133
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDestroy()V

    .line 135
    :cond_2
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 137
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->onDestroy()V

    .line 139
    :cond_3
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    .line 141
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->onDestroy()V

    .line 143
    :cond_4
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 145
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 147
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 149
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 151
    return-void
.end method

.method public resetActiveAccount()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 234
    return-void
.end method

.method public resetFlagLoginAction()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 299
    return-void
.end method

.method public scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z
    .locals 9
    .parameter "szService"
    .parameter "hDataHandler"
    .parameter "hUIHandler"

    .prologue
    const/4 v8, 0x1

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    .line 203
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 159
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
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

    .line 160
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    const-string v6, "SupportGallery"

    invoke-static {v5, v6}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 162
    .local v4, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
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

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, index:I
    const/4 v3, 0x0

    .line 168
    .local v3, index2:I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 171
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 173
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

    .line 175
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iput-boolean v8, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 171
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_4
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 187
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-boolean v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    if-nez v5, :cond_6

    .line 185
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 190
    :cond_6
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    const/4 v0, 0x1

    .line 194
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 195
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 197
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 198
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

    .line 203
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method public setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V
    .locals 1
    .parameter "medium"
    .parameter "szComment"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 657
    :cond_0
    return-void
.end method

.method public setPhotoTags(Lcom/htc/opensense/social/data/Medium;Ljava/util/List;)V
    .locals 1
    .parameter "medium"
    .parameter
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

    .prologue
    .line 667
    .local p2, faceTags:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 669
    :cond_0
    return-void
.end method

.method public syncActiveAccount()V
    .locals 4

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, account:[Landroid/accounts/Account;
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 282
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    .line 284
    :cond_0
    return-void
.end method

.method public updateFriendList(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objList"

    .prologue
    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->updateCacheList(Ljava/lang/Object;)Z

    .line 732
    :cond_0
    return v0
.end method
