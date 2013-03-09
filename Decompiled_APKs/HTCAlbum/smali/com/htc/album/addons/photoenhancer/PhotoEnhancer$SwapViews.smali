.class final Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private mClickable:Z

.field private mViewVisibility:I

.field private mVisibility:I

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mVisibility:I

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mViewVisibility:I

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mClickable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;-><init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationCacheEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setDrawingCacheEnabled(Z)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mClickable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mViewVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mVisibility:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 163
    :cond_4
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mClickable:Z

    .line 139
    return-void
.end method

.method public setViewVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 141
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mViewVisibility:I

    .line 142
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 135
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->mVisibility:I

    .line 136
    return-void
.end method
