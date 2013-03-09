.class Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->onImageDownloaded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$100(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$200(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$300(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 100
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    const/16 v1, 0x4eec

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getUIState()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x4eea

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getUIState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 112
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v0       #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->this$1:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$400(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2;

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$GridImageDownloadedHandler$1;->val$pos:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/widget/HtcGridView2;->notifyDataChanged(I)V

    goto :goto_0
.end method
