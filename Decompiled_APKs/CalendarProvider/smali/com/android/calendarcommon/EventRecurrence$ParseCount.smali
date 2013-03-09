.class Lcom/android/calendarcommon/EventRecurrence$ParseCount;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseCount"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 3
    .parameter "value"
    .parameter "er"

    .prologue
    .line 750
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/android/calendarcommon/EventRecurrence;->count:I

    .line 751
    const/4 v0, 0x4

    return v0
.end method
