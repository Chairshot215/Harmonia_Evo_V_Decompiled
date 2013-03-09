.class public final Landroid/nfc/NdefMessage;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t


# instance fields
.field private final mRecords:[Landroid/nfc/NdefRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/nfc/NdefMessage$1;

    invoke-direct {v0}, Landroid/nfc/NdefMessage$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Landroid/nfc/NdefMessage;->parseNdefMessage([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "Error while parsing NDEF message"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/nfc/NdefRecord;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private native parseNdefMessage([B)I
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRecords()[Landroid/nfc/NdefRecord;
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {v0}, [Landroid/nfc/NdefRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    new-array v1, v6, [B

    :cond_1
    return-object v1

    :cond_2
    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toByteArray()[B

    move-result-object v2

    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v3, v4, [B

    if-nez v0, :cond_3

    aget-byte v4, v2, v6

    or-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    :goto_1
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_4

    aget-byte v4, v2, v6

    or-int/lit8 v4, v4, 0x40

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    :goto_2
    array-length v4, v1

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v1

    array-length v5, v2

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-byte v4, v2, v6

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    goto :goto_1

    :cond_4
    aget-byte v4, v2, v6

    and-int/lit8 v4, v4, -0x41

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
