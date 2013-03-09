.class Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;
.super Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
.source "FBusCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFieldInfo"
.end annotation


# static fields
.field public static final m_iFieldHeadLen:I = 0x6


# instance fields
.field private m_iDataLen:I

.field private m_strFieldValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/fbus/FBusCalendar;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->this$0:Lcom/futuredial/fbus/FBusCalendar;

    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_iDataLen:I

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;

    .line 726
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->InitializeField([BI)V

    .line 727
    return-void
.end method

.method private InitializeField([BI)V
    .locals 5
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 733
    add-int/lit8 p2, p2, 0x4

    .line 734
    array-length v2, p1

    add-int/lit8 v3, p2, 0x2

    if-ge v2, v3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, iCursor:I
    aget-byte v2, p1, p2

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    mul-int/lit16 v2, v2, 0x100

    add-int/lit8 p2, v1, 0x1

    .end local v1           #iCursor:I
    .restart local p2
    aget-byte v3, p1, v1

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_iDataLen:I

    .line 736
    array-length v2, p1

    iget v3, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_iDataLen:I

    add-int/2addr v3, p2

    if-lt v2, v3, :cond_0

    .line 740
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_iDataLen:I

    const-string v4, "UNICODE"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "FBusCalendar::TextFieldInfo"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;

    return-object v0
.end method
