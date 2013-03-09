.class public final Lcom/google/android/marvin/talkback/formatter/TextFormatters;
.super Ljava/lang/Object;
.source "TextFormatters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;,
        Lcom/google/android/marvin/talkback/formatter/TextFormatters$SelectedTextFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_PITCH:F = 1.2f

.field private static final DEFAULT_RATE:F = 1.0f

.field private static final SELECTION_DELAY:J = 0x64L

.field private static sChangedPackage:Ljava/lang/CharSequence;

.field private static sChangedTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedTimestamp:J

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedPackage:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$0(J)V
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-wide p0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedTimestamp:J

    return-void
.end method

.method static synthetic access$1(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedPackage:Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$2(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 408
    invoke-static {p0}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/CharSequence;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-static {p0, p1, p2}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->areValidIndices(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4()J
    .locals 2

    .prologue
    .line 54
    sget-wide v0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedTimestamp:J

    return-wide v0
.end method

.method static synthetic access$5()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->sChangedPackage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static areValidIndices(Ljava/lang/CharSequence;II)Z
    .locals 1
    .parameter "text"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 398
    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "event"

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 411
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const-string v1, ""

    .line 415
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0
.end method
