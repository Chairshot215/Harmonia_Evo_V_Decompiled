.class public Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;
.super Ljava/lang/Object;
.source "ScrollFormatter.java"

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# static fields
.field private static final MIN_SCROLL_INTERVAL:J = 0xfaL

.field private static mLastScrollEvent:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;->mLastScrollEvent:J

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScrollPercent(Landroid/view/accessibility/AccessibilityEvent;)F
    .locals 4
    .parameter "event"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;->getScrollPosition(Landroid/view/accessibility/AccessibilityEvent;)F

    move-result v0

    .line 80
    .local v0, position:F
    const/high16 v1, 0x42c8

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    return v1
.end method

.method private getScrollPosition(Landroid/view/accessibility/AccessibilityEvent;)F
    .locals 7
    .parameter "event"

    .prologue
    .line 92
    new-instance v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-direct {v3, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    .line 93
    .local v3, record:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v1

    .line 94
    .local v1, itemCount:I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v0

    .line 97
    .local v0, fromIndex:I
    if-ltz v0, :cond_0

    if-lez v1, :cond_0

    .line 98
    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    .line 116
    :goto_0
    return v5

    .line 101
    :cond_0
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getScrollY()I

    move-result v4

    .line 102
    .local v4, scrollY:I
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY()I

    move-result v2

    .line 106
    .local v2, maxScrollY:I
    if-ltz v4, :cond_1

    if-lez v2, :cond_1

    .line 107
    int-to-float v5, v4

    int-to-float v6, v2

    div-float/2addr v5, v6

    goto :goto_0

    .line 112
    :cond_1
    if-ltz v4, :cond_2

    if-lez v1, :cond_2

    if-gt v4, v1, :cond_2

    .line 113
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    goto :goto_0

    .line 116
    :cond_2
    const/high16 v5, 0x3f00

    goto :goto_0
.end method


# virtual methods
.method public format(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/Utterance;)Z
    .locals 12
    .parameter "event"
    .parameter "context"
    .parameter "utterance"

    .prologue
    const/4 v5, 0x1

    .line 43
    invoke-static {p1}, Lcom/google/android/marvin/talkback/AccessibilityEventUtils;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 45
    .local v4, text:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 46
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 67
    :goto_0
    return v5

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 52
    .local v0, currentTime:J
    sget-wide v6, Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;->mLastScrollEvent:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 56
    const/4 v5, 0x0

    goto :goto_0

    .line 59
    :cond_1
    sput-wide v0, Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;->mLastScrollEvent:J

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/ScrollFormatter;->getScrollPercent(Landroid/view/accessibility/AccessibilityEvent;)F

    move-result v2

    .line 62
    .local v2, percent:F
    const-wide/high16 v6, 0x4000

    float-to-double v8, v2

    const-wide/high16 v10, 0x4049

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    .line 64
    .local v3, rate:F
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getEarcons()Ljava/util/List;

    move-result-object v6

    const v7, 0x7f050013

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/Utterance;->getMetadata()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "earcon_rate"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0
.end method
