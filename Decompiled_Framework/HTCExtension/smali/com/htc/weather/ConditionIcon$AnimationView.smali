.class Lcom/htc/weather/ConditionIcon$AnimationView;
.super Landroid/widget/ImageView;
.source "ConditionIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/ConditionIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationView"
.end annotation


# instance fields
.field private animsetIn:Landroid/view/animation/AnimationSet;

.field private animsetOut:Landroid/view/animation/AnimationSet;

.field private animsetRest:Landroid/view/animation/AnimationSet;

.field final synthetic this$0:Lcom/htc/weather/ConditionIcon;


# direct methods
.method public constructor <init>(Lcom/htc/weather/ConditionIcon;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->this$0:Lcom/htc/weather/ConditionIcon;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAnimationSetIn()Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetOut()Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetRest()Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public playInAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public playOutAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public playResetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimaitonSetIn(Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public setAnimaitonSetOut(Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method public setAnimaitonSetRest(Landroid/view/animation/AnimationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    return-void
.end method
