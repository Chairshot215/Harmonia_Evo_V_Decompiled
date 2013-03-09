.class public abstract Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.super Landroid/app/Activity;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$UpdateEndpointTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetMasterEndpointTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetEndpointTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetRefreshTokenTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostEndpointTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PutEndpointTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;,
        Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
    }
.end annotation


# static fields
.field static final SCREEN_STEP_0:I = 0x0

.field static final SCREEN_STEP_1_1:I = 0xb

.field static final SCREEN_STEP_2:I = 0x14

.field static final SCREEN_STEP_2_1:I = 0x15

.field static final SCREEN_STEP_3:I = 0x1e

.field static final SCREEN_STEP_4:I = 0x28

.field private static final TAG:Ljava/lang/String; = "HuxSetAccountBase"


# instance fields
.field protected backScreenOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected backScreenOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field protected confirmRestoreExchangeService:Landroid/content/DialogInterface$OnClickListener;

.field public gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

.field mAccount:Lcom/htc/android/mail/Account;

.field mAccountId:J

.field mAfterGetPinAction:Ljava/lang/String;

.field mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

.field mAfterPostTokenAction:Ljava/lang/String;

.field mBackupManager:Landroid/app/backup/BackupManager;

.field mCallingActivity:I

.field mContext:Landroid/content/Context;

.field mDefaultAccountEmailAddr:Ljava/lang/String;

.field mDefaultAccountId:J

.field mDeviceinfo:Lcom/htc/android/mail/Account$DeviceInfo;

.field mEmailAddr:Ljava/lang/String;

.field mEndPointId:I

.field mErrorCode:I

.field mErrorMessage:Ljava/lang/String;

.field mErrorStatus:I

.field mExchangeAccount:Lcom/htc/android/mail/Account;

.field public mExchangeSvcConnection:Landroid/content/ServiceConnection;

.field public mFailedConnection:I

.field public mIEASService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field mIntent:Landroid/content/Intent;

.field public mNextAction:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

.field mProviderDesc:Ljava/lang/String;

.field mProviderStr:Ljava/lang/String;

.field mProviderTitle:Ljava/lang/String;

.field public mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

.field mTermsId:I

.field mTermsOfServiceText:Ljava/lang/String;

.field mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

.field mUnknowHostLock:Ljava/lang/Object;

.field mUri:Landroid/net/Uri;

.field mUserEndPointId:I

.field mUserEndPointInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

.field public mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field postGetEndpointAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUnknowHostLock:Ljava/lang/Object;

    .line 101
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIntent:Landroid/content/Intent;

    .line 109
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    .line 110
    iput-wide v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccountId:J

    .line 113
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    .line 114
    iput-wide v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountId:J

    .line 115
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderDesc:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsOfServiceText:Ljava/lang/String;

    .line 121
    iput v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    .line 123
    iput v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    .line 124
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 125
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    .line 127
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeAccount:Lcom/htc/android/mail/Account;

    .line 309
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeSvcConnection:Landroid/content/ServiceConnection;

    .line 376
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$4;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$4;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    .line 387
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mNextAction:Ljava/lang/String;

    .line 388
    iput v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mFailedConnection:I

    .line 468
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetPinAction:Ljava/lang/String;

    .line 517
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterPostTokenAction:Ljava/lang/String;

    .line 745
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->postGetEndpointAction:Ljava/lang/String;

    .line 1127
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$5;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->confirmRestoreExchangeService:Landroid/content/DialogInterface$OnClickListener;

    .line 1142
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$6;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$6;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreenOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1150
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$7;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreenOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->resetFailedConnection(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isUnauthorized(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUnauthorized(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;Ljava/lang/String;)Z
    .locals 9
    .parameter "result"
    .parameter "nextAction"

    .prologue
    const v8, 0x7f0b033e

    const/4 v7, -0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 914
    iget-boolean v5, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    if-nez v5, :cond_5

    iget v5, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    const/16 v6, 0x191

    if-ne v5, v6, :cond_5

    .line 915
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HuxSetAccountBase"

    const-string v6, "isUnauthorized: true"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 918
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 920
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 921
    new-instance v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v6, v3, [Ljava/lang/String;

    aput-object p2, v6, v4

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetPinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 941
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mobile:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 923
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #mobile:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 924
    .local v2, wifi:Landroid/net/NetworkInfo;
    iput-boolean v4, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->successful:Z

    .line 926
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 927
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "HuxSetAccountBase"

    const-string v5, "wifi is on"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_2
    iput v7, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 930
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    :goto_1
    move v3, v4

    .line 936
    goto :goto_0

    .line 932
    :cond_3
    sget-boolean v3, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HuxSetAccountBase"

    const-string v5, "no mobile network"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_4
    iput v7, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    .line 934
    invoke-virtual {p0, v8}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    goto :goto_1

    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #mobile:Landroid/net/NetworkInfo;
    .end local v2           #wifi:Landroid/net/NetworkInfo;
    :cond_5
    move v3, v4

    .line 941
    goto :goto_0
.end method

.method private resetFailedConnection(I)V
    .locals 0
    .parameter "failedConnection"

    .prologue
    .line 909
    const/4 p1, 0x0

    .line 910
    return-void
.end method


# virtual methods
.method public addExchangeAccount(Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 985
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "emailAddr"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "serverAddr"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->server:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v0, "domain"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->domain:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v0, "username"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->user:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v0, "password"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->password:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v0, "displayName"

    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v0, "useSSL"

    iget-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->secureFlag:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    const-string v0, "syncContacts"

    iget-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->ABSyncFlag:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    const-string v0, "syncCalendar"

    iget-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->CalSyncFlag:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 994
    const-string v0, "syncMail"

    iget-boolean v1, p1, Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;->MailSyncFlag:Z

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 999
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUnknowHostLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.htc.android.mail.eas"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1002
    monitor-exit v8

    .line 1003
    return-void

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method backScreen()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method btnFncL()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method btnFncR()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected checkEmailAndPwd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "emailAddr"
    .parameter "emailPwd"

    .prologue
    const/16 v11, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1050
    const-string v8, "(.+)@(.+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1051
    .local v5, p:Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1052
    .local v4, m:Ljava/util/regex/Matcher;
    const/16 v8, 0x40

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1054
    .local v3, atPos:I
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HuxSetAccountBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "email="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v7, :cond_1

    if-ltz v3, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1057
    :cond_1
    invoke-virtual {p0, v11}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 1058
    const/16 v7, 0x66

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    .line 1071
    :goto_0
    return v6

    .line 1062
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v2

    .line 1063
    .local v2, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v8, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const/4 v9, 0x6

    invoke-virtual {v2, v8, p1, v9}, Lcom/htc/android/mail/AccountPool;->getAccountIdByEmailAddr(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v0

    .line 1065
    .local v0, accountId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_3

    .line 1066
    invoke-virtual {p0, v11}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 1067
    const/16 v7, 0x6c

    invoke-virtual {p0, v7}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    goto :goto_0

    :cond_3
    move v6, v7

    .line 1071
    goto :goto_0
.end method

.method protected checkIfDefaultAccountExist()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1086
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const-string v3, "_defaultaccount = 1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1087
    .local v6, accountCursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1088
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "null return false>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v8

    .line 1097
    :goto_0
    return v0

    .line 1091
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1092
    .local v7, count:I
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HuxSetAccountBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1094
    if-lez v7, :cond_3

    .line 1095
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v8

    .line 1097
    goto :goto_0
.end method

.method public checkSameAccountName()Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1110
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiAccountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1112
    .local v8, target:Ljava/lang/String;
    const-string v3, "_desc like ?"

    .line 1113
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1114
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v9

    .line 1124
    :goto_0
    return v0

    .line 1116
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1117
    .local v7, count:I
    if-lez v7, :cond_1

    .line 1118
    if-lez v7, :cond_1

    .line 1119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1120
    goto :goto_0

    .line 1123
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 1124
    goto :goto_0
.end method

.method protected checkValidPwd(Ljava/lang/String;)Z
    .locals 2
    .parameter "emailPwd"

    .prologue
    const/4 v0, 0x1

    .line 1075
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1076
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 1077
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    .line 1078
    const/4 v0, 0x0

    .line 1081
    :cond_1
    return v0
.end method

.method protected doExchangeSettinsUpdate(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x13

    const/4 v4, 0x1

    .line 349
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/Account;->getIsExchangeSaved(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 350
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 351
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 353
    .local v1, exchangeAccounts:[Lcom/htc/android/mail/Account;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_3

    .line 354
    :cond_0
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "HuxSetAccountBase"

    const-string v3, "proceed getProfile()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    new-instance v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 374
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :cond_2
    :goto_0
    return-void

    .line 358
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v1       #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "HuxSetAccountBase"

    const-string v3, "proceed postProfile()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "HuxSetAccountBase"

    const-string v3, "Fail to bind EAS AppSvc!"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v2, v5, v6}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 370
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :cond_6
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HuxSetAccountBase"

    const-string v3, "isExchangeSaved = true"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_7
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v2, v5, v6}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public doNextAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "preAction"
    .parameter "nextAction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 965
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxSetAccountBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doNextAction() preAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_0
    const-string v1, "GET/snc/user/authTwo/verifyDevice"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 969
    :cond_1
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 980
    :cond_2
    :goto_0
    return-void

    .line 971
    :cond_3
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAfterGetVerifyDeviceInfoAction:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 973
    :cond_4
    const-string v1, "POST/snc/user/authTwo/getToken"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 974
    iget v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    if-gez v1, :cond_5

    .line 975
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/android/mail/huxservice/HUXUTIL;->getEndpointId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    .line 977
    :cond_5
    iget v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    iget v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_getToken(ILjava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, body:Ljava/lang/String;
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public generalErrorHandling(Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 946
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generalErrorHandling() status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :cond_0
    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorStatus:I

    .line 950
    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorCode:I

    iput v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorCode:I

    .line 951
    iget-object v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->errorMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorMessage:Ljava/lang/String;

    .line 953
    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    .line 954
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HuxSetAccountBase"

    const-string v1, "no network available"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 962
    :goto_0
    return-void

    .line 957
    :cond_2
    iget v0, p1, Lcom/htc/android/mail/huxservice/HUXUTIL$FinalResult;->status:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 958
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getPinThroughMobileNetwork(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 306
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 161
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult> requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 163
    const/16 v0, 0x6e

    if-ne p2, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->requestWindowFeature(I)Z

    .line 139
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/htc/android/mail/Account$DeviceInfo;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Account$DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDeviceinfo:Lcom/htc/android/mail/Account$DeviceInfo;

    .line 141
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mRequestHandler:Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 143
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 145
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HuxSetAccountBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDeviceinfo:Lcom/htc/android/mail/Account$DeviceInfo;

    iget-object v2, v2, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmMEID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDeviceinfo:Lcom/htc/android/mail/Account$DeviceInfo;

    iget-object v2, v2, Lcom/htc/android/mail/Account$DeviceInfo;->MEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAndroidId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDeviceinfo:Lcom/htc/android/mail/Account$DeviceInfo;

    iget-object v2, v2, Lcom/htc/android/mail/Account$DeviceInfo;->AndroidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0b008e

    const v2, 0x7f0b005a

    const v3, 0x7f0b0291

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 177
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    :pswitch_0
    return-object v0

    .line 179
    :pswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b033e

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01e8

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 195
    :pswitch_3
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const v1, 0x7f0b028d

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 198
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreenOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 201
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0341

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreenOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreenOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :pswitch_5
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 216
    :pswitch_6
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01c2

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0167

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->gotoSettingListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :pswitch_7
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0337

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0338

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :pswitch_8
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 238
    :pswitch_9
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0332

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b029b

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0334

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->confirmRestoreExchangeService:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0339

    new-instance v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$2;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$1;

    invoke-direct {v2, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 302
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 151
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "onKeyDown> "

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->backScreen()V

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 297
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 267
    packed-switch p1, :pswitch_data_0

    .line 290
    .end local p2
    :goto_0
    :pswitch_0
    return-void

    .line 269
    .restart local p2
    :pswitch_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    .restart local p2
    :pswitch_2
    iget v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorStatus:I

    if-gez v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorMessage:Ljava/lang/String;

    .line 283
    .local v1, error:Ljava/lang/String;
    :goto_1
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    .end local v1           #error:Ljava/lang/String;
    .restart local p2
    :cond_0
    iget v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorStatus:I

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1

    .line 281
    .end local v1           #error:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #error:Ljava/lang/String;
    goto :goto_1

    .line 286
    .end local v1           #error:Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProfileInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProfileInfo;->exchangeInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;

    iget-object v0, v2, Lcom/htc/android/mail/huxservice/HUXUTIL$exchangeInfo;->exchangeEmail:Ljava/lang/String;

    .line 287
    .local v0, body:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method selectSignInAccount(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "position"

    .prologue
    .line 96
    return-void
.end method

.method protected setResultAndClose()V
    .locals 10

    .prologue
    const/16 v9, 0x5f

    const/16 v8, 0x5a

    .line 1006
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxSetAccountBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallingActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_0
    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    const/16 v5, 0x5e

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    if-eq v4, v9, :cond_1

    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    const/16 v5, 0x60

    if-eq v4, v5, :cond_1

    .line 1012
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1013
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1014
    const-class v4, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1015
    const-string v4, "refresh"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1016
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->startActivity(Landroid/content/Intent;)V

    .line 1017
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->finish()V

    .line 1047
    :goto_0
    return-void

    .line 1020
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1024
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 1025
    const-string v4, "AccountId"

    iget-wide v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountId:J

    long-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    const-string v4, "AccountName"

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    :goto_1
    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    if-ne v4, v8, :cond_3

    .line 1035
    const/16 v4, 0x67

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResult(I)V

    .line 1045
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->finish()V

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v2

    .line 1029
    .local v2, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    const/4 v6, 0x6

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/android/mail/AccountPool;->getAccountIdByEmailAddr(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v0

    .line 1030
    .local v0, accountId:J
    const-string v4, "AccountId"

    long-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v4, "AccountName"

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1036
    .end local v0           #accountId:J
    .end local v2           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_3
    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_4

    .line 1037
    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResult(I)V

    goto :goto_2

    .line 1038
    :cond_4
    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    .line 1039
    const/16 v4, 0x69

    invoke-virtual {p0, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResult(I)V

    goto :goto_2

    .line 1040
    :cond_5
    iget v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    if-ne v4, v9, :cond_6

    .line 1041
    const/16 v4, 0x6d

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 1043
    :cond_6
    const/16 v4, 0x6b

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResult(ILandroid/content/Intent;)V

    goto :goto_2
.end method

.method protected updateNewUserEndPointInfo()V
    .locals 6

    .prologue
    .line 1102
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderStr:Ljava/lang/String;

    iget v3, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1104
    .local v0, userendpointInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1105
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    return-void
.end method
