.class public Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
.super Ljava/lang/Object;
.source "HtcIsimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/HtcIsimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PCSCF_Address"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ISIM"

.field static final RESPONSE_ADDRESS_LENGTH:I = 0x1

.field static final RESPONSE_ADDRESS_TYPE:I = 0x2

.field static final RESPONSE_DATA_RECORD_TAG:I


# instance fields
.field mAddress:Ljava/lang/String;

.field mAddressType:I

.field final synthetic this$0:Lcom/android/internal/telephony/ims/HtcIsimRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ims/HtcIsimRecords;[B)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->this$0:Lcom/android/internal/telephony/ims/HtcIsimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->parseRecord([B)V

    return-void
.end method

.method private parseRecord([B)V
    .locals 5

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    iput v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v2, p1, v3

    if-lt v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "UTF-8"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
