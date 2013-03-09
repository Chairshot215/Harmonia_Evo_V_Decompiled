.class public Lcom/android/internal/telephony/EmailRecord;
.super Ljava/lang/Object;
.source "EmailRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final RECORD_ID_BYTES:I = 0x1

.field static final SFI_BYTES:I = 0x1


# instance fields
.field mAdnRecordNumber:I

.field mAdnSFI:I

.field mEmailAddress:Ljava/lang/String;

.field mRecordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/EmailRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/EmailRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/EmailRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    iput p2, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/EmailRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/EmailRecord;->parseRecord(I[BZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/EmailRecord;-><init>(I[B)V

    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 6

    const/16 v5, 0xa1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v2, -0x1

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v3, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x50

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_2

    :cond_0
    const-string v2, "EmailRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRecord tempAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x40

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    :goto_1
    const-string v2, "EmailRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRecord mAdnRecordNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EmailRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRecord sfi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EmailRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseRecord mEmailAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    array-length v2, p2

    invoke-static {p2, v3, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 4

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    const-string v1, "EmailRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRecord mAdnRecordNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EmailRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRecord sfi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EmailRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRecord mEmailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public buildEmailString(IZ)[B
    .locals 6

    const/4 v5, 0x0

    new-array v2, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_1
    return-object v2
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    iput v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
