.class public Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;
.super Ljava/lang/Object;
.source "TouchExplorationSystemUiFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# instance fields
.field private final mLastUtteranceText:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;->mLastUtteranceText:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method

.method private getRecordText(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {p2, v5}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getRecord(Landroid/view/accessibility/AccessibilityEvent;I)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getText()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    return-object v0

    .line 73
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 74
    .local v2, entry:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Lcom/google/android/marvin/utils/StringBuilderUtils;->appendWithSeparator(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 4
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p2, p1}, Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;->getRecordText(Landroid/content/Context;Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 47
    .local v0, recordText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;->mLastUtteranceText:Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getVibrationPatterns()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f060017

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f050011

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;->mLastUtteranceText:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 61
    iget-object v1, p0, Lcom/google/android/marvin/talkback/formatter/TouchExplorationSystemUiFormatter;->mLastUtteranceText:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method
