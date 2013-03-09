.class Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;
.super Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;
.source "HtcSimCardAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation


# static fields
.field private static final EVENT_AKA_AUTHENTICATION:I = 0xb

.field private static final EVENT_GSM_AUTHENTICATION:I = 0xa


# instance fields
.field private akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

.field private gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->this$0:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    return-object p1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->this$0:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    #getter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->access$300(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSimCardType()I
    .locals 2

    const-string v0, "getSimCardType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->enforcePermission(Ljava/lang/String;)V

    const-string v0, "HtcSimCardAuthenticator"

    const-string v1, "getSimCardType..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccType()I

    move-result v0

    return v0
.end method

.method public requestAkaAuthentication([B[B)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    .locals 5

    const-string v2, "HtcAkaAuthenticationResult"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->enforcePermission(Ljava/lang/String;)V

    const-string v2, "HtcSimCardAuthenticator"

    const-string v3, "requestAkaAuthentication..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->this$0:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->requestAkaAuthentication([B[BLandroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "HtcSimCardAuthenticator"

    const-string v4, "interrupted while requesting AKA Authentication!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public requestGsmAuthentication([B)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    .locals 5

    const-string v2, "HtcGsmAuthenticationResult"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->enforcePermission(Ljava/lang/String;)V

    const-string v2, "HtcSimCardAuthenticator"

    const-string v3, "requestGsmAuthentication..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->this$0:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator;->requestGsmAuthentication([BLandroid/os/Message;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "HtcSimCardAuthenticator"

    const-string v4, "interrupted while requesting GSM Authentication!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
