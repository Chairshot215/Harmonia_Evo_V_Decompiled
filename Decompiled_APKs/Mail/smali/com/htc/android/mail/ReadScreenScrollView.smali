.class public Lcom/htc/android/mail/ReadScreenScrollView;
.super Landroid/widget/ScrollView;
.source "ReadScreenScrollView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final SNAP_FREE:I = 0x2

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_Y:I = 0x1

.field static final TAG:Ljava/lang/String; = "readscreenscrollview"


# instance fields
.field private isDraging:Z

.field private isMultiTouch:Z

.field private mAccount:Lcom/htc/android/mail/Account;

.field private mDetectOffset:I

.field private mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

.field private mLastDownY:F

.field protected mLastMotionX:F

.field private mMode:I

.field private mScrollRatio:F

.field private mSnapScrollMode:I

.field private mVelocityScale:F

.field private mWasDrag:Z

.field private mWeakReadScreen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ReadScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Lcom/htc/android/mail/HtcWebView;

.field mZoomControl:Lcom/htc/android/mail/ZoomControl;

.field showQuickAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ReadScreenScrollView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastDownY:F

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    .line 34
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 41
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 42
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    .line 43
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    .line 44
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mDetectOffset:I

    .line 45
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    .line 50
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityScale:F

    .line 558
    new-instance v0, Lcom/htc/android/mail/ReadScreenScrollView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreenScrollView$1;-><init>(Lcom/htc/android/mail/ReadScreenScrollView;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->showQuickAction:Ljava/lang/Runnable;

    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreenScrollView;->setOverScrollMode(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastDownY:F

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    .line 34
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 41
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 42
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    .line 43
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    .line 44
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mDetectOffset:I

    .line 45
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    .line 50
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityScale:F

    .line 558
    new-instance v0, Lcom/htc/android/mail/ReadScreenScrollView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreenScrollView$1;-><init>(Lcom/htc/android/mail/ReadScreenScrollView;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->showQuickAction:Ljava/lang/Runnable;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreenScrollView;->setOverScrollMode(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastDownY:F

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    .line 34
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 41
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 42
    iput v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    .line 43
    iput-boolean v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    .line 44
    const/16 v0, 0x78

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mDetectOffset:I

    .line 45
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    .line 50
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityScale:F

    .line 558
    new-instance v0, Lcom/htc/android/mail/ReadScreenScrollView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ReadScreenScrollView$1;-><init>(Lcom/htc/android/mail/ReadScreenScrollView;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->showQuickAction:Ljava/lang/Runnable;

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreenScrollView;->setOverScrollMode(I)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/ReadScreenScrollView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/ReadScreenScrollView;)Lcom/htc/android/mail/HtcEditableWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    return-object v0
.end method


# virtual methods
.method public ScrollToRatio()F
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v3, -0x4080

    .line 484
    iget v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 485
    .local v1, ratio:F
    iput v3, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 486
    iput-boolean v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    .line 488
    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int v0, v3, v4

    .line 491
    .local v0, maxScrollY:I
    int-to-float v3, v0

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 492
    .local v2, y:I
    const-string v3, "htcWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after zoom and jump to y ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", page ratio = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-lez v2, :cond_0

    .line 494
    invoke-virtual {p0, v6, v2}, Lcom/htc/android/mail/ReadScreenScrollView;->scrollTo(II)V

    .line 497
    .end local v0           #maxScrollY:I
    .end local v2           #y:I
    :cond_0
    return v1
.end method

.method public checkGetRemain()V
    .locals 5

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mPaddingBottom:I

    sub-int v1, v3, v4

    .line 575
    .local v1, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreenScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v0, v3, v1

    .line 577
    .local v0, availableToScroll:I
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    iget-object v3, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ReadScreen;

    .line 579
    .local v2, target:Lcom/htc/android/mail/ReadScreen;
    if-nez v2, :cond_1

    .line 585
    .end local v2           #target:Lcom/htc/android/mail/ReadScreen;
    :cond_0
    :goto_0
    return-void

    .line 580
    .restart local v2       #target:Lcom/htc/android/mail/ReadScreen;
    :cond_1
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    .line 581
    const-string v3, "ReadScreenScrollView"

    const-string v4, "OnePage : should getremain"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->startScrollPageEnd()V

    goto :goto_0
.end method

.method public fling(I)V
    .locals 13
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 511
    .local v12, height:I
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/ReadScreenScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 512
    .local v11, bottom:I
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollX:I

    iget v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 516
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    .end local v11           #bottom:I
    .end local v12           #height:I
    :cond_0
    :goto_0
    return-void

    .line 548
    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ReadScreenScrollView;->awakenScrollBars(I)Z

    .line 549
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getMode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->showQuickAction:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->invalidate()V

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 343
    .local v0, action:I
    iget-boolean v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 345
    :cond_0
    iget-boolean v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    if-nez v6, :cond_4

    .line 347
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    .line 348
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    .line 349
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 350
    iput v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 351
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->computeVerticalScrollRange()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->computeVerticalScrollExtent()I

    move-result v7

    sub-int v1, v6, v7

    .line 352
    .local v1, maxScrollY:I
    if-lez v1, :cond_3

    .line 353
    iget v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollY:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    .line 356
    :goto_0
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    .end local v1           #maxScrollY:I
    :cond_1
    :goto_1
    move v4, v5

    .line 430
    :cond_2
    :goto_2
    return v4

    .line 355
    .restart local v1       #maxScrollY:I
    :cond_3
    const/4 v6, 0x0

    iput v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollRatio:F

    goto :goto_0

    .line 359
    .end local v1           #maxScrollY:I
    :cond_4
    if-ne v0, v4, :cond_1

    .line 360
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    goto :goto_1

    .line 370
    :cond_5
    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    if-nez v6, :cond_2

    .line 374
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_7

    .line 375
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    move v4, v5

    .line 376
    goto :goto_2

    .line 379
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 381
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 430
    :cond_8
    :goto_3
    iget-boolean v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    goto :goto_2

    .line 392
    :pswitch_0
    iget v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v3, v5

    .line 393
    .local v3, yDiff:I
    const/16 v5, 0xa

    if-lt v3, v5, :cond_8

    .line 394
    iput-boolean v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    goto :goto_3

    .line 400
    .end local v3           #yDiff:I
    :pswitch_1
    iput v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    .line 401
    invoke-virtual {p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/android/mail/ReadScreenScrollView;->showQuickAction:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_9

    .line 404
    iget-object v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 408
    :cond_9
    iput v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    iput v2, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastDownY:F

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionX:F

    .line 416
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    goto :goto_3

    .line 422
    :pswitch_2
    iput-boolean v5, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mIsBeingDragged:Z

    goto :goto_3

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/HtcWebView;->onScrollChanged(IIII)V

    .line 479
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 480
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "ev"

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 121
    .local v3, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->isMultiTouch:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 125
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 126
    .local v9, event:Landroid/view/MotionEvent;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 131
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/android/mail/ReadScreenScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_1
    :goto_0
    const/16 v17, 0x0

    .line 306
    .end local v9           #event:Landroid/view/MotionEvent;
    :goto_1
    return v17

    .line 132
    .restart local v9       #event:Landroid/view/MotionEvent;
    :catch_0
    move-exception v8

    .line 133
    .local v8, e:Ljava/lang/StackOverflowError;
    sget-boolean v17, Lcom/htc/android/mail/ReadScreenScrollView;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string v17, "readscreenscrollview"

    invoke-virtual {v8}, Ljava/lang/StackOverflowError;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v8           #e:Ljava/lang/StackOverflowError;
    .end local v9           #event:Landroid/view/MotionEvent;
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 143
    :cond_3
    if-nez v3, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    if-eqz v17, :cond_4

    .line 147
    const/16 v17, 0x0

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreenScrollView;->canScroll()Z

    move-result v17

    if-nez v17, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/ZoomControl;->showControlsFromMove()V

    .line 154
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 158
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 168
    .local v16, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 170
    .local v15, x:F
    packed-switch v3, :pswitch_data_0

    .line 306
    :cond_8
    :goto_2
    const/16 v17, 0x1

    goto :goto_1

    .line 172
    :pswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    goto :goto_2

    .line 181
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v16

    move/from16 v0, v17

    float-to-int v7, v0

    .line 182
    .local v7, deltaY:I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v6, v0

    .line 185
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionX:F

    .line 188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastMotionY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mLastDownY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x4120

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_b

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 194
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 195
    .local v11, me:Landroid/view/MotionEvent;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/htc/android/mail/HtcWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 198
    .end local v11           #me:Landroid/view/MotionEvent;
    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    .line 199
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    .line 201
    if-lez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/Account;->getDownloadMessageWhenScroll()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/android/mail/ReadScreen;

    .line 203
    .local v13, target:Lcom/htc/android/mail/ReadScreen;
    if-eqz v13, :cond_b

    iget-object v0, v13, Lcom/htc/android/mail/ReadScreen;->unfinishedL:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 204
    sget-boolean v17, Lcom/htc/android/mail/ReadScreenScrollView;->DEBUG:Z

    if-eqz v17, :cond_a

    const-string v17, "ReadScreenScrollView"

    const-string v18, "shouldGetRemain"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_a
    invoke-virtual {v13}, Lcom/htc/android/mail/ReadScreen;->startScrollPageEnd()V

    .line 213
    .end local v13           #target:Lcom/htc/android/mail/ReadScreen;
    :cond_b
    if-gez v7, :cond_f

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollY:I

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 215
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/htc/android/mail/ReadScreenScrollView;->scrollBy(II)V

    .line 238
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 240
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    int-to-double v0, v7

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-lez v17, :cond_10

    .line 241
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 248
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/HtcWebView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_11

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/HtcWebView;->getScrollX()I

    move-result v18

    add-int v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Lcom/htc/android/mail/HtcWebView;->pinLocXInternal(I)I

    move-result v12

    .line 250
    .local v12, newScrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/htc/android/mail/HtcWebView;->scrollTo(II)V

    .line 256
    .end local v12           #newScrollX:I
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/ZoomControl;->showControlsFromMove()V

    goto/16 :goto_2

    .line 219
    :cond_f
    if-lez v7, :cond_c

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mPaddingBottom:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 221
    .local v5, bottomEdge:I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreenScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mScrollY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v4, v17, v5

    .line 222
    .local v4, availableToScroll:I
    if-lez v4, :cond_c

    .line 223
    const/16 v17, 0x0

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ReadScreenScrollView;->scrollBy(II)V

    goto/16 :goto_3

    .line 243
    .end local v4           #availableToScroll:I
    .end local v5           #bottomEdge:I
    :cond_10
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    int-to-double v0, v6

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-lez v17, :cond_d

    .line 244
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    goto/16 :goto_4

    .line 251
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/android/mail/HtcEditableWebView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_e

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/android/mail/HtcEditableWebView;->getScrollX()I

    move-result v18

    add-int v18, v18, v6

    invoke-virtual/range {v17 .. v18}, Lcom/htc/android/mail/HtcEditableWebView;->pinLocXInternal(I)I

    move-result v12

    .line 253
    .restart local v12       #newScrollX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/htc/android/mail/HtcEditableWebView;->scrollTo(II)V

    goto/16 :goto_5

    .line 269
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #newScrollX:I
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mSnapScrollMode:I

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 272
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 273
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v10, v0

    .line 276
    .local v10, initialVelocity:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/ReadScreenScrollView;->getChildCount()I

    move-result v17

    if-lez v17, :cond_12

    .line 278
    neg-int v0, v10

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreenScrollView;->fling(I)V

    .line 282
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 284
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 286
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 288
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/HtcWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 301
    :cond_14
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/ReadScreenScrollView;->isDraging:Z

    goto/16 :goto_2

    .line 292
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/HtcWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_6

    .line 295
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/HtcEditableWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_6

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetDragFlag()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    .line 506
    return-void
.end method

.method public setAccount(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mAccount:Lcom/htc/android/mail/Account;

    .line 452
    return-void
.end method

.method public setEditableWebView(Lcom/htc/android/mail/HtcEditableWebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mEditableWebView:Lcom/htc/android/mail/HtcEditableWebView;

    .line 439
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 458
    iput p1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mMode:I

    .line 468
    return-void
.end method

.method public setReadScreen(Lcom/htc/android/mail/ReadScreen;)V
    .locals 1
    .parameter "readscreen"

    .prologue
    .line 442
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWeakReadScreen:Ljava/lang/ref/WeakReference;

    .line 443
    return-void
.end method

.method public setWebView(Lcom/htc/android/mail/HtcWebView;)V
    .locals 0
    .parameter "webview"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWebView:Lcom/htc/android/mail/HtcWebView;

    .line 435
    return-void
.end method

.method public setZoomControl(Lcom/htc/android/mail/ZoomControl;)V
    .locals 0
    .parameter "zCtrl"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mZoomControl:Lcom/htc/android/mail/ZoomControl;

    .line 448
    return-void
.end method

.method public wasBeenScroll()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/htc/android/mail/ReadScreenScrollView;->mWasDrag:Z

    return v0
.end method
