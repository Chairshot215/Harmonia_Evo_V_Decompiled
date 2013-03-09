.class Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;
.super Ljava/lang/Object;
.source "FBusPhoneBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/fbus/FBusPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PBNumFieldInfo"
.end annotation


# static fields
.field public static final m_iFieldHeadLen:I = 0xa


# instance fields
.field private m_iDataLen:I

.field private m_iFieldLen:I

.field private m_iFieldType:I

.field private m_iNumType:I

.field final synthetic this$0:Lcom/futuredial/fbus/FBusPhoneBook;


# direct methods
.method public constructor <init>(Lcom/futuredial/fbus/FBusPhoneBook;[BI)V
    .locals 1
    .parameter
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    const/4 v0, 0x0

    .line 259
    iput-object p1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->this$0:Lcom/futuredial/fbus/FBusPhoneBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iFieldType:I

    .line 262
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iFieldLen:I

    .line 264
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iNumType:I

    .line 265
    iput v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iDataLen:I

    .line 268
    invoke-direct {p0, p2, p3}, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->InitializeField([BI)V

    .line 269
    return-void
.end method

.method private InitializeField([BI)V
    .locals 3
    .parameter "buffer"
    .parameter "iCursor"

    .prologue
    .line 282
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iFieldType:I

    .line 284
    add-int/lit8 p2, v0, 0x1

    .line 285
    .end local v0           #iCursor:I
    .restart local p2
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

    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iFieldLen:I

    .line 287
    add-int/lit8 p2, p2, 0x1

    .line 288
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iNumType:I

    .line 289
    add-int/lit8 p2, v0, 0x3

    .line 290
    .end local v0           #iCursor:I
    .restart local p2
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #iCursor:I
    aget-byte v1, p1, p2

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iDataLen:I

    .line 291
    return-void
.end method

.method static synthetic access$200(Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 258
    iget v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iNumType:I

    return v0
.end method

.method static synthetic access$300(Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 258
    iget v0, p0, Lcom/futuredial/fbus/FBusPhoneBook$PBNumFieldInfo;->m_iDataLen:I

    return v0
.end method
