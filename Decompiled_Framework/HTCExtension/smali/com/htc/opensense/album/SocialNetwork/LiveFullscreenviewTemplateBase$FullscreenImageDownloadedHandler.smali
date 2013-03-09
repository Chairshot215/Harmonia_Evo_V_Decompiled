.class Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;
.super Ljava/lang/Object;
.source "LiveFullscreenviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullscreenImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1300(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1400(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/16 v1, 0x1397

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method
