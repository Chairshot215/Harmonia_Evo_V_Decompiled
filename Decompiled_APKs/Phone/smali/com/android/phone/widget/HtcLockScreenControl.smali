.class public Lcom/android/phone/widget/HtcLockScreenControl;
.super Landroid/widget/RelativeLayout;
.source "HtcLockScreenControl.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static openLog:Z


# instance fields
.field private mBmpWallpaper:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDistance:I

.field private mDragActionDone:Z

.field private mForIncomingCall:Z

.field private mHandler:Landroid/os/Handler;

.field private mHtcResContext:Landroid/content/Context;

.field private mInitY:I

.field private mLastY:I

.field private mLockScreenHeight:I

.field private mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

.field private mScreenHeight:I

.field private mStartY:I

.field private mThemePackage:Ljava/lang/String;

.field private mUnlockArea:Landroid/widget/RelativeLayout;

.field private mUnlockAreaTop:I

.field private mbInArcArea:Z

.field private mnIndexForArcControl:I

.field private runnableDraggingDown:Ljava/lang/Runnable;

.field private runnableDraggingUp:Ljava/lang/Runnable;

.field private runnableOpenDrawerDown:Ljava/lang/Runnable;

.field private runnableOpenDrawerUp:Ljava/lang/Runnable;

.field private runnalbeCloseDrawer:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "HtcLockScreenControl"

    sput-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    .line 72
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControl 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHtcResContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->init()V

    .line 78
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControl initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    .line 86
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControl 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHtcResContext:Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->init()V

    .line 92
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControl initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    .line 100
    sget-boolean v1, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v2, "HtcLockScreenControl 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHtcResContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->init()V

    .line 106
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->initLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcLockScreenControl initLayout exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/widget/HtcLockScreenControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/widget/HtcLockScreenControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingDown:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/widget/HtcLockScreenControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->openDrawerDown()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/widget/HtcLockScreenControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->openDrawerUp()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/widget/HtcLockScreenControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->closeDrawer()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/widget/HtcLockScreenControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/widget/HtcLockScreenControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/widget/HtcLockScreenControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/widget/HtcLockScreenControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mForIncomingCall:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/widget/HtcLockScreenControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingUp:Ljava/lang/Runnable;

    return-object v0
.end method

.method private applyTheme()V
    .locals 11

    .prologue
    .line 407
    invoke-static {}, Lcom/android/phone/theme/ThemeAdapter;->getSkinPackageName()Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, themePackage:Ljava/lang/String;
    if-nez v7, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 412
    const-string v7, "com.htc"

    .line 416
    :cond_0
    if-eqz v7, :cond_1

    iget-object v9, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    iput-object v7, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mThemePackage:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 423
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v6, "lockscreen_arc"

    .line 424
    .local v6, resName:Ljava/lang/String;
    :goto_1
    const-string v9, "drawable"

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 425
    .local v4, middle:I
    const-string v9, "lockscreen_arcglass_top"

    const-string v10, "drawable"

    invoke-virtual {v5, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 426
    .local v8, top:I
    const-string v9, "lockscreen_arcglass_bottom"

    const-string v10, "drawable"

    invoke-virtual {v5, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, bottom:I
    const v9, 0x2020133

    invoke-virtual {p0, v9}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 429
    .local v3, imageViewArcTop:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    .line 430
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    :cond_3
    const v9, 0x2020134

    invoke-virtual {p0, v9}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 433
    .local v2, imageViewArcBottom:Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 434
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    :cond_4
    const v9, 0x2020135

    invoke-virtual {p0, v9}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 437
    .local v1, imageViewArc:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 423
    .end local v0           #bottom:I
    .end local v1           #imageViewArc:Landroid/widget/ImageView;
    .end local v2           #imageViewArcBottom:Landroid/widget/ImageView;
    .end local v3           #imageViewArcTop:Landroid/widget/ImageView;
    .end local v4           #middle:I
    .end local v6           #resName:Ljava/lang/String;
    .end local v8           #top:I
    :cond_5
    const-string v6, "lockscreen_arc_incall"

    goto :goto_1
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 267
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnalbeCloseDrawer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnalbeCloseDrawer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 271
    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;

    .line 115
    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 117
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mScreenHeight:I

    .line 118
    return-void
.end method

.method private initLayout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHtcResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20500cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mLockScreenHeight:I

    .line 123
    iget v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mScreenHeight:I

    iget v3, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mLockScreenHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03002f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 132
    .local v1, relativelayoutMain:Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->addView(Landroid/view/View;)V

    .line 138
    const v2, 0x2020132

    invoke-virtual {p0, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    .line 139
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "resource lock_screen_background ID not found"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "resource lock_screen_background.xml not found"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/phone/widget/HtcLockScreenControl$1;

    invoke-direct {v3, p0}, Lcom/android/phone/widget/HtcLockScreenControl$1;-><init>(Lcom/android/phone/widget/HtcLockScreenControl;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    return-void
.end method

.method private openDrawerDown()V
    .locals 3

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v1, "openDrawerDown "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerDown:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerDown:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 252
    :cond_1
    return-void
.end method

.method private openDrawerUp()V
    .locals 3

    .prologue
    .line 255
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v1, "openDrawerUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerUp:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerUp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 262
    :cond_1
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 445
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->applyTheme()V

    .line 448
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 449
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 399
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->applyTheme()V

    .line 403
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 404
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 455
    if-nez p2, :cond_0

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/android/phone/widget/HtcLockScreenControl;->applyTheme()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/view/OnVisibilityChangedListener;->onVisibilityChanged(Landroid/view/View;I)V

    .line 464
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 465
    return-void
.end method

.method public recycleBackground()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    .line 392
    :cond_0
    return-void
.end method

.method public resetDrawerPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 337
    iput-boolean v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z

    .line 338
    return-void
.end method

.method public setArcControl(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, -0x1

    .line 276
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v1, "setArcControl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 279
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setArcControl mnIndexForArcControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    iget v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    if-ne v3, v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    .line 287
    :goto_0
    sget-boolean v0, Lcom/android/phone/widget/HtcLockScreenControl;->openLog:Z

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setArcControl mnIndexForArcControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 291
    :cond_3
    return-void

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mnIndexForArcControl:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x1

    .line 294
    const v1, 0x2020131

    invoke-virtual {p0, v1}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 295
    .local v0, mBackgroundArea:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 296
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    sget-object v1, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v2, "setBackgroundView Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCloseDrawerRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnalbeCloseDrawer:Ljava/lang/Runnable;

    .line 326
    return-void
.end method

.method public setDragingDownRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingDown:Ljava/lang/Runnable;

    .line 322
    return-void
.end method

.method public setDragingUpRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingUp:Ljava/lang/Runnable;

    .line 318
    return-void
.end method

.method public setLoadingBackground(Z)V
    .locals 7
    .parameter "needLoading"

    .prologue
    .line 342
    if-eqz p1, :cond_1

    .line 344
    const v4, 0x202012f

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 345
    .local v3, wallpaper_layout:Landroid/widget/FrameLayout;
    const v4, 0x2020130

    invoke-virtual {p0, v4}, Lcom/android/phone/widget/HtcLockScreenControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 347
    .local v2, wallpaper:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    .line 348
    :cond_0
    sget-object v4, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v5, "setLoadingBackground error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v2           #wallpaper:Landroid/widget/ImageView;
    .end local v3           #wallpaper_layout:Landroid/widget/FrameLayout;
    :cond_1
    :goto_0
    return-void

    .line 352
    .restart local v2       #wallpaper:Landroid/widget/ImageView;
    .restart local v3       #wallpaper_layout:Landroid/widget/FrameLayout;
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    .line 356
    :try_start_0
    const-string v4, "/data/misc/lockscreen/lock_screen_port"

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-static {v4, v5, v6}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    .line 358
    iget-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 359
    const-string v4, "/data/misc/lockscreen/D_lock_screen_port"

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-static {v4, v5, v6}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    if-nez v4, :cond_4

    .line 364
    const-string v4, "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-static {v4, v5, v6}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 380
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 381
    iget-object v4, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mBmpWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/OutOfMemoryError;
    sget-object v4, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v5, "This bitmap will cause OutOfMemory, so skip it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 376
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 377
    .local v1, ee:Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/widget/HtcLockScreenControl;->TAG:Ljava/lang/String;

    const-string v5, "setLoadingBackground error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setLockScreenForIncomingCall(Z)V
    .locals 0
    .parameter "isIncomingCall"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mForIncomingCall:Z

    .line 330
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    .line 469
    return-void
.end method

.method public setOpenDrawerDownRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerDown:Ljava/lang/Runnable;

    .line 310
    return-void
.end method

.method public setOpenDrawerRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerDown:Ljava/lang/Runnable;

    .line 306
    return-void
.end method

.method public setOpenDrawerUpRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl;->runnableOpenDrawerUp:Ljava/lang/Runnable;

    .line 314
    return-void
.end method
