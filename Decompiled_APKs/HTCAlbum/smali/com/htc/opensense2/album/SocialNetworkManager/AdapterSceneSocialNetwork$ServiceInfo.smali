.class public Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;
.super Ljava/lang/Object;
.source "AdapterSceneSocialNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mAlbumIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAlbumName:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mMediumIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPersonOp:Lcom/htc/opensense/social/PersonOp;

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

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method
