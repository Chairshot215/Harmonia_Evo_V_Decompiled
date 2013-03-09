.class public Lcom/htc/lockscreen/app/widget/UnlockHintView;
.super Landroid/widget/FrameLayout;
.source "UnlockHintView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/widget/UnlockHintView$State;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "UnlockHintView"

.field private static final WHAT_ON_STOP:I = 0x1


# instance fields
.field mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

.field mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

.field mArrowL:Landroid/widget/ImageView;

.field mArrowR:Landroid/widget/ImageView;

.field mHint:Landroid/widget/TextView;

.field mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

.field mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->STOP:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    .line 34
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockHintView;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->initView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->STOP:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    .line 34
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockHintView;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    .line 50
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->initView()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->STOP:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    .line 34
    new-instance v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView$1;-><init>(Lcom/htc/lockscreen/app/widget/UnlockHintView;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    .line 55
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->initView()V

    .line 56
    return-void
.end method

.method private setArrowAnimation()V
    .locals 5

    .prologue
    .line 74
    const-string v2, "UnlockHintView"

    const-string v3, " setArrowAnimation"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 80
    .local v1, in:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->clearAnimation()V

    .line 82
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 85
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    .line 87
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    .end local v1           #in:Landroid/view/animation/Animation;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "UnlockHintView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setArrowAnimation fail e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "UnlockHintView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setArrowAnimation fail e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mContext:Landroid/content/Context;

    const v1, 0x7f030016

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mHint:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    .line 63
    return-void
.end method

.method public resetLayout()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f07002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 137
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    .restart local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f07002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 143
    iget-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "hintResId"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method

.method public startArrowAnime(J)V
    .locals 3
    .parameter "howLong"

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    sget-object v1, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->START:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    if-eq v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->START:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    .line 99
    invoke-direct {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->setArrowAnimation()V

    .line 100
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 102
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 109
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    :cond_1
    return-void

    .line 105
    :cond_2
    const-string v0, "UnlockHintView"

    const-string v1, "startArrowAnime fail"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopArrowAnime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 118
    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeL:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowL:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 123
    iput-object v2, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mAnimeR:Landroid/graphics/drawable/AnimationDrawable;

    .line 124
    iget-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mArrowR:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/widget/UnlockHintView;->clearAnimation()V

    .line 128
    sget-object v0, Lcom/htc/lockscreen/app/widget/UnlockHintView$State;->STOP:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/widget/UnlockHintView;->mState:Lcom/htc/lockscreen/app/widget/UnlockHintView$State;

    .line 129
    return-void
.end method
