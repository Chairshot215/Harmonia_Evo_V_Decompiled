.class public Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;
.super Ljava/lang/Object;
.source "ActivityMainMaBaseHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceInfo"
.end annotation


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mMediumOp:Lcom/htc/opensense/social/MediumOp;

.field public mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field public mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

.field public mPhotoID:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserID:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mPhotoID:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mUserID:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 44
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 45
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mMediumOp:Lcom/htc/opensense/social/MediumOp;

    return-void
.end method
