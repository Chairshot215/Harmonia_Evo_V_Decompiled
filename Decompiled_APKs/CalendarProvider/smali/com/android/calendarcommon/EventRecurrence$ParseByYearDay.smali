.class Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByYearDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 4
    .parameter "value"
    .parameter "er"

    .prologue
    .line 851
    const/16 v1, -0x16e

    const/16 v2, 0x16e

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;->parseNumberList(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 852
    .local v0, byyearday:[I
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    .line 853
    array-length v1, v0

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    .line 854
    const/16 v1, 0x200

    return v1
.end method
