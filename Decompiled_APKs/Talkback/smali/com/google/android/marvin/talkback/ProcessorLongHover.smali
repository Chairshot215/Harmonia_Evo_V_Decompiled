.class Lcom/google/android/marvin/talkback/ProcessorLongHover;
.super Ljava/lang/Object;
.source "ProcessorLongHover.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/TalkBackService$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;
    }
.end annotation


# static fields
.field public static final MIN_API_LEVEL:I = 0xe


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

.field private mWaitingForExit:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 1
    .parameter "context"
    .parameter "speechController"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 55
    new-instance v0, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;-><init>(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mHandler:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/ProcessorLongHover;)Lcom/google/android/marvin/talkback/SpeechController;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    return-object v0
.end method

.method private cacheEnteredNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mWaitingForExit:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mWaitingForExit:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mWaitingForExit:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mWaitingForExit:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public process(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 62
    .local v0, eventType:I
    const/16 v3, 0x400

    if-ne v0, v3, :cond_1

    .line 63
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/marvin/talkback/ProcessorLongHover;->cacheEnteredNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 64
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mHandler:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    #calls: Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->cancelLongHoverTimeout(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    invoke-static {v3, p0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->access$2(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/16 v3, 0x80

    if-eq v0, v3, :cond_2

    .line 69
    const/16 v3, 0x100

    if-ne v0, v3, :cond_0

    .line 73
    :cond_2
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 74
    .local v1, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 76
    .local v2, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v2, :cond_0

    .line 80
    sparse-switch v0, :sswitch_data_0

    .line 89
    :goto_1
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 82
    :sswitch_0
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mHandler:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    #calls: Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->startLongHoverTimeout(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    invoke-static {v3, p1, p0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->access$3(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    goto :goto_1

    .line 85
    :sswitch_1
    iget-object v3, p0, Lcom/google/android/marvin/talkback/ProcessorLongHover;->mHandler:Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;

    #calls: Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->cancelLongHoverTimeout(Lcom/google/android/marvin/talkback/ProcessorLongHover;)V
    invoke-static {v3, p0}, Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;->access$2(Lcom/google/android/marvin/talkback/ProcessorLongHover$LongHoverHandler;Lcom/google/android/marvin/talkback/ProcessorLongHover;)V

    goto :goto_1

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method
