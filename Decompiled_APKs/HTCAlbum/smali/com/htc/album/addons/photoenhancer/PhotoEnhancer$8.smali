.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTime:J

.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->lastTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->lastTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1600()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 551
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->lastTime:J

    .line 553
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setDrawingCacheEnabled(Z)V

    .line 555
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setAnimationCacheEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialImageAnimation()V
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V

    .line 562
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->orientation:I
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryOutL:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniOut:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 564
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniGalleryInL:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniIn:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2102(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 565
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->startAnimation(Landroid/view/animation/Animation;)V

    .line 572
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageOut:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 579
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 580
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2600(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 593
    :goto_1
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->galleryAniIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniImageIn:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 586
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->aniBtnIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2800(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 587
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$500(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/widget/HeaderBarMiddle;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->headerBarAniIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 590
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$8;->lastTime:J

    goto :goto_1
.end method
