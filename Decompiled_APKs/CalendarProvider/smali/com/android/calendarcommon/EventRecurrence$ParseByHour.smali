.class Lcom/android/calendarcommon/EventRecurrence$ParseByHour;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByHour"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    .line 782
    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 783
    .local v0, byhour:[I
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    .line 784
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    .line 785
    const/16 v1, 0x40

    return v1
.end method
