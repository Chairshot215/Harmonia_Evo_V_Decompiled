.class Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
.super Ljava/lang/Object;
.source "FBusCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalBaseFieldInfo"
.end annotation


# static fields
.field public static final m_iFieldHeadLen:I = 0x4


# instance fields
.field private m_iFieldLen:I

.field private m_iMainType:I

.field private m_iSubType:I

.field final synthetic this$0:Lcom/futuredial/fbus/FBusCalendar;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    const/4 v0, 0x0

    .line 671
    iput-object p1, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->this$0:Lcom/futuredial/fbus/FBusCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iMainType:I

    .line 673
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I

    .line 674
    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iFieldLen:I

    .line 676
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->InitializeField([BI)V

    .line 677
    return-void
.end method

.method private InitializeField([BI)V
    .locals 3
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 686
    array-length v1, p1

    add-int/lit8 v2, p2, 0x4

    if-ge v1, v2, :cond_0

    .line 690
    :goto_0
    return-void

    .line 687
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iMainType:I

    .line 688
    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v1, p1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I

    .line 689
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
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

    iput v1, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iFieldLen:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 670
    iget v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iFieldLen:I

    return v0
.end method

.method static synthetic access$100(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 670
    iget v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iMainType:I

    return v0
.end method

.method static synthetic access$200(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 670
    iget v0, p0, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I

    return v0
.end method
