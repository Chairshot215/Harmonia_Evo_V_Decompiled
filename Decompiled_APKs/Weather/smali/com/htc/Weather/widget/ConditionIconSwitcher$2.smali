.class Lcom/htc/Weather/widget/ConditionIconSwitcher$2;
.super Ljava/lang/Object;
.source "ConditionIconSwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/ConditionIconSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/ConditionIconSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #calls: Lcom/htc/Weather/widget/ConditionIconSwitcher;->animationEnd()V
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$100(Lcom/htc/Weather/widget/ConditionIconSwitcher;)V

    .line 289
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 290
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 293
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 296
    :cond_0
    return-void
.end method
