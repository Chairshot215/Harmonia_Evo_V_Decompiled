.class Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByMinute"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    .line 773
    const/4 v1, 0x0

    const/16 v2, 0x3b

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 774
    .local v0, byminute:[I
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    .line 775
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    .line 776
    const/16 v1, 0x20

    return v1
.end method
