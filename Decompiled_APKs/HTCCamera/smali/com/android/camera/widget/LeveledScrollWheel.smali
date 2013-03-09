.class public Lcom/android/camera/widget/LeveledScrollWheel;
.super Lcom/android/camera/widget/ScrollWheel;
.source "LeveledScrollWheel.java"

# interfaces
.implements Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeveledScrollWheel"


# instance fields
.field private mCurLevel:I

.field private mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

.field private mLevelNum:I

.field private mLevelsInLength:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/widget/ScrollWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->initHtcScrollView()V

    return-void
.end method

.method private findNearestSlot()I
    .locals 7

    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    :cond_2
    const/4 v3, 0x0

    const v2, 0x7fffffff

    iget v4, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollX:I

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v5, v5, v1

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_3

    move v3, v1

    move v2, v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initHtcScrollView()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->setMinMax(II)Z

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->setDefaultPixScrollSpeed(I)V

    invoke-virtual {p0, p0}, Lcom/android/camera/widget/LeveledScrollWheel;->setOnScrollListener(Lcom/android/camera/widget/HorizontalEasingScrollView$OnScrollListener;)V

    return-void
.end method

.method private updateLevelsInLength()V
    .locals 7

    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    iget v5, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    iget v6, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    sub-int/2addr v5, v6

    int-to-long v3, v5

    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    div-long v1, v3, v5

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    invoke-super {p0, v0}, Lcom/android/camera/widget/ScrollWheel;->convertFromRangeToWheelLength(I)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSlots()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateLevelsInLength()V

    iget v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    return-void
.end method


# virtual methods
.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x11

    const/16 v7, 0xf

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {v6, p0, v0, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    invoke-super {p0}, Lcom/android/camera/widget/ScrollWheel;->getInverse()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v1

    goto :goto_0

    :pswitch_0
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    mul-int/lit8 v6, v3, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5, v4, v7}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    iget v5, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    mul-int/lit8 v6, v3, 0x1

    add-int/2addr v5, v6

    invoke-virtual {p0, v5, v4, v7}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findNearestSlot()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZ)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/camera/widget/ScrollWheel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->findNearestSlot()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/widget/LeveledScrollWheel;->setCurrentLevel(I)Z

    :cond_0
    return v0
.end method

.method public scrollToLevel(IZ)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollToLevel(IZI)Z

    move-result v0

    return v0
.end method

.method public scrollToLevel(IZI)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-nez v1, :cond_1

    const-string v1, "LeveledScrollWheel"

    const-string v2, "levels not set, return ;"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-lt p1, v1, :cond_3

    :cond_2
    const-string v1, "LeveledScrollWheel"

    const-string v2, "levelNum out of bound, return "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/widget/LeveledScrollWheel;->setCurrentLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_5

    if-lez p3, :cond_4

    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/camera/widget/LeveledScrollWheel;->smoothScrollTo(III)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->smoothScrollTo(II)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/android/camera/widget/HorizontalEasingScrollView;->mScrollY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/widget/LeveledScrollWheel;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCurrentLevel(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    if-nez v1, :cond_0

    const-string v1, "LeveledScrollWheel"

    const-string v2, "mLevelsInLength not set, return ;"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    if-lt p1, v1, :cond_2

    :cond_1
    const-string v1, "LeveledScrollWheel"

    const-string v2, "levelNum out of bound, return "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    iget-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    iget-object v1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelsInLength:[I

    aget v1, v1, p1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;->onLevelChanged(II)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMinMax(II)Z
    .locals 2

    if-lt p1, p2, :cond_0

    const-string v0, "LeveledScrollWheel"

    const-string v1, "min >= max!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    iput p2, p0, Lcom/android/camera/widget/ScrollWheel;->mMax:I

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelNum:I

    iget v0, p0, Lcom/android/camera/widget/ScrollWheel;->mMin:I

    iput v0, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mCurLevel:I

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateLevelsInLength()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnLevelChangedListner(Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/LeveledScrollWheel;->mLevelChangedListener:Lcom/android/camera/widget/LeveledScrollWheel$OnLevelChangedListener;

    return-void
.end method

.method public updateProgToLengthRatio()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/widget/ScrollWheel;->updateProgToLengthRatio()V

    invoke-direct {p0}, Lcom/android/camera/widget/LeveledScrollWheel;->updateSlots()V

    return-void
.end method
