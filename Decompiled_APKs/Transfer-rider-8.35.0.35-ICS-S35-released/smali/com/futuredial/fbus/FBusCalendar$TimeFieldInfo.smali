.class Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;
.super Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
.source "FBusCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeFieldInfo"
.end annotation


# static fields
.field private static final m_iFieldHeadLen:I = 0x4


# instance fields
.field private m_iDay:I

.field private m_iHour:I

.field private m_iMinute:I

.field private m_iMonth:I

.field private m_iSecond:I

.field private m_iYear:I

.field private m_strTimeValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/FBusCalendar;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    const/4 v0, 0x0

    .line 751
    iput-object p1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->this$0:Lcom/futuredial/fbus/FBusCalendar;

    .line 752
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 753
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iYear:I

    .line 754
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMonth:I

    .line 755
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iDay:I

    .line 756
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iHour:I

    .line 757
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMinute:I

    .line 758
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iSecond:I

    .line 759
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;

    .line 761
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->InitializeField([BI)V

    .line 762
    return-void
.end method

.method private InitializeField([BI)V
    .locals 5
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 777
    add-int/lit8 p2, p2, 0x4

    .line 778
    array-length v1, p1

    add-int/lit8 v2, p2, 0x8

    if-ge v1, v2, :cond_0

    .line 788
    :goto_0
    return-void

    .line 779
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    mul-int/lit16 v1, v1, 0x100

    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v2, p1, v0

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    add-int/2addr v1, v2

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iYear:I

    .line 780
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMonth:I

    .line 781
    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v1, p1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iDay:I

    .line 782
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iHour:I

    .line 783
    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v1, p1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMinute:I

    .line 784
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iSecond:I

    .line 787
    const-string v1, "%04d%02d%02dT%02d%02d%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;

    move p2, v0

    .line 788
    .end local v0           #iCursor:I
    .restart local p2
    goto/16 :goto_0
.end method

.method static synthetic access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 750
    iget v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iDay:I

    return v0
.end method

.method static synthetic access$700(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 750
    iget v0, p0, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMonth:I

    return v0
.end method
