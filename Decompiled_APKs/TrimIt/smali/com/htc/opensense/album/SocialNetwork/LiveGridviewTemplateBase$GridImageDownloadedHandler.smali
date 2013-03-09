.class Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$000(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 90
    :cond_0
    move v1, p1

    .line 91
    .local v1, pos:I
    new-instance v2, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;-><init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
