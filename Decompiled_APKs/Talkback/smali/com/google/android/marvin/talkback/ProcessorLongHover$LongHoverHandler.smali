.class Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "ProcessorLongHover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/ProcessorLongHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongHoverHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<",
        "Lcom/google/android/marvin/talkback/ProcessorLongHover;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_LONG_HOVER_TIMEOUT:J = 0x3e8L

.field private static final LONG_HOVER_TIMEOUT:I = 0x1


# instance fields
.field private final mLongHoverRunnable:Ljava/lang/Runnable;

.field private mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 180
    new-instance v0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler$1;-><init>(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mLongHoverRunnable:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->cancelLongHoverTimeout(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    return-void
.end method

.method static synthetic access$3(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->startLongHoverTimeout(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    return-void
.end method

.method private cancelLongHoverTimeout(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;

    if-eqz v0, :cond_0

    .line 171
    #getter for: Lcom/google/android/marvin/talkback/ProcessorLongHover;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;
    invoke-static {p1}, Lcom/google/android/marvin/talkback/ProcessorLongHover;->access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Lcom/google/android/marvin/talkback/SpeechController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/marvin/talkback/SpeechController;->removeUtteranceCompleteAction(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 175
    :cond_0
    return-void
.end method

.method private handleLongHoverTimeout(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 6
    .parameter "event"
    .parameter "parent"

    .prologue
    .line 137
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 138
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 140
    .local v1, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    #getter for: Lcom/google/android/marvin/talkback/ProcessorLongHover;->mContext:Landroid/content/Context;
    invoke-static {p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover;->access$0(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Landroid/content/Context;

    move-result-object v3

    .line 144
    invoke-static {v3, v1}, Lcom/google/android/marvin/talkback/speechrules/NodeSpeechRuleProcessor;->processVerbose(Landroid/content/Context;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    .local v2, text:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 149
    #getter for: Lcom/google/android/marvin/talkback/ProcessorLongHover;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;
    invoke-static {p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover;->access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Lcom/google/android/marvin/talkback/SpeechController;

    move-result-object v3

    sget-object v4, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startLongHoverTimeout(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 3
    .parameter "event"
    .parameter "parent"

    .prologue
    .line 157
    invoke-static {p1}, Lcom/googlecode/eyesfree/compat/view/accessibility/AccessibilityEventCompatUtils;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mPendingLongHoverEvent:Landroid/view/accessibility/AccessibilityEvent;

    .line 160
    #getter for: Lcom/google/android/marvin/talkback/ProcessorLongHover;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;
    invoke-static {p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover;->access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Lcom/google/android/marvin/talkback/SpeechController;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->mLongHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/marvin/talkback/SpeechController;->addUtteranceCompleteAction(ILjava/lang/Runnable;)V

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    .locals 2
    .parameter "msg"
    .parameter "parent"

    .prologue
    .line 120
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 123
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {p0, v0, p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->handleLongHoverTimeout(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    .line 124
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/google/android/marvin/talkback/ProcessorLongHover;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->handleMessage(Landroid/os/Message;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    return-void
.end method
