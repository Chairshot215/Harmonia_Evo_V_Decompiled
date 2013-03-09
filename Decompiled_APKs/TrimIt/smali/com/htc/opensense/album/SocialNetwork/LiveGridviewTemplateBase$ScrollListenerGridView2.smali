.class public Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;
.super Ljava/lang/Object;
.source "LiveGridviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/HtcGridView2$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollListenerGridView2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$1100(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setVisibleRange(II)V

    .line 163
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/opensense/widget/HtcGridView2;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$700(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$800(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 153
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase$ScrollListenerGridView2;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;->access$900(Lcom/htc/opensense/album/SocialNetwork/LiveGridviewTemplateBase;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setScrollState(II)V

    .line 156
    .end local v0           #adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    :cond_0
    return-void
.end method
