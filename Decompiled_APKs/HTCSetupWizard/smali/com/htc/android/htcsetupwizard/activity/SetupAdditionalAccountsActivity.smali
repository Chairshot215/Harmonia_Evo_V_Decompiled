.class public Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "SetupAdditionalAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$MyViewBinder;
    }
.end annotation


# static fields
.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

.field private static final FACEBOOK_HTC_SENSE_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field private static final FACEBOOK_TYPE:Ljava/lang/String; = "com.facebook.auth.login"

.field private static final HANDLER_LAUNCH_BACKUP_YOUR_PHONE:I = 0x67

.field private static final HANDLER_LAUNCH_BACKUP_YOUR_PHONE_SNAPSHOT:I = 0x69

.field private static final HANDLER_LAUNCH_GET_PIN_ERROR:I = 0x65

.field private static final HANDLER_LAUNCH_RESTORE_YOUR_MEDIA:I = 0x66

.field private static final HANDLER_NEXT_STEP:I = 0x64

.field private static final HANDLER_VMM_SUBSCRIBE_ERROR:I = 0x68

.field public static final PREFERENCE_TYPE_ADD_BUTTON:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON_LAUNCH_TINY:I = 0x1

.field public static final PREFERENCE_TYPE_LOGINED:I = 0x2

.field public static final PREFERENCE_TYPE_NOT_LOGINED:I = 0x3

.field private static final REQUEST_CODE_BACKUP_YOUR_PHONE:I = 0x65

.field private static final REQUEST_CODE_BACKUP_YOUR_PHONE_SNAPSHOT:I = 0x67

.field private static final REQUEST_CODE_RESTORE_YOUR_MEDIA:I = 0x64

.field private static final REQUEST_CODE_WHAT_WOULD_YOU_LIKE_TO_BACKUP:I = 0x66

.field private static final TAG:Ljava/lang/String; = "OOBE_SetupAdditionalAccountsActivity"


# instance fields
.field private MailName:[Ljava/lang/String;

.field private MailTypes:[Ljava/lang/String;

.field private SocialNetworkName:[Ljava/lang/String;

.field private SocialNetworkTypes:[Ljava/lang/String;

.field private mAddAccountIcon:Landroid/graphics/drawable/Drawable;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mBackupPlusThread:Ljava/lang/Thread;

.field private mBinder:Lcom/htc/android/pim/hux/IHuxManager;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private mHandler:Landroid/os/Handler;

.field private mLoginStatusIcon:Landroid/graphics/drawable/Drawable;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

.field private mbFinalPage:Z

.field private mbLaunchByIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbFinalPage:Z

    .line 107
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbLaunchByIcon:Z

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 120
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Exchange"

    aput-object v1, v0, v3

    const-string v1, "Yahoo"

    aput-object v1, v0, v4

    const-string v1, "Hotmail"

    aput-object v1, v0, v5

    const-string v1, "AOL"

    aput-object v1, v0, v6

    const-string v1, "Gmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Other_Mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailName:[Ljava/lang/String;

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.android.mail.eas"

    aput-object v1, v0, v3

    const-string v1, "com.htc.android.mail.huxservice.yahoo"

    aput-object v1, v0, v4

    const-string v1, "com.htc.android.mail.huxservice.msn"

    aput-object v1, v0, v5

    const-string v1, "com.htc.android.mail.huxservice.aol"

    aput-object v1, v0, v6

    const-string v1, "com.htc.android.mail.huxservice.google"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.htc.android.mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailTypes:[Ljava/lang/String;

    .line 136
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Facebook"

    aput-object v1, v0, v3

    const-string v1, "Flickr"

    aput-object v1, v0, v4

    const-string v1, "Plurk"

    aput-object v1, v0, v5

    const-string v1, "Twitter"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkName:[Ljava/lang/String;

    .line 137
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.socialnetwork.facebook"

    aput-object v1, v0, v3

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v4

    const-string v1, "com.htc.socialnetwork.plurk"

    aput-object v1, v0, v5

    const-string v1, "com.htc.htctwitter"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkTypes:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;

    .line 164
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 180
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$2;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    .line 540
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$3;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Lcom/htc/android/pim/hux/IHuxManager;)Lcom/htc/android/pim/hux/IHuxManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isSkipGetPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Lcom/htc/vmm/api/newbay/bean/ReturnData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->checkVMMSubscribe()Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Lcom/htc/vmm/api/newbay/bean/ReturnData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->handleReturnData(Lcom/htc/vmm/api/newbay/bean/ReturnData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINWarningDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBackupPlusThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchGetPINErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->showVMMSubscribeErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchRestoreYourMedia()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchBackupYourPhone()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchBackupYourPhoneSnapshot()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isVMMVerified()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSnapshotExist()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-nez v3, :cond_0

    .line 895
    :goto_0
    return v2

    .line 883
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v3}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->checkSnapshotExist()Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getReturnStatus()I

    move-result v1

    .line 884
    .local v1, returnValue:I
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 885
    const-string v3, "OOBE_SetupAdditionalAccountsActivity"

    const-string v4, "checkSnapshotExist: true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v2, 0x1

    goto :goto_0

    .line 889
    :cond_1
    const-string v3, "OOBE_SetupAdditionalAccountsActivity"

    const-string v4, "checkSnapshotExist: false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    .end local v1           #returnValue:I
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "OOBE_SetupAdditionalAccountsActivity"

    const-string v4, "checkSnapshotExist RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkVMMSubscribe()Lcom/htc/vmm/api/newbay/bean/ReturnData;
    .locals 5

    .prologue
    .line 956
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-eqz v2, :cond_1

    .line 958
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v2}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->checkVMMSubscribe()Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v1

    .line 959
    .local v1, ret:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    if-eqz v1, :cond_0

    .line 960
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVMMSubscribe() return type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getReturnType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local v1           #ret:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    :goto_0
    return-object v1

    .line 963
    .restart local v1       #ret:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    :cond_0
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "checkVMMSubscribe() return data = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    .end local v1           #ret:Lcom/htc/vmm/api/newbay/bean/ReturnData;
    :catch_0
    move-exception v0

    .line 967
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "checkVMMSubscriber RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 970
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAccountAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "accountType"

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, AccountAction:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 512
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 513
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 514
    .local v1, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "AccountAction"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_1

    .line 521
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-object v0

    .line 513
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getAccountIntentFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "accountType"

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, AccountIntentFlag:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 528
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_0

    .line 529
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v3, v4

    .line 530
    .local v1, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "AccountIntentFlag"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_1

    .line 537
    .end local v1           #account:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-object v0

    .line 529
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private getPin()Ljava/lang/String;
    .locals 9

    .prologue
    .line 902
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;

    if-nez v4, :cond_0

    .line 903
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "mBinder = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v4, "mBinder = null"

    .line 936
    :goto_0
    return-object v4

    .line 908
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;

    invoke-interface {v4}, Lcom/htc/android/pim/hux/IHuxManager;->verifyDevice()Lcom/htc/android/pim/hux/HuxProvResult;

    move-result-object v3

    .line 909
    .local v3, result:Lcom/htc/android/pim/hux/HuxProvResult;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/android/pim/hux/HuxProvResult;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/htc/android/pim/hux/HuxProvResult;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 913
    :try_start_1
    const-class v4, Lcom/htc/android/pim/hux/HuxProvResult;

    const-string v5, "isSuccessful"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/htc/android/pim/hux/HuxProvResult;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 922
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 924
    .local v1, isSuccess:Z
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    .line 932
    :goto_1
    :try_start_3
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPin isSuccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-eqz v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 914
    .end local v1           #isSuccess:Z
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "getMethod exception: SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 917
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 918
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "getMethod exception: NoSuchMethodException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 919
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 925
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .restart local v1       #isSuccess:Z
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 926
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "invoke isSuccess: IllegalArgumentException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 934
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #isSuccess:Z
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #result:Lcom/htc/android/pim/hux/HuxProvResult;
    :catch_3
    move-exception v0

    .line 935
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "getPin RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 927
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #isSuccess:Z
    .restart local v2       #method:Ljava/lang/reflect/Method;
    .restart local v3       #result:Lcom/htc/android/pim/hux/HuxProvResult;
    :catch_4
    move-exception v0

    .line 928
    .local v0, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "invoke isSuccess: IllegalAccessException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 929
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 930
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    const-string v5, "invoke isSuccess: InvocationTargetException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 933
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    iget-object v4, v3, Lcom/htc/android/pim/hux/HuxProvResult;->errorMessage:Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0
.end method

.method private getSignedInAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 326
    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v1

    .line 327
    :cond_1
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 328
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private handleReturnData(Lcom/htc/vmm/api/newbay/bean/ReturnData;)V
    .locals 6
    .parameter "returnData"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 782
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "handleReturnData"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez p1, :cond_0

    .line 784
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "returnData = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 830
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-virtual {p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getReturnType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 818
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "processBackupPlus checkVMMSubscribe error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  error code ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 826
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 791
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "processBackupPlus checkVMMSubscribe true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-direct {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setVmmVerifiedFlag(Z)V

    .line 793
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->checkSnapshotExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 797
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 802
    :pswitch_1
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "processBackupPlus checkVMMSubscribe false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-direct {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setVmmVerifiedFlag(Z)V

    .line 805
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v2}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->getCall1Data()Lcom/htc/vmm/api/newbay/bean/SPGData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    .line 806
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "launchBackupYourPhone RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 809
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 810
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 811
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "launchBackupYourPhone NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initialize()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 595
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 596
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 597
    const-string v4, "FinalPage"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbFinalPage:Z

    .line 598
    const-string v4, "LaunchByIcon"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbLaunchByIcon:Z

    .line 599
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mbLaunchByIcon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbLaunchByIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    const v4, 0x7f030023

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setContentView(I)V

    .line 602
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 604
    .local v3, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 605
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 606
    const/16 v4, 0x1a

    invoke-static {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 608
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 609
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 610
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mbFinalPage:Z

    if-eqz v4, :cond_1

    .line 612
    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 613
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 617
    :cond_1
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 618
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    :cond_2
    return-void
.end method

.method private static isSkipGetPin()Z
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method private isVMMVerified()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 863
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-nez v3, :cond_0

    move v1, v2

    .line 874
    :goto_0
    return v1

    .line 868
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v3}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->getVmmVerifiedFlag()Z

    move-result v1

    .line 869
    .local v1, result:Z
    const-string v3, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVMMVerified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 872
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "OOBE_SetupAdditionalAccountsActivity"

    const-string v4, "isVMMVerified RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 874
    goto :goto_0
.end method

.method private launchBackupYourPhone()V
    .locals 3

    .prologue
    .line 1045
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1046
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.BackupWithVerizonActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string v1, "SPGData"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mSPGData:Lcom/htc/vmm/api/newbay/bean/SPGData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1048
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1049
    return-void
.end method

.method private launchBackupYourPhoneSnapshot()V
    .locals 2

    .prologue
    .line 1053
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1054
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.BackupWithVerizonSnapshotActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1056
    return-void
.end method

.method private launchGetPINErrorDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "errMsg"

    .prologue
    .line 975
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 976
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0017

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$6;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$6;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$5;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$5;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 991
    return-void
.end method

.method private launchGetPINWarningDialog()V
    .locals 4

    .prologue
    .line 1017
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1018
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$10;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$10;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0143

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$9;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$9;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1034
    return-void
.end method

.method private launchRestoreYourMedia()V
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1039
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.RestoreYourMediaActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1041
    return-void
.end method

.method private launchWhatWouldYouLikeToBackup()V
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1061
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcsetupwizard.activity.BackupOptionVzwActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1063
    return-void
.end method

.method private onCreatePreferences()V
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthorities:[Ljava/lang/String;

    .line 579
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 580
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_0
    return-void
.end method

.method private processBackupPlus()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBackupPlusThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 839
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 840
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 841
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0a00e4

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 844
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$4;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBackupPlusThread:Ljava/lang/Thread;

    .line 859
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBackupPlusThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private replaceFacebookType()V
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkTypes:[Ljava/lang/String;

    const-string v2, "com.facebook.auth.login"

    aput-object v2, v1, v0

    .line 298
    :cond_0
    return-void

    .line 290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setFlagUncheckRestore(Z)V
    .locals 3
    .parameter "isUnchecked"

    .prologue
    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v1, p1}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->setFlagUncheckRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    const-string v2, "setFlagUncheckRestore RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setGridView()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 332
    const v1, 0x7f0d0041

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcsetupwizard/activity/MyGridView;

    .line 333
    .local v6, gridview:Lcom/htc/android/htcsetupwizard/activity/MyGridView;
    const/4 v7, 0x0

    .line 335
    .local v7, hasSignedInAccount:Z
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->onCreatePreferences()V

    .line 336
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 341
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, listImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->replaceFacebookType()V

    .line 351
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailName:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v1, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailName:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v9, 0x0

    .line 358
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 359
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    if-nez v7, :cond_2

    const-string v1, "account"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 361
    const/4 v7, 0x1

    .line 351
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 366
    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v1, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socialnetwork supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v9, 0x0

    .line 373
    .restart local v9       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 374
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    if-nez v7, :cond_4

    const-string v1, "account"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 376
    const/4 v7, 0x1

    .line 366
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 381
    :cond_5
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasSignedInAccount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v7, :cond_6

    .line 384
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 385
    .restart local v9       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "icon"

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAddAccountIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "title"

    const v3, 0x7f0a00e2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03002b

    new-array v4, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "login_icon"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "title"

    aput-object v5, v4, v1

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 396
    .local v0, saImageItems:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$MyViewBinder;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$MyViewBinder;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 397
    invoke-virtual {v6, v0}, Lcom/htc/android/htcsetupwizard/activity/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 398
    invoke-virtual {v6, p0}, Lcom/htc/android/htcsetupwizard/activity/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    return-void

    .line 391
    :array_0
    .array-data 0x4
        0x1et 0x0t 0xdt 0x7ft
        0x4at 0x0t 0xdt 0x7ft
        0x0t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method private setVmmVerifiedFlag(Z)V
    .locals 3
    .parameter "isVerified"

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v1, p1}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->setVmmVerifiedFlag(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    const-string v2, "setVmmVerifiedFlag RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showVMMSubscribeErrorDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "errMsg"

    .prologue
    .line 995
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    .local v0, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c015d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0017

    new-instance v3, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$8;

    invoke-direct {v3, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$8;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;

    invoke-direct {v2, p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity$7;-><init>(Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1013
    return-void
.end method

.method private startRestore()V
    .locals 3

    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v1}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->startRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OOBE_SetupAdditionalAccountsActivity"

    const-string v2, "startRestore RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 682
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 684
    return-void
.end method

.method protected getBackupAssistantStatus()Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 255
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 256
    .local v6, b:Landroid/os/Bundle;
    const-string v0, "username"

    const-string v1, "Backup Assistant"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.fusionone.android.sync.provider.settings/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "name=\'app.state\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 260
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :cond_0
    const-string v0, "status"

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    :goto_0
    if-eqz v8, :cond_1

    .line 275
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_1
    return-object v6

    .line 263
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    const-string v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 265
    .local v7, column:I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 267
    .local v9, val:I
    if-nez v9, :cond_3

    .line 268
    const-string v0, "status"

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 271
    :cond_3
    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 242
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 243
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 251
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 244
    :catch_0
    move-exception v2

    .line 246
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 248
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon resource not found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "accountType"

    .prologue
    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 228
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 229
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 234
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v2

    .line 230
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isAuthTypeExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 285
    :goto_1
    return v1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 306
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getSignedInAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 307
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 308
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 309
    .local v2, label:Ljava/lang/CharSequence;
    const-string v4, "account"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v4, "login_icon"

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mLoginStatusIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :goto_0
    const-string v4, "icon"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v4, "type"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-object v3

    .line 313
    .end local v2           #label:Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #label:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 707
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult RequestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    packed-switch p1, :pswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 710
    :pswitch_0
    if-ne p2, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setFlagUncheckRestore(Z)V

    .line 711
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startRestore()V

    .line 712
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchBackupYourPhoneSnapshot()V

    goto :goto_0

    .line 710
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 716
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->launchWhatWouldYouLikeToBackup()V

    goto :goto_0

    .line 721
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 722
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->finish()V

    goto :goto_0

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 1067
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1069
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 747
    :goto_0
    return-void

    .line 733
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-nez v0, :cond_0

    .line 734
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 735
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->finish()V

    goto :goto_0

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->processBackupPlus()V

    goto :goto_0

    .line 743
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 744
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->finish()V

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 587
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->initialize()V

    .line 589
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 590
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 562
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->requestWindowFeature(I)Z

    .line 564
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 565
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->addPreferencesFromResource(I)V

    .line 566
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAddAccountIcon:Landroid/graphics/drawable/Drawable;

    .line 567
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->getIconConnectedId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mLoginStatusIcon:Landroid/graphics/drawable/Drawable;

    .line 568
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->initialize()V

    .line 571
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->getVMMInterface()Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    .line 573
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMMInterface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mVMMInterface:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 654
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 770
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    .line 422
    .local v15, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 423
    .local v3, accountType:Ljava/lang/String;
    const-string v2, "account"

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accounts/Account;

    .line 425
    .local v12, account:Landroid/accounts/Account;
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick(): type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-nez v3, :cond_1

    .line 428
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v4, "Verizon project"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v14, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 431
    const-string v2, "authorities"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 506
    .end local v14           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    if-eqz v12, :cond_c

    .line 435
    const/4 v14, 0x0

    .line 437
    .restart local v14       #intent:Landroid/content/Intent;
    iget-object v2, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getAccountAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 438
    .local v10, AccountAction:Ljava/lang/String;
    iget-object v2, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->getAccountIntentFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 441
    .local v11, AccountIntentFlag:Ljava/lang/String;
    iget-object v2, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.android.mail.eas"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    if-nez v10, :cond_3

    .line 443
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "android.htc.mail.eas.EAS_MAIN_PAGE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    if-eqz v14, :cond_0

    .line 494
    const-string v2, "account"

    invoke-virtual {v14, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 445
    :cond_3
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 447
    :cond_4
    iget-object v2, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.htc.VzWBASync"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 449
    if-nez v10, :cond_5

    .line 450
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.VzWBackupAssistantClient.SETTINGS"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v14       #intent:Landroid/content/Intent;
    :goto_2
    if-eqz v11, :cond_6

    .line 456
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 457
    .local v16, nflag:I
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 452
    .end local v16           #nflag:I
    :cond_5
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 459
    :cond_6
    const/high16 v2, 0x1000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 461
    :cond_7
    const-string v2, "com.htc.vmm.Backup"

    iget-object v4, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 462
    if-nez v10, :cond_8

    .line 463
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.vmm.settings.Backup"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v14       #intent:Landroid/content/Intent;
    :goto_3
    if-eqz v11, :cond_9

    .line 469
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 470
    .restart local v16       #nflag:I
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 471
    .end local v16           #nflag:I
    :catch_0
    move-exception v13

    .line 472
    .local v13, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 473
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IntentTask (com.htc.vmm.settings.Backup) flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :cond_8
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 476
    :cond_9
    const/high16 v2, 0x1000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 480
    :cond_a
    if-nez v10, :cond_b

    .line 481
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v14       #intent:Landroid/content/Intent;
    :goto_4
    if-eqz v11, :cond_2

    if-eqz v14, :cond_2

    .line 487
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 488
    .restart local v16       #nflag:I
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 483
    .end local v16           #nflag:I
    :cond_b
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 500
    .end local v10           #AccountAction:Ljava/lang/String;
    .end local v11           #AccountIntentFlag:Ljava/lang/String;
    .end local v14           #intent:Landroid/content/Intent;
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 752
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    sparse-switch p1, :sswitch_data_0

    .line 764
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 756
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setResult(I)V

    .line 757
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 762
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 647
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 648
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 660
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 625
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->setGridView()V

    .line 628
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 665
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 632
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 633
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 638
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.huxservice.HuxManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 641
    .local v1, success:Z
    const-string v2, "OOBE_SetupAdditionalAccountsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #success:Z
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 669
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 670
    const-string v0, "OOBE_SetupAdditionalAccountsActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->isBackupPlusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mBinder:Lcom/htc/android/pim/hux/IHuxManager;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/SetupAdditionalAccountsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 678
    :cond_0
    return-void
.end method
