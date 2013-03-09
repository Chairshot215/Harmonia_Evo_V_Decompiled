.class Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;
.super Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
.source "FBusCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DWordFieldInfo"
.end annotation


# static fields
.field public static final m_iFieldHeadLen:I = 0x4


# instance fields
.field private m_lFieldValue:J

.field final synthetic this$0:Lcom/futuredial/fbus/FBusCalendar;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V
    .locals 0
    .parameter
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->this$0:Lcom/futuredial/fbus/FBusCalendar;

    .line 695
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 697
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->InitializeField([BI)V

    .line 698
    return-void
.end method

.method private InitializeField([BI)V
    .locals 9
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    const-wide/16 v7, 0x100

    .line 706
    add-int/lit8 p2, p2, 0x4

    .line 707
    array-length v1, p1

    add-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_0

    .line 717
    :goto_0
    return-void

    .line 712
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, iCursor:I
    aget-byte v1, p1, p2

    int-to-long v1, v1

    add-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    rem-long/2addr v1, v7

    const-wide/32 v3, 0x1000000

    mul-long/2addr v1, v3

    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v3, p1, v0

    int-to-long v3, v3

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    rem-long/2addr v3, v7

    const-wide/32 v5, 0x10000

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v3, p1, p2

    int-to-long v3, v3

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    rem-long/2addr v3, v7

    mul-long/2addr v3, v7

    add-long/2addr v1, v3

    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v3, p1, v0

    int-to-long v3, v3

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    rem-long/2addr v3, v7

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 693
    iget-wide v0, p0, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J

    return-wide v0
.end method
