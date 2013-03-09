.class public Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;
.super Ljava/lang/Object;
.source "HtcCdmaAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "accountInfo"
.end annotation


# instance fields
.field public EsnDevId:Ljava/lang/String;

.field public EsnRsif:Ljava/lang/String;

.field public IccIdIcc:Ljava/lang/String;

.field public Imei:Ljava/lang/String;

.field public ImeiSv:Ljava/lang/String;

.field public ImsiCdmaIcc:Ljava/lang/String;

.field public ImsiGsmIcc:Ljava/lang/String;

.field public ImsiRil:Ljava/lang/String;

.field public ImsiRsinfo:Ljava/lang/String;

.field public Imsi_11_12:Ljava/lang/String;

.field public ImsimIcc:Ljava/lang/String;

.field public ImsitIcc:Ljava/lang/String;

.field public Mcc:Ljava/lang/String;

.field public MdnIcc:Ljava/lang/String;

.field public MdnSubs:Ljava/lang/String;

.field public Meid:Ljava/lang/String;

.field public Min:Ljava/lang/String;

.field public Nid:Ljava/lang/String;

.field public PrlVerRsif:Ljava/lang/String;

.field public PrlVerSubs:Ljava/lang/String;

.field public Sid:Ljava/lang/String;

.field logPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

.field public transactionId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    return-void
.end method

.method public correctBadValues()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiGsmIcc:Ljava/lang/String;

    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaAccount;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->allZeroString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$100(Lcom/android/internal/telephony/cdma/HtcCdmaAccount;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public dump()V
    .locals 4

    const/4 v3, 0x4

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imsi_11_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Min:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRil:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(2): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiRsinfo:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnSubs:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnRsif:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(3): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Sid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(4): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Nid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(5): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerSubs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->PrlVerRsif:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Imei:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImeiSv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->EsnDevId:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(6): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->Meid:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->IccIdIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsiCdmaIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(7): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsimIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->ImsitIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(8): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaAccount$accountInfo;->MdnIcc:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaAccount;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
