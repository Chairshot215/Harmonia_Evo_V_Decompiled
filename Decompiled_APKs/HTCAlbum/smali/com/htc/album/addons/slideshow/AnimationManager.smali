.class public Lcom/htc/album/addons/slideshow/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# static fields
.field public static ANIMATION_TRANSITION_DEFAULT:I

.field public static ANIMATION_TRANSITION_RANDOMIZED:I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimIn:[I

.field private mAnimOut:[I

.field private mAnimSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimSize:I

.field private mAnimTransition:I

.field private mAnimTransitionCurrent:I

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/album/addons/slideshow/AnimationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/AnimationManager;->LOG_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    .line 26
    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    .line 27
    invoke-static {}, Lcom/htc/album/Customizable/CustAnimationSet;->getAnimationIn()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    .line 28
    invoke-static {}, Lcom/htc/album/Customizable/CustAnimationSet;->getAnimationOut()[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-void
.end method

.method private getAnimationTransition()I
    .locals 4

    .prologue
    .line 63
    sget v1, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    iget v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    if-ne v1, v2, :cond_1

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 66
    .local v0, rand:Ljava/util/Random;
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    .line 73
    .end local v0           #rand:Ljava/util/Random;
    :goto_0
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 75
    sget v1, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    .line 76
    const-string v1, "HTCAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AnimationManager][getAnimationTransition]: CurTransistion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") sholdn\'t in 2D Slideshow."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    return v1

    .line 70
    :cond_1
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransitionCurrent:I

    goto :goto_0
.end method


# virtual methods
.method public getAnimationIn()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getAnimationInReversed()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 111
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationIn()Landroid/view/animation/Animation;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 104
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animation:Landroid/view/animation/Animation;
    check-cast v0, Landroid/view/animation/Animation;

    .line 105
    .restart local v0       #animation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 108
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040011

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animation:Landroid/view/animation/Animation;
    check-cast v0, Landroid/view/animation/Animation;

    .line 109
    .restart local v0       #animation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040012 -> :sswitch_1
        0x7f040016 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnimationIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    return v0
.end method

.method public getAnimationOut()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getAnimationOutReversed()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationTransition()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AnimationManager;->getAnimationOut()Landroid/view/animation/Animation;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040019

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animation:Landroid/view/animation/Animation;
    check-cast v0, Landroid/view/animation/Animation;

    .line 124
    .restart local v0       #animation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 127
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animation:Landroid/view/animation/Animation;
    check-cast v0, Landroid/view/animation/Animation;

    .line 128
    .restart local v0       #animation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040012 -> :sswitch_1
        0x7f040016 -> :sswitch_0
    .end sparse-switch
.end method

.method public initAnimations(Landroid/content/Context;Lcom/htc/album/addons/slideshow/SlideshowSetingManager;)V
    .locals 4
    .parameter "context"
    .parameter "slideshowSettingManager"

    .prologue
    .line 37
    if-eqz p2, :cond_0

    .line 38
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/slideshow/AnimationManager;->syncPreferenceAnimSettings(Landroid/content/Context;)V

    .line 44
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    array-length v1, v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    .line 48
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSize:I

    if-le v1, v0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimIn:[I

    aget v3, v3, v0

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimSets:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimOut:[I

    aget v3, v3, v0

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    .end local v0           #nIndex:I
    :cond_0
    const-string v1, "HTCAlbum"

    const-string v2, "[HTCAlbum][AnimationManager][initAnimations]: mSettingMgr shouldn\'t null !!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public isRandomized()Z
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_RANDOMIZED:I

    iget v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncPreferenceAnimSettings(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "slide_show_transition_setting"

    sget v3, Lcom/htc/album/addons/slideshow/AnimationManager;->ANIMATION_TRANSITION_DEFAULT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, szAnimTransition:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/slideshow/AnimationManager;->mAnimTransition:I

    .line 60
    return-void
.end method
