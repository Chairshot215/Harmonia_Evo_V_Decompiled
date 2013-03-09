.class public Lcom/htc/android/htcime/ezsip/common/AccentWindow;
.super Ljava/util/Observable;
.source "AccentWindow.java"


# static fields
.field public static final CP_SIPNAME:I = 0x4

.field public static final CS_LETTER:I = 0x3

.field private static final DUMPLOG:Z = false

.field public static final LETTER:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccentWindow"

.field public static final SHIFT:I = 0x3

.field public static final STRING:I = 0x1

.field public static final SYMBOL:I = 0x2

.field public static final Shift:I = 0x2

.field public static final UNKNOWN:I = 0x4

.field private static mFirstAxisX:I = 0x0

.field private static mFirstMove:Z = false

.field private static mShowTime:J = 0x0L

.field public static final shift:I = 0x1


# instance fields
.field private final TOUCH_TRESHOLD:I

.field private mAccentCPSipNameLayout:I

.field private mAccentStringLayout:I

.field private mAccentStringSize:I

.field private mAccentView:Landroid/widget/LinearLayout;

.field private mAccentViewLayout:I

.field private mAccentWindow:Landroid/widget/PopupWindow;

.field private mAccentWordLayout:I

.field private mContext:Landroid/content/Context;

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumberOfLetters:I

.field private mOffsetInWindow:[I

.field private mPaddingHorizontal:D

.field private mPaddingVertical:D

.field private mScreenWidth:I

.field private mShiftTop:I

.field private mWordDownBg:Landroid/graphics/drawable/Drawable;

.field private mWordIndex:I

.field private mWordUpBg:Landroid/graphics/drawable/Drawable;

.field private sAccentSym4thFSize:I

.field private sAccentSym8thFSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShowTime:J

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstMove:Z

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstAxisX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 6
    .parameter "context"
    .parameter "htcIMM"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->TOUCH_TRESHOLD:I

    .line 59
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    .line 60
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 61
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    .line 62
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 64
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    .line 65
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordUpBg:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    .line 67
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    .line 68
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentViewLayout:I

    .line 69
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWordLayout:I

    .line 70
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringLayout:I

    .line 71
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentCPSipNameLayout:I

    .line 72
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShiftTop:I

    .line 73
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    .line 74
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym4thFSize:I

    .line 75
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym8thFSize:I

    .line 82
    iput-wide v4, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingHorizontal:D

    .line 83
    iput-wide v4, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingVertical:D

    .line 84
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringSize:I

    .line 85
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    .line 91
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->loadConstant(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 101
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/common/AccentWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setChanged()V

    return-void
.end method


# virtual methods
.method public getAccentString()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AccentWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccentString error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v1, ""

    goto :goto_0
.end method

.method public getWordIndex()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    return v0
.end method

.method public hideAccentLetters()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return v2

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-boolean v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mAccentWindowException:Z

    goto :goto_0
.end method

.method public inflate(III)V
    .locals 2
    .parameter "viewGroupResource"
    .parameter "charAccentResource"
    .parameter "stringAccentResource"

    .prologue
    .line 130
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentViewLayout:I

    .line 131
    iput p2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWordLayout:I

    .line 132
    iput p3, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringLayout:I

    .line 134
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 135
    return-void
.end method

.method public inflateCIMESIPName(I)V
    .locals 0
    .parameter "cimeSipNameAccentResource"

    .prologue
    .line 139
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentCPSipNameLayout:I

    .line 140
    return-void
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/high16 v3, 0x4059

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym4thFSize:I

    .line 113
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym8thFSize:I

    .line 114
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingHorizontal:D

    .line 115
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingVertical:D

    .line 116
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringSize:I

    .line 122
    return-void
.end method

.method public sendEventToAccent(I)V
    .locals 13
    .parameter "axis_x"

    .prologue
    const/4 v12, 0x0

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, indexSet:Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShowTime:J

    const-wide/16 v10, 0x1c2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget-boolean v6, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstMove:Z

    if-eqz v6, :cond_3

    .line 346
    sget v6, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstAxisX:I

    add-int/lit8 v6, v6, 0xf

    if-gt p1, v6, :cond_2

    sget v6, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstAxisX:I

    add-int/lit8 v6, v6, -0xf

    if-ge p1, v6, :cond_0

    .line 347
    :cond_2
    sput-boolean v12, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstMove:Z

    .line 354
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    if-ge v0, v6, :cond_5

    .line 355
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 356
    .local v3, tv:Landroid/widget/TextView;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 357
    .local v2, position:[I
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 358
    const/4 v6, 0x0

    aget v6, v2, v6

    add-int/lit8 v6, v6, 0x2

    if-lt p1, v6, :cond_4

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    if-ge p1, v6, :cond_4

    .line 359
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    .line 362
    const/4 v1, 0x1

    .line 354
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 366
    :cond_4
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordUpBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    const/high16 v6, -0x100

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 391
    .end local v2           #position:[I
    .end local v3           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 371
    :cond_5
    if-nez v1, :cond_0

    .line 372
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 373
    .local v4, tv_first:Landroid/widget/TextView;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 374
    .restart local v2       #position:[I
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 375
    const/4 v6, 0x0

    aget v6, v2, v6

    if-ge p1, v6, :cond_6

    .line 376
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    goto :goto_0

    .line 380
    :cond_6
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 381
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 382
    .local v5, tv_last:Landroid/widget/TextView;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 383
    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_0

    .line 384
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public setLetterBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "selectedBackground"
    .parameter "unselectedBackground"

    .prologue
    .line 156
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordUpBg:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    .line 158
    return-void
.end method

.method public setShiftTopAndMargin(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 147
    iput p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShiftTop:I

    .line 148
    return-void
.end method

.method public showAccentLetters(Landroid/view/View;Lcom/htc/android/htcime/ezsip/Keyboard$Key;ILandroid/view/MotionEvent;IIII)V
    .locals 30
    .parameter "attachView"
    .parameter "key"
    .parameter "shiftState"
    .parameter "me"
    .parameter "preview_x"
    .parameter "preview_y"
    .parameter "preview_width"
    .parameter "preview_height"

    .prologue
    .line 170
    const/16 v16, 0x0

    .line 171
    .local v16, resourceId:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 174
    .local v18, tmpString:Ljava/lang/String;
    const/16 v25, 0x1

    move/from16 v0, p3

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->accentType:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 176
    const-string v25, "\u0131"

    const-string v26, "\u0130"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 180
    const-string v25, "\u03b0"

    const-string v26, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 181
    const-string v25, "\u0390 "

    const-string v26, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 183
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 186
    const-string v25, "SS"

    const-string v26, "\u00df"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 188
    :cond_0
    const-string v25, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, stringArray:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentViewLayout:I

    move/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 194
    .local v7, frame:Landroid/widget/LinearLayout;
    const v25, 0x7f0e003f

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 196
    .local v5, AW:Landroid/widget/LinearLayout;
    new-instance v25, Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;-><init>(Lcom/htc/android/htcime/ezsip/common/AccentWindow;Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x11

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 208
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v14

    .line 209
    .local v14, padding_vertical:I
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v13

    .line 211
    .local v13, padding_horizontal:I
    const/16 v25, -0x1

    move/from16 v0, p8

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, -0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 212
    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingVertical:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v14, v0

    .line 213
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mPaddingHorizontal:D

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v13, v0

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v14, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 218
    :goto_0
    mul-int/lit8 v25, v13, 0x2

    sub-int v11, p7, v25

    .line 219
    .local v11, letter_width:I
    mul-int/lit8 v25, v14, 0x2

    sub-int v10, p8, v25

    .line 221
    .local v10, letter_height:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->accentType:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringLayout:I

    move/from16 v16, v0

    .line 241
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    add-int/lit8 v15, v25, -0x1

    .line 243
    .local v15, real_alignIndex:I
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, p8

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    const/16 v25, -0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    mul-int v25, v25, v11

    mul-int/lit8 v26, v13, 0x2

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    move/from16 v25, v0

    mul-int/lit8 v26, v13, 0x2

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v26, v0

    div-int v11, v25, v26

    .line 250
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_a

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v16

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 252
    .local v19, tv:Landroid/widget/TextView;
    aget-object v25, v17, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->accentType:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 255
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v9, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym8thFSize:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 259
    :cond_2
    :goto_4
    if-ne v9, v15, :cond_3

    .line 260
    const/16 v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordDownBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    const/16 v25, -0x1

    move/from16 v0, p8

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    const/16 v25, -0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 267
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .local v12, lp:Landroid/widget/LinearLayout$LayoutParams;
    mul-int/lit8 v25, v14, 0x2

    sub-int v25, p8, v25

    move/from16 v0, v25

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 269
    if-eqz v11, :cond_9

    move/from16 v25, v11

    :goto_5
    move/from16 v0, v25

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 272
    .end local v12           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-nez v9, :cond_5

    .line 273
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 274
    .restart local v12       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v11, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 275
    iget v10, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 250
    .end local v12           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 216
    .end local v9           #i:I
    .end local v10           #letter_height:I
    .end local v11           #letter_width:I
    .end local v15           #real_alignIndex:I
    .end local v19           #tv:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v26

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v27

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v28

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 224
    .restart local v10       #letter_height:I
    .restart local v11       #letter_width:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWordLayout:I

    move/from16 v16, v0

    .line 225
    goto/16 :goto_1

    .line 227
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringLayout:I

    move/from16 v16, v0

    .line 228
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentStringSize:I

    .line 229
    goto/16 :goto_1

    .line 231
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWordLayout:I

    move/from16 v16, v0

    .line 232
    goto/16 :goto_1

    .line 234
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentCPSipNameLayout:I

    move/from16 v16, v0

    .line 235
    goto/16 :goto_1

    .line 241
    :cond_7
    move-object/from16 v0, p2

    iget v15, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->alignIndex:I

    goto/16 :goto_2

    .line 256
    .restart local v9       #i:I
    .restart local v15       #real_alignIndex:I
    .restart local v19       #tv:Landroid/widget/TextView;
    :cond_8
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v9, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->sAccentSym4thFSize:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_4

    .line 269
    .restart local v12       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    mul-int/lit8 v25, v13, 0x2

    sub-int v25, p7, v25

    goto :goto_5

    .line 280
    .end local v12           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #tv:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentView:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 283
    const/16 v25, -0x1

    move/from16 v0, p8

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    mul-int/lit8 v25, v14, 0x2

    add-int v8, v10, v25

    .line 288
    .local v8, height:I
    :goto_6
    const/16 v25, -0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    mul-int v25, v25, v11

    mul-int/lit8 v26, v13, 0x2

    add-int v22, v25, v26

    .line 298
    .local v22, width:I
    :goto_7
    if-nez v15, :cond_11

    .line 299
    const/16 v25, -0x1

    move/from16 v0, p5

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v25, v0

    mul-int v26, v15, v11

    sub-int v25, v25, v26

    sub-int v23, v25, v13

    .line 304
    .local v23, x:I
    :goto_8
    const/16 v25, -0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v25, v0

    sub-int v25, v25, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShiftTop:I

    move/from16 v26, v0

    add-int v24, v25, v26

    .line 306
    .local v24, y:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mOffsetInWindow:[I

    move-object/from16 v25, v0

    if-nez v25, :cond_b

    .line 309
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mOffsetInWindow:[I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mOffsetInWindow:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 314
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mOffsetInWindow:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    add-int v20, v23, v25

    .line 315
    .local v20, tx:I
    if-gez v20, :cond_15

    const/16 v20, 0x0

    .line 317
    :cond_c
    :goto_a
    const/16 v25, -0x1

    move/from16 v0, p6

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mOffsetInWindow:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    add-int v21, v24, v25

    .line 320
    .local v21, ty:I
    :goto_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    sub-int v26, v21, v8

    move-object/from16 v0, v25

    move/from16 v1, v20

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_c
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mWordIndex:I

    .line 332
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sput v25, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstAxisX:I

    .line 333
    const/16 v25, 0x1

    sput-boolean v25, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mFirstMove:Z

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    sput-wide v25, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mShowTime:J

    .line 335
    return-void

    .end local v8           #height:I
    .end local v20           #tx:I
    .end local v21           #ty:I
    .end local v22           #width:I
    .end local v23           #x:I
    .end local v24           #y:I
    :cond_d
    move/from16 v8, p8

    .line 283
    goto/16 :goto_6

    .line 291
    .restart local v8       #height:I
    :cond_e
    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 292
    move/from16 v22, p7

    .restart local v22       #width:I
    goto/16 :goto_7

    .line 294
    .end local v22           #width:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    mul-int v25, v25, v11

    mul-int/lit8 v26, v13, 0x2

    add-int v22, v25, v26

    .restart local v22       #width:I
    goto/16 :goto_7

    :cond_10
    move/from16 v23, p5

    .line 299
    goto/16 :goto_8

    .line 300
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_13

    .line 301
    const/16 v25, -0x1

    move/from16 v0, p7

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mNumberOfLetters:I

    move/from16 v26, v0

    mul-int v26, v26, v11

    sub-int v25, v25, v26

    sub-int v23, v25, v13

    .restart local v23       #x:I
    :goto_d
    goto/16 :goto_8

    .end local v23           #x:I
    :cond_12
    add-int v25, p5, p7

    sub-int v23, v25, v22

    goto :goto_d

    .line 303
    :cond_13
    move-object/from16 v0, p2

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v25, v0

    mul-int v26, v15, v11

    sub-int v25, v25, v26

    sub-int v23, v25, v13

    .restart local v23       #x:I
    goto/16 :goto_8

    :cond_14
    move/from16 v24, p6

    .line 304
    goto/16 :goto_9

    .line 315
    .restart local v20       #tx:I
    .restart local v24       #y:I
    :cond_15
    add-int v25, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mScreenWidth:I

    move/from16 v25, v0

    sub-int v20, v25, v22

    goto/16 :goto_a

    :cond_16
    move/from16 v21, p6

    .line 317
    goto/16 :goto_b

    .line 323
    .restart local v21       #ty:I
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mAccentWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c

    .line 325
    :catch_0
    move-exception v6

    .line 326
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mAccentWindowException:Z

    goto/16 :goto_c

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
