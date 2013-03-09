.class public Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;
.super Ljava/lang/Object;
.source "ProgressBarFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProgressPercent(Landroid/view/accessibility/AccessibilityEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v0

    .line 100
    .local v0, maxProgress:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getCurrentItemIndex()I

    move-result v2

    .line 101
    .local v2, progress:I
    int-to-float v3, v2

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 103
    .local v1, percent:F
    const/high16 v3, 0x42c8

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    return v3
.end method

.method private shouldDropEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 78
    .local v0, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 81
    .local v1, source:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    sget-object v3, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static updateRecentlyExplored(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    invoke-static {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->sRecentlyExplored:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 10
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    const/4 v9, 0x1

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->shouldDropEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const/4 v3, 0x2

    const-string v4, "Dropping unwanted progress bar event"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v5}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return v9

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 61
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/ProgressBarFormatter;->getProgressPercent(Landroid/view/accessibility/AccessibilityEvent;)F

    move-result v0

    .line 67
    .local v0, percent:F
    const-wide/high16 v3, 0x4000

    float-to-double v5, v0

    const-wide/high16 v7, 0x4049

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 69
    .local v1, rate:F
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f050013

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "earcon_rate"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 71
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "earcon_volume"

    const/high16 v5, 0x3f00

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method
