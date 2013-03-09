.class public Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SocialNetworkService"
.end annotation


# instance fields
.field public mIsSupported:Z

.field public mServiceName:Ljava/lang/String;

.field public mServiceURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 102
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    return-void
.end method
