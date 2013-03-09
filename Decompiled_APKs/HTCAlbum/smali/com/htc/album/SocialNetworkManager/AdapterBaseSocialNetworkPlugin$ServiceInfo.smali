.class public Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;
.super Ljava/lang/Object;
.source "AdapterBaseSocialNetworkPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mAlbumName:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mIsEnableRecentList:Z

.field public mIsEnableSort:Z

.field public mIsFlagDisplay:Z

.field public mIsForceUpdate:Z

.field public mIsInternal:Z

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field public mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;


# direct methods
.method public constructor <init>(Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->this$0:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    .line 58
    iput-boolean v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsFlagDisplay:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsInternal:Z

    return-void
.end method
