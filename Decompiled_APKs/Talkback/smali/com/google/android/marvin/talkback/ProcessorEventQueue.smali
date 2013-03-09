.class public Lcom/google/android/marvin/talkback/ProcessorEventQueue;
.super Ljava/lang/Object;
.source "ProcessorEventQueue.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/TalkBackService$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;
    }
.end annotation


# instance fields
.field private final mCustomResourceMapper:Lcom/google/android/marvin/talkback/CustomResourceMapper;

.field private final mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;

.field private mEventSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

.field private final mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

.field private final mHandler:Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;

.field private mLastEventType:I

.field private final mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

.field private mSpeechRuleLoader:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/PreferenceFeedbackController;Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 2
    .parameter "context"
    .parameter "feedbackController"
    .parameter "speechController"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;-><init>(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mHandler:Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;

    .line 50
    new-instance v0, Lcom/google/android/marvin/talkback/EventQueue;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/EventQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;

    .line 71
    new-instance v0, Lcom/google/android/marvin/talkback/CustomResourceMapper;

    invoke-direct {v0, p1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mCustomResourceMapper:Lcom/google/android/marvin/talkback/CustomResourceMapper;

    .line 72
    iput-object p2, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    .line 73
    iput-object p3, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    .line 74
    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-direct {v0, p1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    .line 76
    new-instance v0, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-direct {v0, p1, v1}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;-><init>(Landroid/content/Context;Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mSpeechRuleLoader:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    .line 77
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mSpeechRuleLoader:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;

    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleLoader;->loadSpeechRules()V

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/ProcessorEventQueue;)Lcom/google/android/marvin/talkback/EventQueue;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/ProcessorEventQueue;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->processAndRecycleEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private computeQueuingMode(Lcom/google/android/marvin/talkback/Utterance;Landroid/view/accessibility/AccessibilityEvent;)Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    .locals 5
    .parameter "utterance"
    .parameter "event"

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v1

    .line 179
    .local v1, metadata:Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 183
    .local v0, eventType:I
    iget v3, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mLastEventType:I

    if-ne v3, v0, :cond_0

    .line 184
    sget-object v3, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    .line 192
    :goto_0
    return-object v3

    .line 187
    :cond_0
    iput v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mLastEventType:I

    .line 190
    const-string v3, "queuing"

    sget-object v4, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-virtual {v4}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, ordinal:I
    invoke-static {v2}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->valueOf(I)Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    move-result-object v3

    goto :goto_0
.end method

.method private processAndRecycleEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x3

    .line 98
    sget v1, Lcom/googlecode/eyesfree/utils/LogUtils;->LOG_LEVEL:I

    if-lt v6, v1, :cond_0

    .line 99
    const-class v1, Lcom/google/android/marvin/talkback/TalkBackService;

    const-string v2, "Processing event: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v6, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/android/marvin/talkback/Utterance;->obtain()Lcom/google/android/marvin/talkback/Utterance;

    move-result-object v0

    .line 104
    .local v0, utterance:Lcom/google/android/marvin/talkback/Utterance;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventSpeechRuleProcessor:Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/marvin/talkback/formatter/EventSpeechRuleProcessor;->processEvent(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/Utterance;->recycle()V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->provideFeedbackForUtterance(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)V

    .line 112
    invoke-virtual {v0}, Lcom/google/android/marvin/talkback/Utterance;->recycle()V

    .line 113
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0
.end method

.method private provideFeedbackForUtterance(Landroid/view/accessibility/AccessibilityEvent;Lcom/google/android/marvin/talkback/Utterance;)V
    .locals 10
    .parameter "event"
    .parameter "utterance"

    .prologue
    const/high16 v9, 0x3f80

    .line 123
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    .line 124
    .local v2, metadata:Landroid/os/Bundle;
    const-string v8, "earcon_rate"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 125
    .local v0, earconRate:F
    const-string v8, "earcon_volume"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 128
    .local v1, earconVolume:F
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 133
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 138
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 147
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getCustomVibrations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 155
    const-string v8, "speech_params"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 158
    .local v3, params:Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    invoke-direct {p0, p2, p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->computeQueuingMode(Lcom/google/android/marvin/talkback/Utterance;Landroid/view/accessibility/AccessibilityEvent;)Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    move-result-object v5

    .line 160
    .local v5, queueMode:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    invoke-virtual {p2}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    .local v7, text:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mSpeechController:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-virtual {v8, v7, v5, v3}, Lcom/google/android/marvin/talkback/SpeechController;->cleanUpAndSpeak(Ljava/lang/CharSequence;Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;Landroid/os/Bundle;)V

    .line 164
    .end local v5           #queueMode:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    .end local v7           #text:Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 128
    .end local v3           #params:Landroid/os/Bundle;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 129
    .local v6, resId:I
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v8, v6, v0, v1}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(IFF)Z

    goto :goto_0

    .line 133
    .end local v6           #resId:I
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 134
    .restart local v6       #resId:I
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v8, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playVibration(I)Z

    goto :goto_1

    .line 138
    .end local v6           #resId:I
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 139
    .local v4, prefId:I
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mCustomResourceMapper:Lcom/google/android/marvin/talkback/CustomResourceMapper;

    invoke-virtual {v8, v4}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->getResourceIdForPreference(I)I

    move-result v6

    .line 141
    .restart local v6       #resId:I
    if-lez v6, :cond_0

    .line 142
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v8, v6, v0, v1}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playSound(IFF)Z

    goto :goto_2

    .line 147
    .end local v4           #prefId:I
    .end local v6           #resId:I
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 148
    .restart local v4       #prefId:I
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mCustomResourceMapper:Lcom/google/android/marvin/talkback/CustomResourceMapper;

    invoke-virtual {v8, v4}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->getResourceIdForPreference(I)I

    move-result v6

    .line 150
    .restart local v6       #resId:I
    if-lez v6, :cond_1

    .line 151
    iget-object v8, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mFeedbackController:Lcom/google/android/marvin/talkback/PreferenceFeedbackController;

    invoke-virtual {v8, v6}, Lcom/google/android/marvin/talkback/PreferenceFeedbackController;->playVibration(I)Z

    goto :goto_3
.end method


# virtual methods
.method public process(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mEventQueue:Lcom/google/android/marvin/talkback/EventQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/EventQueue;->add(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 84
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ProcessorEventQueue;->mHandler:Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/ProcessorEventQueue$ProcessorEventHandler;->postSpeak(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 82
    monitor-exit v1

    .line 86
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
