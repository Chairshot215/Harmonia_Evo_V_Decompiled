.class public Lcom/google/android/marvin/talkback/formatter/FallbackFormatter;
.super Ljava/lang/Object;
.source "FallbackFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 6
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    const/4 v5, 0x1

    .line 27
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 32
    .local v1, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 33
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 62
    :cond_1
    :goto_0
    return v5

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 57
    :goto_1
    invoke-static {p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 58
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 49
    .end local v2           #text:Ljava/lang/CharSequence;
    :sswitch_0
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f060019

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    :sswitch_1
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getCustomEarcons()Ljava/util/List;

    move-result-object v3

    const/high16 v4, 0x7f0a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f060017

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method
