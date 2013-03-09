.class Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;
.super Ljava/lang/Object;
.source "FBusPhoneBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBGeneralFieldInfo"
.end annotation


# instance fields
.field private m_iDataLen:I

.field private m_iFieldHeadLen:I

.field private m_iFieldLen:I

.field private m_iFieldType:I

.field final synthetic this$0:Lcom/futuredial/fbus/FBusPhoneBook;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusPhoneBook;[BII)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "iCursor"
    .parameter "iFieldHeadLen"

    .prologue
    const/4 v0, 0x0

    .line 217
    iput-object p1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->this$0:Lcom/futuredial/fbus/FBusPhoneBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldType:I

    .line 220
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldLen:I

    .line 222
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iDataLen:I

    .line 223
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x6

    .end local p4
    :cond_0
    iput p4, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldHeadLen:I

    .line 225
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->InitializeField([BI)V

    .line 226
    return-void
.end method

.method private InitializeField([BI)V
    .locals 4
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 236
    move v1, p2

    .line 237
    .local v1, iStart:I
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, iCursor:I
    aget-byte v2, p1, p2

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldType:I

    .line 239
    add-int/lit8 p2, v0, 0x1

    .line 240
    .end local v0           #iCursor:I
    .restart local p2
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v2, p1, p2

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    mul-int/lit16 v2, v2, 0x100

    add-int/lit8 p2, v0, 0x1

    .end local v0           #iCursor:I
    .restart local p2
    aget-byte v3, p1, v0

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    iput v2, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldLen:I

    .line 242
    add-int/lit8 p2, p2, 0x1

    .line 254
    iget v2, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldHeadLen:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iDataLen:I

    .line 255
    return-void
.end method

.method static synthetic access$400(Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iFieldHeadLen:I

    return v0
.end method

.method static synthetic access$500(Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 216
    iget v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBGeneralFieldInfo;->m_iDataLen:I

    return v0
.end method
