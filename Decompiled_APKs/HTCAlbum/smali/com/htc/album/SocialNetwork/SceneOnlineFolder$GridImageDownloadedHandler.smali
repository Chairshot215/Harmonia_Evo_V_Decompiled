.class Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;
.super Ljava/lang/Object;
.source "SceneOnlineFolder.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->access$000(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/sunny2/widget/gridview/GridView;->notifyPreparatorMediaDataChange(II)V

    .line 121
    return-void
.end method
