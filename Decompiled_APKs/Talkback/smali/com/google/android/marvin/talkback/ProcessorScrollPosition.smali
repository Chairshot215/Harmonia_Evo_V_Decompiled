.class Lcom/google/android/marvin/talkback/ProcessorScrollPosition;
.super Ljava/lang/Object;
.source "ProcessorScrollPosition.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/TalkBackService$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 1
    .parameter "context"
    .parameter "speechController"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 46
    new-instance v0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;-><init>(Lcom/google/android/marvin/talkback/ProcessorScrollPosition;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mHandler:Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/ProcessorScrollPosition;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->handleScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private handleScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 76
    new-instance v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v2, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 77
    .local v2, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 78
    .local v0, fromIndex:I
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getToIndex()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 79
    .local v4, toIndex:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    .line 83
    .local v1, itemCount:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eq v0, v4, :cond_2

    if-gez v4, :cond_3

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mContext:Landroid/content/Context;

    const v6, 0x7f09004a

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, text:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    sget-object v6, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    goto :goto_0

    .line 96
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mContext:Landroid/content/Context;

    const v6, 0x7f090049

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    .line 96
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public process(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 53
    .local v0, eventType:I
    iget-object v2, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mHandler:Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;

    #calls: Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->cancelScrollTimeout()V
    invoke-static {v2}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->access$1(Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;)V

    .line 56
    const/16 v2, 0x1000

    if-eq v0, v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/google/android/marvin/talkback/ProcessorScrollPosition;->mHandler:Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;

    #calls: Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->startScrollTimeout(Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {v2, p1}, Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;->access$2(Lcom/google/android/marvin/talkback/ProcessorScrollPosition$ScrollPositionHandler;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method
