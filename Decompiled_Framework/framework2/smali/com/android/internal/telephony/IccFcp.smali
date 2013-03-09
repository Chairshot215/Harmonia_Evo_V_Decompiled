.class public Lcom/android/internal/telephony/IccFcp;
.super Ljava/lang/Object;
.source "IccFcp.java"


# static fields
.field public static final FD_CYCLIC_STRUCTURE:I = 0x6

.field private static final FD_IDX_DATA_CODING_BYTE:I = 0x1

.field private static final FD_IDX_FILE_DESCRIPTOR_BYTE:I = 0x0

.field private static final FD_IDX_NUMBER_OF_RECORDS:I = 0x4

.field private static final FD_IDX_RECORD_LENGTH_1:I = 0x2

.field private static final FD_IDX_RECORD_LENGTH_2:I = 0x3

.field public static final FD_LINEAR_FIXED_STRUCTURE:I = 0x2

.field public static final FD_TRANSPARENT_STRUCTURE:I = 0x1

.field private static final RESPONSE_TAG_FCP:I = 0x62

.field private static final RESPONSE_TAG_FILE_DESCRIPTOR:I = 0x82

.field private static final RESPONSE_TAG_FILE_IDENTIFIER:I = 0x83

.field private static final RESPONSE_TAG_FILE_SIZE:I = 0x80

.field private static final RESPONSE_TAG_LCSI:I = 0x8a

.field private static final RESPONSE_TAG_PROP_INFO:I = 0xa5

.field private static final RESPONSE_TAG_SECURITY_ATTRIBUTES_1:I = 0x8b

.field private static final RESPONSE_TAG_SECURITY_ATTRIBUTES_2:I = 0x8c

.field private static final RESPONSE_TAG_SECURITY_ATTRIBUTES_3:I = 0xab

.field private static final RESPONSE_TAG_SFI:I = 0x88

.field private static final RESPONSE_TAG_TOTAL_FILE_SIZE:I = 0x81


# instance fields
.field fileId:I

.field fileSize:I

.field fileType:I

.field isTlvFormat:Z

.field numOfRecords:I

.field recordLength:I


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    array-length v3, p1

    const/4 v4, 0x3

    if-le v3, v4, :cond_4

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_4

    iput-boolean v5, p0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_1

    const/4 v0, 0x2

    :goto_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, p1

    invoke-direct {v2, p1, v0, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v3, 0x82

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccFcp;->parseFileDescriptor([B)V

    :cond_0
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v3, 0x83

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccFcp;->parseFileId([B)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x80

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccFcp;->parseFileSize([B)V

    :cond_4
    return-void
.end method

.method private parseFileDescriptor([B)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    iget v0, p0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/IccFcp;->numOfRecords:I

    :cond_1
    return-void
.end method

.method private parseFileId([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccFcp;->fileId:I

    :cond_0
    return-void
.end method

.method private parseFileSize([B)V
    .locals 5

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[iccFcp] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccFcp;->isTlvFormat:Z

    if-eqz v0, :cond_0

    const-string v0, "3G TLV format"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccFcp;->fileType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccFcp;->fileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccFcp;->fileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recordLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/IccFcp;->recordLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "2G format"

    goto :goto_0
.end method
