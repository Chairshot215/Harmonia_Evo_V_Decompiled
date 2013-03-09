.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$7;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialAnimationListener()V
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
    .line 520
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$7;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$7;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mTwoWayGallery:Lcom/htc/album/addons/photoenhancer/TwoWayGallery;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/TwoWayGallery;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/TwoWayGallery;->setVisibility(I)V

    .line 526
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 523
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 522
    return-void
.end method
