.class Lcom/htc/store/module/view/PromoSwitcher$2;
.super Ljava/lang/Object;
.source "PromoSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/view/PromoSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/view/PromoSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/store/module/view/PromoSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "anim"

    .prologue
    const v3, 0xc7b0

    const/4 v4, 0x1

    .line 512
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #setter for: Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z
    invoke-static {v0, v4}, Lcom/htc/store/module/view/PromoSwitcher;->access$402(Lcom/htc/store/module/view/PromoSwitcher;Z)Z

    .line 513
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$300(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$300(Lcom/htc/store/module/view/PromoSwitcher;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 515
    invoke-static {}, Lcom/htc/store/module/view/PromoSwitcher;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onAnimationEnd: "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z
    invoke-static {v2}, Lcom/htc/store/module/view/PromoSwitcher;->access$400(Lcom/htc/store/module/view/PromoSwitcher;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 521
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 526
    invoke-static {}, Lcom/htc/store/module/view/PromoSwitcher;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onAnimationStart: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/store/module/view/PromoSwitcher$2;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mCanChangePromo:Z
    invoke-static {v3}, Lcom/htc/store/module/view/PromoSwitcher;->access$400(Lcom/htc/store/module/view/PromoSwitcher;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    return-void
.end method
