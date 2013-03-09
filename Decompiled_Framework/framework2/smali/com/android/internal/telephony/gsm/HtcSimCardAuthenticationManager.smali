.class public Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;
.super Ljava/lang/Object;
.source "HtcSimCardAuthenticationManager.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;,
        Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;
    }
.end annotation


# static fields
.field public static final INTERNAL_SERVICE_NAME:Ljava/lang/String; = "htc.sim_authentication"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcSimCardAuthenticationManager"

.field private static sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;
    .locals 1

    const-string v0, "htc.sim_authentication"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/orange/authentication/simcard/SimCardAuthenticationManager;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->sInstance:Lcom/orange/authentication/simcard/SimCardAuthenticationManager;

    return-object v0
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "RAND is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    array-length v3, p1

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid RAND!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-nez p2, :cond_2

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "AUTN is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    array-length v3, p2

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid AUTN!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    new-instance v3, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v3

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->requestAkaAuthentication([B[B)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$AkaAuthenticationResultWrapper;-><init>(Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)V

    :goto_0
    return-object v3

    :cond_5
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    const-string v3, "HtcSimCardAuthenticationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :cond_6
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->NO_SUCH_AUTHENTICATION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>()V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    const-string v3, "HtcSimCardAuthenticationManager"

    const-string v5, "Unable to get AuthenticationService!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :cond_7
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;->getAuts()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v3

    :cond_8
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->getSimCardType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "HtcSimCardAuthenticationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "HtcSimCardAuthenticationManager"

    const-string v3, "Unable to get AuthenticationService!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "RAND is null!"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    array-length v3, p1

    const/16 v5, 0x10

    if-eq v3, v5, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAND length is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    new-instance v3, Lcom/orange/authentication/simcard/SimNotReadyException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>()V

    throw v3

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager;->getAuthenticatorService()Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/gsm/IHtcSimCardAuthenticator;->requestGsmAuthentication([B)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationManager$GsmAuthenticationResultWrapper;-><init>(Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)V

    :goto_0
    return-object v3

    :cond_3
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;->ex:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    sget-object v3, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->USER_AUTHENTICATION_REJECTED:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/UserAuthenticationRejectException;-><init>()V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    const-string v3, "HtcSimCardAuthenticationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    invoke-direct {v3}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>()V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    const-string v3, "HtcSimCardAuthenticationManager"

    const-string v5, "Unable to get AuthenticationService!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0
.end method
