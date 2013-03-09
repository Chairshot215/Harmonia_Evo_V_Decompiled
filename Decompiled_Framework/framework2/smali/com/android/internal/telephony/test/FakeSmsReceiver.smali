.class public Lcom/android/internal/telephony/test/FakeSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeSmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;
    }
.end annotation


# static fields
.field private static final CDMA_FAKE_SMS:I = 0x1

.field public static CDMA_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final FAKE_CDMA_SMS_MESSAGE:I = 0x1

.field private static final FAKE_GSM_SMS_MESSAGE:I = 0x2

.field private static final GSM_FAKE_SMS:I = 0x2

.field public static GSM_FAKE_SMS_ACTION:Ljava/lang/String; = null

.field private static final HTC_DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = true

.field private static final NUMBERING_PLAN_DATA:B = 0x3t

.field private static final NUMBERING_PLAN_PRIVATE:B = 0x9t

.field private static final NUMBERING_PLAN_TELEPHONY:B = 0x1t

.field private static final NUMBERING_PLAN_TELEX:B = 0x4t

.field private static final NUMBERING_PLAN_UNKNOWN:B = 0x0t

.field private static final NUMBERING_TYPE_ABBREVIATED:B = 0x6t

.field private static final NUMBERING_TYPE_INTERNATIONAL:B = 0x1t

.field private static final NUMBERING_TYPE_INTERNET_EMAIL_ADDRESS:B = 0x2t

.field private static final NUMBERING_TYPE_INTERNET_PROTOCOL:B = 0x1t

.field private static final NUMBERING_TYPE_NATIONAL:B = 0x2t

.field private static final NUMBERING_TYPE_NETWORK_SPECIFIC:B = 0x3t

.field private static final NUMBERING_TYPE_SUBSCRIBER:B = 0x4t

.field private static final NUMBERING_TYPE_UNKNOWN:B = 0x0t

.field private static final SUBADDRESS_TYPE_NSAP:B = 0x0t

.field private static final SUBADDRESS_TYPE_USER_SPECIFIED:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "FakeSmsReceiver"

.field private static final TYPE_ABBREVIATED:I = 0x5

.field private static final TYPE_INTERNATIONAL:I = 0x1

.field private static final TYPE_INTERNET_EMAIL_ADDRESS:I = 0x8

.field private static final TYPE_INTERNET_PROTOCOL:I = 0x7

.field private static final TYPE_NATIONAL:I = 0x2

.field private static final TYPE_NETWORK_SPECIFIC:I = 0x3

.field private static final TYPE_RESERVED:I = 0x9

.field private static final TYPE_SUBSCRIBER:I = 0x4

.field private static final TYPE_UNKNOWN:I = 0x0

.field private static final TYPE_UNKNOWN_DATA_NETWORK:I = 0x6

.field private static final bitsMaskRight:[S

.field private static final dtmfDigitToAscII:[B

.field private static mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;


# instance fields
.field TransportParam_subAddr:[B

.field TransportParam_subAddrType:B

.field private dataEnd:I

.field public mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

.field private mContext:Landroid/content/Context;

.field public mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field private mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

.field private mMsgType:B

.field private mParcel:Landroid/os/Parcel;

.field private mSenderThread:Landroid/os/HandlerThread;

.field private m_filter:Landroid/content/IntentFilter;

.field private param_len:S

.field private smsData:[B

.field private startBitIndex_decodeAddress:I

.field private startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dtmfDigitToAscII:[B

    const-string v0, "com.android.mms.CDMAfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    const-string v0, "com.android.mms.GSMfakesms"

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x7t 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x3ft 0x0t
        0x7ft 0x0t
        0xfft 0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x0t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x2at
        0x23t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FakeSmsThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;I)V
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    const-string v0, "Jerry1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new FakeSmsReceiver, phone type> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    if-ne p3, v3, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CDMAFakeSmsThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;-><init>(Lcom/android/internal/telephony/test/FakeSmsReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    if-ne p3, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.CDMAfakesms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "Jerry1"

    const-string v1, "111111111111111111111111111111111111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GSMFakeSmsThread"

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->m_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.GSMfakesms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/test/FakeSmsReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->parseCdmaSMS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/test/FakeSmsReceiver;)Landroid/os/Parcel;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method private decodeAddress(IZI)[B
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v3

    add-int/lit8 p1, p1, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    if-nez v3, :cond_2

    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    shl-int/lit8 v5, v3, 0x3

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, 0x7

    shr-int/lit8 v5, v5, 0x3

    if-lt v4, v5, :cond_0

    packed-switch p3, :pswitch_data_0

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    invoke-direct {p0, p1, v6}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1, v6, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v1

    shl-int/lit8 v4, v3, 0x3

    add-int/2addr p1, v4

    :cond_4
    if-ne p3, v8, :cond_5

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    const/16 v4, 0x2b

    aput-byte v4, v2, v7

    array-length v4, v1

    invoke-static {v1, v7, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_5
    iput p1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBCDnumber(I)I
    .locals 4

    const/16 v3, 0x9

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v0, v2, 0xf

    and-int/lit8 v1, p1, 0xf

    if-gt v0, v3, :cond_0

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method private decodeBitStream(II)I
    .locals 8

    const/16 v7, 0x8

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v0, p1, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v5, v5, v2

    and-int/lit16 v4, v5, 0xff

    add-int v5, v0, p2

    if-gt v5, v7, :cond_1

    rsub-int/lit8 v5, v0, 0x8

    sub-int/2addr v5, p2

    shr-int v5, v4, v5

    sget-object v6, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v6, v6, p2

    and-int v4, v5, v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v5, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    rsub-int/lit8 v6, v0, 0x8

    aget-short v5, v5, v6

    and-int/2addr v4, v5

    add-int/lit8 v3, v2, 0x1

    rsub-int/lit8 v5, v0, 0x8

    sub-int v1, p2, v5

    :goto_1
    if-le v1, v7, :cond_2

    shl-int/lit8 v5, v4, 0x8

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    shl-int v5, v4, v1

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v6, v6, v3

    rsub-int/lit8 v7, v1, 0x8

    shr-int/2addr v6, v7

    sget-object v7, Lcom/android/internal/telephony/test/FakeSmsReceiver;->bitsMaskRight:[S

    aget-short v7, v7, v1

    and-int/2addr v6, v7

    or-int v4, v5, v6

    goto :goto_0
.end method

.method private decodeBitStreamIntoBytes(III)[B
    .locals 3

    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/2addr p1, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private decodeParameter_header()B
    .locals 4

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v0, v2, v3

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private decodeTransportParamAddress()V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v7, v10

    if-ge v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0x80

    shr-int/lit8 v3, v7, 0x7

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v7, v7, v10

    and-int/lit8 v7, v7, 0x40

    shr-int/lit8 v5, v7, 0x6

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v7, v7, 0x3

    add-int/lit8 v6, v7, 0x2

    if-eqz v3, :cond_4

    if-eqz v5, :cond_2

    move v7, v8

    :goto_0
    const/4 v10, 0x3

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-direct {p0, v7, v10}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->translateAddrNumberType(ZB)I

    move-result v2

    add-int/lit8 v6, v6, 0x3

    if-nez v5, :cond_3

    iget v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v10, v10, 0x3

    if-lt v7, v10, :cond_0

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    int-to-byte v1, v7

    add-int/lit8 v6, v6, 0x4

    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v6, v8, v2}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeAddress(IZI)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    aget-byte v8, v0, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v7, v9

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move v8, v9

    goto :goto_2
.end method

.method private decodeTransportParamServiceCategory()V
    .locals 4

    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private decodeTransportParamSubAddress()I
    .locals 13

    const/4 v12, 0x4

    const/16 v11, 0x8

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    move v4, v7

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xe0

    shr-int/lit8 v8, v8, 0x5

    int-to-byte v8, v8

    iput-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x10

    shr-int/lit8 v5, v8, 0x4

    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v10, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int v4, v8, v9

    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8, v5}, Landroid/os/Parcel;->writeInt(I)V

    if-nez v4, :cond_2

    move v4, v7

    goto :goto_0

    :cond_2
    shl-int/lit8 v8, v4, 0x1

    sub-int v4, v8, v5

    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v9, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v8, v9

    shr-int/lit8 v9, v4, 0x1

    add-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    shl-int/lit8 v8, v8, 0x3

    add-int/lit8 v6, v8, 0xc

    iget-byte v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    packed-switch v8, :pswitch_data_0

    move v4, v7

    goto :goto_0

    :pswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x8

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    move v4, v7

    goto :goto_0

    :cond_4
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v2

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v4, -0x2

    sparse-switch v2, :sswitch_data_0

    move v4, v7

    goto :goto_0

    :sswitch_0
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x10

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_5

    move v4, v7

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    add-int/lit8 v9, v6, 0x8

    invoke-direct {p0, v9, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBCDnumber(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-short v0, v8

    add-int/lit8 v6, v6, 0x10

    packed-switch v0, :pswitch_data_1

    move v4, v7

    goto/16 :goto_0

    :pswitch_1
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit16 v9, v6, 0x80

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_6

    move v4, v7

    goto/16 :goto_0

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_8

    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x10

    const/4 v7, 0x7

    if-ge v1, v7, :cond_7

    new-instance v7, Ljava/lang/String;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    :pswitch_2
    iget v8, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    add-int/lit8 v9, v6, 0x20

    add-int/lit8 v9, v9, 0x7

    shr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_9

    move v4, v7

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v12, :cond_b

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    if-ge v1, v7, :cond_a

    new-instance v7, Ljava/lang/String;

    const-string v8, "."

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    goto/16 :goto_0

    :sswitch_1
    shr-int/lit8 v4, v4, 0x1

    const/16 v7, 0x13

    if-le v4, v7, :cond_c

    const/16 v4, 0x13

    :cond_c
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :sswitch_2
    shr-int/lit8 v4, v4, 0x1

    const/16 v7, 0x9

    if-le v4, v7, :cond_d

    const/16 v4, 0x9

    :cond_d
    new-array v7, v4, [B

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-direct {p0, v6, v11}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStream(II)I

    move-result v8

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_3
    invoke-direct {p0, v6, v12, v4}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeBitStreamIntoBytes(III)[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    shl-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private decodeTransportParamTeleserviceId()V
    .locals 4

    iget v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startBitIndex_decodeAddress:I

    iput-byte v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddrType:B

    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iput v1, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iput-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    return-void
.end method

.method private parseCdmaSMS(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->init()V

    const/4 v3, -0x1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    aget-byte v4, v4, v7

    iput-byte v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    array-length v4, v4

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeParameter_header()B

    move-result v2

    iget v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iput v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    iput v0, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->dataEnd:I

    iget v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v4, "Jerry1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mParcel.size >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamTeleserviceId()V

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_2
    if-gez v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-byte v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    const-string v4, "FakeSmsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set empty tele id. type>0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mMsgType:B

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamServiceCategory()V

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_3
    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamAddress()V

    const/4 v3, 0x2

    goto :goto_0

    :pswitch_4
    if-nez v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    :cond_3
    if-ne v3, v8, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v3, 0x2

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;->decodeTransportParamSubAddress()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->TransportParam_subAddr:[B

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_5
    const/4 v3, 0x3

    goto/16 :goto_0

    :pswitch_5
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    :cond_6
    if-ne v3, v8, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v3, 0x2

    :cond_7
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByte(B)V

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-short v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    iget-short v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->param_len:S

    if-ge v1, v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mParcel:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->smsData:[B

    iget v6, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->startIndex:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    const/16 v3, 0x8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static registerReceiver(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/test/FakeSmsReceiver;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/test/FakeSmsReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    iput-object p1, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    goto :goto_0
.end method

.method private translateAddrNumberType(ZB)I
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "FakeSmsReceiver"

    const-string v1, "dispose()> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sget-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    iget-object v0, v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mThis:Lcom/android/internal/telephony/test/FakeSmsReceiver;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v2, "Jerry1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received FakeSms Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "pdu"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->CDMA_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/test/FakeSmsReceiver;->GSM_FAKE_SMS_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/test/FakeSmsReceiver;->mHandler:Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/test/FakeSmsReceiver$FakeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
