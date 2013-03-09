.class public Lcom/htc/Weather/widget/ConditionIconSwitcher;
.super Ljava/lang/Object;
.source "ConditionIconSwitcher.java"


# static fields
.field public static final SWITCH_IN:I = 0x1

.field public static final SWITCH_NO_ANIMATION:I = 0x0

.field public static final SWITCH_OUT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ConditionIconSwitcher"

.field private static final localLOG:Z


# instance fields
.field private mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

.field private mConditionIcon:Lcom/htc/weather/ConditionIcon;

.field private mConditionIcon2:Lcom/htc/weather/ConditionIcon;

.field private mConditionId:I

.field private mConditionId2:I

.field private mContext:Landroid/content/Context;

.field private mEnv:Lcom/htc/weather/EnvSetting$Env;

.field private mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field mListMap:Lcom/htc/weather/AnimationList;

.field private mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSwitchInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mSwitchOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 33
    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    .line 270
    new-instance v0, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher$1;-><init>(Lcom/htc/Weather/widget/ConditionIconSwitcher;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 284
    new-instance v0, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher$2;-><init>(Lcom/htc/Weather/widget/ConditionIconSwitcher;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/ConditionIconSwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->animationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/widget/ConditionIconSwitcher;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private animationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 230
    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 232
    :cond_0
    return-void
.end method

.method private clearAnimation(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 215
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 223
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public static releaseImageCache()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createConditionIcons(Landroid/content/Context;Lcom/htc/weather/AnimationList;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "parent"

    .prologue
    const/4 v2, -0x1

    .line 58
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mListMap:Lcom/htc/weather/AnimationList;

    .line 62
    if-eqz p3, :cond_1

    .line 63
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/weather/ConditionIcon;-><init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 65
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setEnv(Lcom/htc/weather/EnvSetting$Env;)V

    .line 66
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/weather/ConditionIcon;-><init>(Landroid/content/Context;Lcom/htc/weather/AnimationList;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    .line 70
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setEnv(Lcom/htc/weather/EnvSetting$Env;)V

    .line 71
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 76
    return-void
.end method

.method public destroyConditionIcons(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x8000

    .line 247
    invoke-virtual {p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->stopAnimation()V

    .line 248
    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 249
    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    .line 251
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    :cond_0
    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_3

    .line 257
    if-eqz p1, :cond_2

    .line 258
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_2
    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    .line 263
    :cond_3
    return-void
.end method

.method public getConditionId()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    return v0
.end method

.method public playAnimation(II)V
    .locals 5
    .parameter "nDir1"
    .parameter "nDir2"

    .prologue
    const/4 v4, 0x4

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    if-eq v0, v3, :cond_0

    .line 173
    if-nez p2, :cond_2

    .line 174
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v4}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    if-eq v0, v3, :cond_1

    .line 191
    if-lez p1, :cond_4

    .line 192
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 193
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->playInAnimation()V

    .line 194
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 205
    :cond_1
    :goto_1
    return-void

    .line 176
    :cond_2
    if-lez p2, :cond_3

    .line 177
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 178
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->playInAnimation()V

    .line 179
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_3
    if-gez p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->bringToFront()V

    .line 182
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 183
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->playOutAnimation()V

    .line 184
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    goto :goto_0

    .line 195
    :cond_4
    if-gez p1, :cond_5

    .line 196
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->bringToFront()V

    .line 197
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mSwitchOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0}, Lcom/htc/weather/ConditionIcon;->playOutAnimation()V

    .line 199
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    goto :goto_1

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v4}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    goto :goto_1
.end method

.method public playTransition()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->playAnimation(II)V

    .line 210
    return-void
.end method

.method public resetConditionId()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 90
    invoke-virtual {p0, v0, v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->setConditionId(II)V

    .line 91
    return-void
.end method

.method public resetListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v1}, Lcom/htc/weather/ConditionIcon;->setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    :cond_1
    return-void
.end method

.method public setConditionId(II)V
    .locals 3
    .parameter "curId"
    .parameter "prevId"

    .prologue
    const/4 v2, 0x4

    const/high16 v1, -0x8000

    .line 94
    invoke-virtual {p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->resetListener()V

    .line 96
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    .line 97
    if-eq p2, v1, :cond_3

    .line 98
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    if-eq v0, p2, :cond_0

    .line 101
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    if-ne p2, v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 104
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    .line 105
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 106
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 115
    :cond_0
    :goto_0
    iput p2, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    .line 117
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    .line 118
    if-eq p1, v1, :cond_4

    .line 119
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    if-eq v0, p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, p1}, Lcom/htc/weather/ConditionIcon;->setConditionId(I)V

    .line 126
    :cond_1
    :goto_1
    iput p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 128
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, p2}, Lcom/htc/weather/ConditionIcon;->setConditionId(I)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    goto :goto_1
.end method

.method public setEnv(Lcom/htc/weather/EnvSetting$Env;)V
    .locals 0
    .parameter "env"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    .line 46
    return-void
.end method

.method public setInAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mInAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 165
    return-void
.end method

.method public setNextConditionId(I)V
    .locals 3
    .parameter "conditionId"

    .prologue
    const/high16 v2, -0x8000

    .line 132
    invoke-virtual {p0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->resetListener()V

    .line 134
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v1, :cond_0

    .line 135
    iget v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    if-eq v1, v2, :cond_0

    .line 137
    iget v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    .line 138
    .local v0, nId:I
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 139
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    .line 140
    iget v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    iput v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId2:I

    .line 141
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 142
    iput v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 146
    .end local v0           #nId:I
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v1, :cond_2

    .line 147
    if-eq p1, v2, :cond_3

    .line 148
    iget v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    if-eq v1, p1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v1, p1}, Lcom/htc/weather/ConditionIcon;->setConditionId(I)V

    .line 154
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionId:I

    .line 156
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 157
    return-void

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mOutAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 169
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, p1}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-virtual {v0, p1}, Lcom/htc/weather/ConditionIcon;->setVisibility(I)V

    .line 55
    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mBackConditionIcon:Lcom/htc/weather/ConditionIcon;

    .line 237
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon2:Lcom/htc/weather/ConditionIcon;

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->clearAnimation(Landroid/view/ViewGroup;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/htc/Weather/widget/ConditionIconSwitcher;->mConditionIcon:Lcom/htc/weather/ConditionIcon;

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/ConditionIconSwitcher;->clearAnimation(Landroid/view/ViewGroup;)V

    .line 244
    :cond_1
    return-void
.end method
