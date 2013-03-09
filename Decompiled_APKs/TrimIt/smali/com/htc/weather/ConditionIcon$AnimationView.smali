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
    .parameter
    .parameter "context"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->this$0:Lcom/htc/weather/ConditionIcon;

    .line 430
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 431
    return-void
.end method


# virtual methods
.method public getAnimationSetIn()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetOut()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getAnimationSetRest()Landroid/view/animation/AnimationSet;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public playInAnimation()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 462
    :cond_0
    return-void
.end method

.method public playOutAnimation()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    :cond_0
    return-void
.end method

.method public playResetAnimation()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/htc/weather/ConditionIcon$AnimationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    :cond_0
    return-void
.end method

.method public setAnimaitonSetIn(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetIn:Landroid/view/animation/AnimationSet;

    .line 435
    return-void
.end method

.method public setAnimaitonSetOut(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetOut:Landroid/view/animation/AnimationSet;

    .line 451
    return-void
.end method

.method public setAnimaitonSetRest(Landroid/view/animation/AnimationSet;)V
    .locals 0
    .parameter "am"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/weather/ConditionIcon$AnimationView;->animsetRest:Landroid/view/animation/AnimationSet;

    .line 443
    return-void
.end method
