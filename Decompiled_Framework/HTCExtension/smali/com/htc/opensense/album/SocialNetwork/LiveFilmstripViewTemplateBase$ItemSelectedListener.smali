.class Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;
.super Ljava/lang/Object;
.source "LiveFilmstripViewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemSelectedListener"
.end annotation


# instance fields
.field private isRequestThumbnail:Z

.field private lastIndex:I

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->lastIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->isRequestThumbnail:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onFilmstripviewItemSelected(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$100(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$200(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$300(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mTitleCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->setMaxIndicatorWidth()I

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->onUpdateViewTitleCount(II)V

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$400(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcFilmstripView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->lastIndex:I

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    iget v1, v1, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    iget v0, v0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->mPhotoPos:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->lastIndex:I

    invoke-virtual {v6, p3, v8}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    invoke-virtual {v6, v8}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->deocderResumePause(Z)V

    :cond_2
    return-void
.end method

.method public onNothingSelected(Lcom/htc/opensense/widget/AlbumAdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/opensense/widget/AlbumAdapterView;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$500(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->access$600(Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/widget/HtcFilmstripView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcFilmstripView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setScrollState(II)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase$ItemSelectedListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFilmstripViewTemplateBase;->ForceGalleryBeFocused()Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0
.end method
