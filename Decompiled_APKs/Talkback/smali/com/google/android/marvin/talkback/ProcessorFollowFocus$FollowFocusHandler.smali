.class Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "ProcessorFollowFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/ProcessorFollowFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowFocusHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/ProcessorFollowFocus;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOCUS_AFTER_CONTENT_CHANGED:I = 0x2

.field private static final FOCUS_AFTER_CONTENT_CHANGED_DELAY:J = 0x1f4L

.field private static final FOCUS_AFTER_SCROLL:I = 0x1

.field private static final FOCUS_AFTER_SCROLL_DELAY:J = 0xfaL


# instance fields
.field private mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

.field private mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 430
    return-void
.end method


# virtual methods
.method public followContentChangedDelayed(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)V
    .locals 3
    .parameter "record"

    .prologue
    const/4 v2, 0x2

    .line 461
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->removeMessages(I)V

    .line 463
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->recycle()V

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 468
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 470
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 472
    return-void
.end method

.method public followScrollDelayed(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)V
    .locals 3
    .parameter "record"
    .parameter "lastFromIndex"
    .parameter "lastAction"

    .prologue
    const/4 v2, 0x1

    .line 484
    invoke-virtual {p0, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->removeMessages(I)V

    .line 486
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->recycle()V

    .line 488
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 491
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 493
    invoke-virtual {p0, v2, p2, p3}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 495
    return-void
.end method

.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorFollowFocus;)V
    .locals 4
    .parameter "msg"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->followScrollEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)Z
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->access$0(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;II)Z

    .line 438
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->recycle()V

    .line 440
    iput-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    #calls: Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->followContentChangedEvent(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;->access$1(Lcom/google/android/marvin/talkback/ProcessorFollowFocus;Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Z

    .line 446
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->recycle()V

    .line 448
    iput-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->mCachedContentRecord:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/ProcessorFollowFocus;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/ProcessorFollowFocus$FollowFocusHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorFollowFocus;)V

    return-void
.end method
