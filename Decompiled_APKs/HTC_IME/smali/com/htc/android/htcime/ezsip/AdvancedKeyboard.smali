.class public Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;
.super Lcom/htc/android/htcime/ezsip/Keyboard;
.source "AdvancedKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;,
        Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final INFO:Z = false

.field private static final OPACITY_FULLY_OPAQUE:I = 0xff

.field private static final SPACEBAR_DRAG_THRESHOLD_RATIO:F = 0.8f

.field private static SPACEBAR_DRAG_THRESHOLD_SYM:I = 0x0

.field private static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACEBAR_POPUP_MIN_RATIO:F = 0.4f

.field static final TAG:Ljava/lang/String; = "AdvancedKeyboard"


# instance fields
.field private EnableSpaceSlideChangeLocale:Z

.field private EnableSpaceSlideChangeSym:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private mHasSpace:Z

.field private mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

.field private mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

.field private mSpaceDragLastDiff:I

.field private mSpaceDragStartX:I

.field private mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceRepeatable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x1e

    sput v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->SPACEBAR_DRAG_THRESHOLD_SYM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    .line 40
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    .line 45
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceRepeatable:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mHasSpace:Z

    .line 64
    iput v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    .line 50
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    sput v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->SPACEBAR_DRAG_THRESHOLD_SYM:I

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceRepeatable:Z

    .line 59
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->enableSpaceSlideChangeSym(Z)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;)Lcom/htc/android/htcime/util/SIPSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    return-object v0
.end method

.method private checkSpaceKeyRepeat()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-eqz v0, :cond_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceRepeatable:Z

    iput-boolean v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->repeatable:Z

    goto :goto_0
.end method


# virtual methods
.method public enableSpaceSlideChangeLocale(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    .line 350
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->checkSpaceKeyRepeat()V

    .line 353
    return-void
.end method

.method public enableSpaceSlideChangeSym(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    .line 357
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->checkSpaceKeyRepeat()V

    .line 361
    return-void
.end method

.method public getChangeDirection()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 302
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v5, :cond_7

    :cond_0
    iget v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    if-eqz v5, :cond_7

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, ret:I
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 305
    .local v1, spacekey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_6

    .line 306
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    int-to-float v6, v6

    const v7, 0x3f4ccccd

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    move v2, v3

    .line 313
    .local v2, under_threshold:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 314
    const/4 v0, 0x0

    .line 322
    .end local v0           #ret:I
    .end local v1           #spacekey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v2           #under_threshold:Z
    :goto_1
    return v0

    .restart local v0       #ret:I
    .restart local v1       #spacekey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_1
    move v2, v4

    .line 306
    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget v6, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->SPACEBAR_DRAG_THRESHOLD_SYM:I

    if-ge v5, v6, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 316
    .restart local v2       #under_threshold:Z
    :cond_4
    iget v4, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    if-lez v4, :cond_5

    move v0, v3

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 318
    .end local v2           #under_threshold:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .end local v0           #ret:I
    .end local v1           #spacekey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_7
    move v0, v4

    .line 322
    goto :goto_1
.end method

.method isInside(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;IIZ)Z
    .locals 6
    .parameter "key"
    .parameter "x"
    .parameter "y"
    .parameter "tracing"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    iget-object v5, p1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;->codes:[I

    aget v0, v5, v4

    .line 71
    .local v0, code:I
    if-nez p4, :cond_4

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v5, :cond_4

    :cond_0
    const/16 v5, 0x20

    if-ne v0, v5, :cond_4

    .line 73
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    if-eqz v5, :cond_3

    .line 74
    iget v4, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragStartX:I

    sub-int v1, p2, v4

    .line 75
    .local v1, diff:I
    iget v4, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->updateLocaleDrag(I)V

    .line 78
    :cond_1
    iput v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    move v2, v3

    .line 94
    .end local v1           #diff:I
    :cond_2
    :goto_0
    return v2

    .line 81
    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;->insideSuper(II)Z

    move-result v2

    .line 82
    .local v2, insideSpace:Z
    if-eqz v2, :cond_2

    .line 83
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    .line 84
    iput p2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragStartX:I

    .line 85
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->updateLocaleDrag(I)V

    goto :goto_0

    .line 92
    .end local v2           #insideSpace:Z
    :cond_4
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    if-eqz v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;->insideSuper(II)Z

    move-result v2

    goto :goto_0
.end method

.method public isSlideFunctionEnable()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v0, :cond_1

    .line 367
    :cond_0
    const/4 v0, 0x1

    .line 369
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderSpace()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    return v0
.end method

.method public keyrelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeSym:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_1

    .line 332
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mCurrentlyInSpace:Z

    .line 333
    iput v1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceDragLastDiff:I

    .line 334
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 335
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->updateLocaleDrag(I)V

    .line 339
    :cond_1
    return-void
.end method

.method protected newKey(IIIII)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "gap"

    .prologue
    .line 99
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$AdvKey;-><init>(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;Lcom/htc/android/htcime/ezsip/Keyboard;IIIII)V

    return-object v0
.end method

.method public setSIPSwitcher(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 0
    .parameter "switcher"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    .line 346
    return-void
.end method

.method public setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .locals 1
    .parameter "set"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 138
    .local v0, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->checkSpaceKeyRepeat()V

    .line 139
    return-object v0
.end method

.method protected updateLocaleDrag(I)V
    .locals 5
    .parameter "diff"

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->EnableSpaceSlideChangeLocale:Z

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSIPSwitcher:Lcom/htc/android/htcime/util/SIPSwitcher;

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 274
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    if-nez v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    .line 276
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 278
    .local v0, height:I
    new-instance v2, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;-><init>(Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    .line 279
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, v4, v4, v1, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 280
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 282
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, p1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;->setDiff(I)V

    .line 283
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3

    .line 284
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 288
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSpaceKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->mSlidingLocaleIcon:Lcom/htc/android/htcime/ezsip/AdvancedKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
