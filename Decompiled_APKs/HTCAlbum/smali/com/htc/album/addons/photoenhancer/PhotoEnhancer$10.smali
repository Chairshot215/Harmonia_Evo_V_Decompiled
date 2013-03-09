.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;
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
    .line 675
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->img_status:Z
    invoke-static {v0, v1}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$2302(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Z)Z

    .line 684
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 685
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 681
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$10;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->fullImgaeView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 680
    return-void
.end method
