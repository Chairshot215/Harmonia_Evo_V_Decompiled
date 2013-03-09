.class Lcom/htc/Weather/widget/ConditionIconSwitcher$1;
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
    .line 270
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;->this$0:Lcom/htc/Weather/widget/ConditionIconSwitcher;

    #getter for: Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 281
    :cond_0
    return-void
.end method
