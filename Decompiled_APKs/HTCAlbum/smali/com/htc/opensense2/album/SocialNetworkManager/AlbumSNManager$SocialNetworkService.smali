.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocialNetworkService"
.end annotation


# instance fields
.field public mIsOpenSense:Z

.field public mIsSupported:Z

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 109
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsOpenSense:Z

    .line 112
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 113
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    return-void
.end method
