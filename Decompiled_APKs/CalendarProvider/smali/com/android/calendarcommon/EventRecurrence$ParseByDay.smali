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

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendarcommon/EventRecurrence$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;-><init>()V

    return-void
.end method

.method private static parseWday(Ljava/lang/String;[I[II)V
    .locals 8
    .parameter "str"
    .parameter "byday"
    .parameter "bydayNum"
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v4, v5, -0x2

    .line 822
    .local v4, wdayStrStart:I
    if-lez v4, :cond_0

    .line 824
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, numPart:Ljava/lang/String;
    const/16 v5, -0x35

    const/16 v6, 0x35

    invoke-static {v1, v5, v6, v7}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseIntRange(Ljava/lang/String;IIZ)I

    move-result v0

    .line 826
    .local v0, num:I
    aput v0, p2, p3

    .line 827
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 832
    .end local v0           #num:I
    .end local v1           #numPart:Ljava/lang/String;
    .local v3, wdayStr:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/calendarcommon/EventRecurrence;->access$1500()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 833
    .local v2, wday:Ljava/lang/Integer;
    if-nez v2, :cond_1

    .line 834
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

    .line 830
    .end local v2           #wday:Ljava/lang/Integer;
    .end local v3           #wdayStr:Ljava/lang/String;
    :cond_0
    move-object v3, p0

    .restart local v3       #wdayStr:Ljava/lang/String;
    goto :goto_0

    .line 836
    .restart local v2       #wday:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p1, p3

    .line 837
    return-void
.end method


# virtual methods
.method public parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I
    .locals 8
    .parameter "value"
    .parameter "er"

    .prologue
    const/4 v7, 0x1

    .line 795
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    .line 797
    const/4 v1, 0x1

    .line 798
    .local v1, bydayCount:I
    new-array v0, v7, [I

    .line 799
    .local v0, byday:[I
    new-array v2, v7, [I

    .line 800
    .local v2, bydayNum:[I
    const/4 v6, 0x0

    invoke-static {p1, v0, v2, v6}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    .line 811
    :cond_0
    iput-object v0, p2, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 812
    iput-object v2, p2, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 813
    iput v1, p2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 814
    const/16 v6, 0x80

    return v6

    .line 802
    .end local v0           #byday:[I
    .end local v1           #bydayCount:I
    .end local v2           #bydayNum:[I
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, wdays:[Ljava/lang/String;
    array-length v4, v5

    .line 804
    .local v4, len:I
    move v1, v4

    .line 805
    .restart local v1       #bydayCount:I
    new-array v0, v4, [I

    .line 806
    .restart local v0       #byday:[I
    new-array v2, v4, [I

    .line 807
    .restart local v2       #bydayNum:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 808
    aget-object v6, v5, v3

    invoke-static {v6, v0, v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;->parseWday(Ljava/lang/String;[I[II)V

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
