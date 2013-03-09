.class Lcom/android/calendarcommon/EventRecurrence$ParseInterval;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseInterval"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 3
    .parameter "value"
    .parameter "er"

    .prologue
    .line 757
    const/4 v0, 0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    .line 758
    const/16 v0, 0x8

    return v0
.end method
