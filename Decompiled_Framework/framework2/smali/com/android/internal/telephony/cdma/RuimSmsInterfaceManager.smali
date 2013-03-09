.class public Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.super Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;
.source "RuimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_GET_CARRIER_ID:I = 0xa

.field private static final EVENT_GET_SEV_IP_JAPAN_DONE:I = 0xd

.field private static final EVENT_LOAD_CDMA_DONE:I = 0xb

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_LOAD_GSM_DONE:I = 0xc

.field private static final EVENT_LOAD_SMSC_DONE:I = 0x3

.field private static final EVENT_REQUEST_HTC_DM_COMMAND:I = 0xe

.field private static final EVENT_SINGLE_LOAD_DONE:I = 0x5

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field private static final EVENT_UPDATE_SMSC_DONE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCarrierID:Ljava/lang/String;

.field private final mCarrierIDLock:Ljava/lang/Object;

.field private mDmComResult:Ljava/lang/String;

.field private final mGetSevIpJapanLock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRequestHtcDmCommandLock:Ljava/lang/Object;

.field private mReturnedIndex:I

.field private mSevIpJapan:Ljava/lang/String;

.field private mSingleSms:[B

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsc:Ljava/lang/String;

.field private final mSmscLock:Ljava/lang/Object;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mDmComResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    return-object p1
.end method

.method private updateMessageOnIccEfDefault(II[B)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0

    :cond_0
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v6

    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->copyMessageToIccEfWithType(ZI[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResult(I[B[B)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForResultByFormat(ZI[B[B)I
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v2, "Copying message to RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I

    return v2

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public copyMessageToIccEfForResultWithType(ZI[B[B)I
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v2, "Copying message to RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mReturnedIndex:I

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public copyMessageToIccEfWithType(ZI[B[B)Z
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v2, "Copying message to RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public disableCellBroadcast(I)Z
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-super {p0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->dispose()V

    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/HtcIccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "CDMA"

    const-string v2, "RuimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "CDMA"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const-string v5, "getAllMessagesFromEF"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.RECEIVE_SMS"

    const-string v6, "Reading messages from RUIM"

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v7, 0x6f3c

    const/16 v8, 0x7f25

    invoke-virtual {v5, v7, v8, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v7, 0x6f3c

    const/16 v8, 0x7f10

    invoke-virtual {v5, v7, v8, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(IILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v5

    :cond_0
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    :catch_0
    move-exception v1

    :try_start_6
    const-string v5, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v7, 0x6f3c

    invoke-virtual {v5, v7, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_8
    const-string v5, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v4, "C8F8000000"

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "interrupted while trying to get Carrier ID"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getExtIccSmsPhoneType()I
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! getExtIccSmsPhoneType() in RuimSmsInterfaceManager should not be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getMessageFromIccEf(I)[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->getMessageFromIccEfWithType(ZI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEfExt(II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->getMessageFromIccEf(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEfWithType(ZI)[B
    .locals 6

    const-string v3, "getMessageFromICccEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSingleSms:[B

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Get SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSMSCenter(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "interrupted while trying to load SMSC from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->getSMSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kddiGetServerIpJapan()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "get kddi server ip[japan]"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "C826821F"

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "interrupted while trying to get kddi server ip [japan]"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestHtcDmCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "request htc dm command[send_sms permission]"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mDmComResult:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "interrupted while trying to request htc dm command"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setExtIccSmsPhoneType(I)V
    .locals 2

    const-string v0, "CDMA"

    const-string v1, "Error! setExtIccSmsPhoneType() in RuimSmsInterfaceManager should not be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Set SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4

    return-void

    :catch_0
    move-exception v1

    const-string v3, "interrupted while trying to update SMSC into the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->setSMSC(Ljava/lang/String;)V

    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->updateMessageOnIccEfWithType(ZII[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->updateMessageOnIccEfDefault(II[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIccEfByFormat(ZII[B)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    if-nez p3, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateMessageOnIccEfWithType(ZII[B)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return v0

    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->makeSmsRecordDataWithType(ZI[B)[B

    move-result-object v3

    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v6

    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
