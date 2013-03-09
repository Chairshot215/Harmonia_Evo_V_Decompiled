.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z
    invoke-static {v0, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Z)Z

    .line 663
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->setClickable(Z)V

    .line 665
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;->setViewVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$9;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mSwapViews:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;
    invoke-static {v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$3000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$SwapViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 660
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 659
    return-void
.end method
