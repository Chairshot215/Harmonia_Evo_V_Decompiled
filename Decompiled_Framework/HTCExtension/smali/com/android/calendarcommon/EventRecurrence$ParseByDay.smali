.class Lcom/android/calendarcommon/EventRecurrence$ParseByDay;
.super Lcom/android/calendarcommon/EventRecurrence$PartParser;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseByDay"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;-><init>()V

    return-void
.end method

.method private static parseWday(Ljava/lang/String;[I[II)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x2

    if-lez v4, :cond_0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v5, -0x35

    const/16 v6, 0x35

    invoke-static {v1, v5, v6, v7}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    aput v0, p2, p3

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/android/calendarcommon/EventRecurrence;->access$1500()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    new-instance v5, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid BYDAY value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v3, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p1, p3

    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 8

    const/4 v7, 0x1

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    const/4 v1, 0x1

    new-array v0, v7, [I

    new-array v2, v7, [I

    const/4 v6, 0x0

    invoke-static {p1, v0, v2, v6}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    :cond_0
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iput-object v2, p2, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    const/16 v6, 0x80

    return v6

    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v4, v5

    move v1, v4

    new-array v0, v4, [I

    new-array v2, v4, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v5, v3

    invoke-static {v6, v0, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
