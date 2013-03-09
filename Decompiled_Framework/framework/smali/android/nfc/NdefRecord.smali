.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field public static final RTD_ALTERNATIVE_CARRIER:[B = null

.field public static final RTD_ANDROID_APP:[B = null

.field public static final RTD_HANDOVER_CARRIER:[B = null

.field public static final RTD_HANDOVER_REQUEST:[B = null

.field public static final RTD_HANDOVER_SELECT:[B = null

.field public static final RTD_SMART_POSTER:[B = null

.field public static final RTD_TEXT:[B = null

.field public static final RTD_URI:[B = null

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mFlags:B

.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v4, [B

    const/16 v1, 0x54

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v4, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const-string v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://www."

    aput-object v1, v0, v4

    const-string/jumbo v1, "https://www."

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string/jumbo v2, "http://"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "https://"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "tel:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "mailto:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ftp://anonymous:anonymous@"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ftp://ftp."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ftps://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "smb://"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "nfs://"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ftp://"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dav://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "news:"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "telnet://"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "imap:"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "rtsp://"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "urn:"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "pop:"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "sip:"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "sips:"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "tftp:"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "btspp://"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "btl2cap://"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "btgoep://"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "tcpobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "irdaobex://"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "file://"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "urn:epc:id:"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "urn:epc:tag:"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "urn:epc:pat:"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "urn:epc:raw:"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "urn:epc:"

    aput-object v2, v0, v1

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 0x1
        0x53t
        0x70t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x61t
        0x63t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x48t
        0x63t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x48t
        0x72t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .locals 6

    const/16 v5, -0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[BB)V

    return-void
.end method

.method constructor <init>(S[B[B[BB)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TNF out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p4

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    or-int/lit8 v0, p5, 0x10

    int-to-byte p5, v0

    :cond_4
    array-length v0, p3

    if-eqz v0, :cond_5

    or-int/lit8 v0, p5, 0x8

    int-to-byte p5, v0

    :cond_5
    iput-byte p5, p0, Landroid/nfc/NdefRecord;->mFlags:B

    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Landroid/nfc/NdefRecord;->mFlags:B

    iput-short v1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {p0, p1}, Landroid/nfc/NdefRecord;->parseNdefRecord([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "Error while parsing NDEF record"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static varargs concat([[B)[B
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    array-length v7, v1

    add-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v4, [B

    const/4 v5, 0x0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v1

    add-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v6
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5

    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    new-array v3, v3, [B

    sget-object v4, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    int-to-byte v1, v0

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    aput-byte v1, v2, v6

    array-length v4, v3

    invoke-static {v3, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v6, v6, [B

    invoke-direct {v4, v7, v5, v6, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native generate(SS[B[B[B)[B
.end method

.method private native parseNdefRecord([B)I
.end method

.method public static parseWellKnownUriRecord(Landroid/nfc/NdefRecord;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    array-length v4, v1

    if-ge v4, v5, :cond_0

    new-instance v4, Landroid/nfc/FormatException;

    const-string v5, "Payload is not a valid URI (missing prefix)"

    invoke-direct {v4, v5}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    aget-byte v4, v1, v6

    and-int/lit16 v3, v4, 0xff

    if-ltz v3, :cond_1

    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    :cond_1
    new-instance v4, Landroid/nfc/FormatException;

    const-string v5, "Payload is not a valid URI (invalid prefix)"

    invoke-direct {v4, v5}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    sget-object v4, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    aget-object v2, v4, v3

    new-array v4, v5, [[B

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v4, v6

    array-length v5, v1

    invoke-static {v1, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Landroid/nfc/NdefRecord;->concat([[B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .locals 1

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toByteArray()[B
    .locals 6

    iget-byte v0, p0, Landroid/nfc/NdefRecord;->mFlags:B

    int-to-short v1, v0

    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v5, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/NdefRecord;->generate(SS[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-byte v0, p0, Landroid/nfc/NdefRecord;->mFlags:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
