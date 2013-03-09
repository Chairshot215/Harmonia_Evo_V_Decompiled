.class public Lcom/htc/cs/activity/accountactivities/CS_login;
.super Landroid/app/Activity;
.source "CS_login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;,
        Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;,
        Lcom/htc/cs/activity/accountactivities/CS_login$RetrievePWRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$RequestBindingRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;,
        Lcom/htc/cs/activity/accountactivities/CS_login$PROGRESS_STATUS;,
        Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$InterruptOnConnectivityChangeThread;,
        Lcom/htc/cs/activity/accountactivities/CS_login$GetSecurityQRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$GetRegionsRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$DeleteAccountFromServer;,
        Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;,
        Lcom/htc/cs/activity/accountactivities/CS_login$ConfirmAccountRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$CheckAccountStateRunnable;,
        Lcom/htc/cs/activity/accountactivities/CS_login$AlmostDoneRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_ALMOST_DONE:I = 0x3ea

.field private static final ACTION_LOCATE_COMFIRM:I = 0x3e9

.field private static final ACTION_PERFORM_PROV:I = 0x3eb

.field static final ACTIVITY_NETWORK_SETTING:I = 0x69

.field static final ACTIVITY_SMS_TIME_OUT:I = 0x65

.field private static final ALMOST_DONE_SCREEN:I = 0xc

.field private static final AccountProviderUri:Landroid/net/Uri; = null

.field private static final CONFIRM_SCREEN:I = 0x7

.field private static final CREATE_EMAIL_PHONE_SCREEN:I = 0x4

.field private static final CREATE_NAME_SCREEN:I = 0x3

.field private static final CREATE_PASSWORD_SCREEN:I = 0x5

.field public static final CS_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.cs"

.field private static final DIALOG_CONFIRM_ACCOUNT:I = 0xe

.field private static final DIALOG_ENTER_SERVER_URL:I = 0x15

.field private static final DIALOG_ERROR_CONNECTING_SERVER:I = 0x4

.field private static final DIALOG_ERROR_DELETING_ACCOUNT:I = 0x1a

.field private static final DIALOG_ERROR_FAILED_TO_BIND:I = 0x8

.field private static final DIALOG_ERROR_FAILED_TO_CREATEACCOUNT:I = 0x10

.field private static final DIALOG_ERROR_FAILED_TO_GET_REGION:I = 0x11

.field private static final DIALOG_ERROR_FAILED_TO_GET_SECURITYQ:I = 0x14

.field private static final DIALOG_ERROR_FAILED_TO_REQUESTBINDING:I = 0xc

.field private static final DIALOG_ERROR_FAILED_TO_RETRIEVE_PASSWORD:I = 0x12

.field private static final DIALOG_ERROR_MAIL_VERIFICATION:I = 0x17

.field private static final DIALOG_ERROR_MISSING_DEVICE:I = 0x16

.field private static final DIALOG_ERROR_MISSING_DEVICE_DELETE_ACCOUNT:I = 0x1b

.field private static final DIALOG_ERROR_NO_NETWORK:I = 0x3

.field private static final DIALOG_ERROR_NO_NETWORK_OOBE:I = 0x7

.field private static final DIALOG_FORGOT_PASSWORD:I = 0xb

.field private static final DIALOG_GET_REGION:I = 0xf

.field private static final DIALOG_GET_SECURITY_QUESTION:I = 0x13

.field private static final DIALOG_RETRIEVING_PASSWORD:I = 0xa

.field private static final DIALOG_SHOW_DELETE_ACCOUNT:I = 0x19

.field private static final DIALOG_SIGN_UP_LOG_IN:I = 0x1

.field private static final DIALOG_STORAGE_FULL:I = 0x1c

.field private static final DIALOG_VIEW_TERM_SERVICE:I = 0x2

.field private static final DIALOG_WAIT_SMS_CONFIRM_TIMEOUT:I = 0xd

.field private static final FORGOT_PASSWORD_SECURITY_SCREEN:I = 0xa

.field private static final HTC_LOCATION_SCREEN:I = 0x8

.field private static final INTRODUCTION_SCREEN:I = 0x1

.field private static final MESSAGE_ACCOUNT_DELETED:I = 0x1e

.field private static final MESSAGE_HANDSET_ALMOST_DONE:I = 0x1b

.field private static final MESSAGE_HANDSET_CHECK_MISSING_DEVICE:I = 0x19

.field private static final MESSAGE_HANDSET_CONFIRM_ACCOUNT:I = 0x16

.field private static final MESSAGE_HANDSET_GET_REGION:I = 0x17

.field private static final MESSAGE_HANDSET_GET_SECURITYQ:I = 0x18

.field private static final MESSAGE_HANDSET_POST_PROVISIONING:I = 0x1c

.field private static final MESSAGE_HANDSET_REQUEST_BINDING:I = 0x14

.field private static final MESSAGE_RETRIEVE_PASSWORD:I = 0x15

.field private static final MESSAGE_SEND_DELETE_ACCOUNT:I = 0x1d

.field private static final SIGNIN_EMAIL_PASSWORD_SCREEN:I = 0x6

.field private static final SIGNIN_EMAIL_PHONE_SCREEN:I = 0x9

.field private static final SIGNIN_SIGNUP_SCREEN:I = 0x2

.field private static final THIRDPARTY_INTRO_SCREEN:I = 0xb

.field private static final account_uri:Landroid/net/Uri;

.field private static tmpPasswd:Ljava/lang/String;


# instance fields
.field private final ACT_LOGIN_FAIL:Ljava/lang/String;

.field private final ACT_LOGIN_SUCCESS:Ljava/lang/String;

.field private final ACT_SMS_CONFIRM_TIMEOUT:Ljava/lang/String;

.field private CurrentScreen:I

.field private RequestBindingID:Ljava/util/UUID;

.field private TosURL:Ljava/lang/String;

.field private bindIntent:Landroid/content/Intent;

.field private canSignIn:Z

.field private chkMarketing:Landroid/widget/CheckBox;

.field private chkShowPwd:Landroid/widget/CheckBox;

.field private contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

.field private createBtnPressed:Z

.field private csConn:Landroid/content/ServiceConnection;

.field private delAccount:Z

.field private editConfirmPassword:Landroid/widget/EditText;

.field private editCreateSecurityAnswer:Landroid/widget/EditText;

.field private editCreateSecurityQuestion:Landroid/widget/EditText;

.field private editEmailAddr:Landroid/widget/AutoCompleteTextView;

.field private editFirstName:Landroid/widget/EditText;

.field private editLastName:Landroid/widget/EditText;

.field private editPassword:Landroid/widget/EditText;

.field private editPhone:Landroid/widget/EditText;

.field private editsecurityAnswer:Landroid/widget/EditText;

.field emailFocusChange:Landroid/view/View$OnFocusChangeListener;

.field private hardwareKey:Z

.field private isToashShown:Ljava/lang/Boolean;

.field legalTimer:Ljava/util/Timer;

.field private locateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private logger:Lcom/htc/cs/util/Logger;

.field private volatile mActivityState:I

.field private mConfirmFromServer:Landroid/widget/Button;

.field private mConfirmLocate:Landroid/widget/Button;

.field private mCountryCode:Ljava/lang/String;

.field private mFromWhere:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelpPassword:Landroid/widget/Button;

.field private mIMERecever:Landroid/content/BroadcastReceiver;

.field private mIintentFilter:Landroid/content/IntentFilter;

.field private mNextButton:Landroid/widget/Button;

.field private mOldSipHeight:I

.field private mPrevButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/cscore/restapi/json/SearchResults",
            "<",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;",
            ">;"
        }
    .end annotation
.end field

.field private mSMSConfirmAccount:Landroid/app/PendingIntent;

.field private mSignButton:Landroid/widget/Button;

.field private mSipIntentFilter:Landroid/content/IntentFilter;

.field private mVerifyPassword:Landroid/widget/Button;

.field private mWaitingForSMS:Landroid/app/PendingIntent;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;

.field private oldRegionName:Ljava/lang/String;

.field private provisioningUpdated:Z

.field private regionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;",
            ">;"
        }
    .end annotation
.end field

.field private securityQuestion:Ljava/lang/String;

.field private serviceBinder:Lcom/htc/cs/service/ConnectedService;

.field private setUpWizard:Z

.field private showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private showTermDialog:Z

.field private signInOrConfirm:Z

.field private signUpComplete:Z

.field private signUpOrSignIn:Z

.field private spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

.field termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

.field termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

.field private test_:Z

.field private thirdParty:Z

.field private thirdPartyWIntro:Z

.field private tmpEditEmail:Ljava/lang/String;

.field private tmpEditPhone:Ljava/lang/String;

.field private final tosURLHost:Ljava/lang/String;

.field private tvSecurityQuestion:Landroid/widget/TextView;

.field private versionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1216
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CS_login;->AccountProviderUri:Landroid/net/Uri;

    .line 1218
    const-string v0, "content://com.htc.accounts/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CS_login;->account_uri:Landroid/net/Uri;

    .line 1221
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1123
    const-string v0, "www.htcsense.com"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tosURLHost:Ljava/lang/String;

    .line 1124
    const-string v0, "com.htc.cs.connectedservice.SMSTimeout"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->ACT_SMS_CONFIRM_TIMEOUT:Ljava/lang/String;

    .line 1125
    const-string v0, "com.htc.cs.connectedservice.loginsuccess"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->ACT_LOGIN_SUCCESS:Ljava/lang/String;

    .line 1126
    const-string v0, "com.htc.cs.connectedservice.loginfail"

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->ACT_LOGIN_FAIL:Ljava/lang/String;

    .line 1186
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    .line 1222
    iput-boolean v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showTermDialog:Z

    .line 1223
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->delAccount:Z

    .line 1225
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWaitingForSMS:Landroid/app/PendingIntent;

    .line 1226
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSMSConfirmAccount:Landroid/app/PendingIntent;

    .line 1227
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    .line 1232
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    .line 1233
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->bindIntent:Landroid/content/Intent;

    .line 1234
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 1235
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;

    .line 1237
    iput v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 1239
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 1240
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mCountryCode:Ljava/lang/String;

    .line 1241
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->securityQuestion:Ljava/lang/String;

    .line 1243
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->createBtnPressed:Z

    .line 1244
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    .line 1245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->isToashShown:Ljava/lang/Boolean;

    .line 1246
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditPhone:Ljava/lang/String;

    .line 1247
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditEmail:Ljava/lang/String;

    .line 1250
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    .line 1252
    iput v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    .line 1256
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z

    .line 1258
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    .line 1260
    iput-boolean v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->canSignIn:Z

    .line 1267
    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    .line 1277
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->oldRegionName:Ljava/lang/String;

    .line 1280
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$1;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$1;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIMERecever:Landroid/content/BroadcastReceiver;

    .line 1300
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$2;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$2;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1325
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$3;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$3;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->csConn:Landroid/content/ServiceConnection;

    .line 1342
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$4;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$4;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    .line 1499
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$5;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$5;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->emailFocusChange:Landroid/view/View$OnFocusChangeListener;

    .line 1516
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$6;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$6;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->locateListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1530
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$7;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$7;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1567
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    .line 109
    return-void
.end method

.method private InitStatus()V
    .locals 6

    .prologue
    .line 2616
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2618
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    .line 2619
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.cs.connectedservice.SMSTimeout"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2620
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.cs.connectedservice.SMSConfirmAccount"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2621
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.cs.connectedservice.SMSConfirmAccount.OK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2622
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.cs.connectedservice.SMSConfirmAccount.Cancel"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2624
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIintentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2626
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.cs.connectedservice.SMSTimeout"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2627
    .local v2, intentWaitSMS:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWaitingForSMS:Landroid/app/PendingIntent;

    .line 2631
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.cs.connectedservice.SMSConfirmAccount"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2632
    .local v1, intentSMSConfirm:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSMSConfirmAccount:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2640
    .end local v1           #intentSMSConfirm:Landroid/content/Intent;
    .end local v2           #intentWaitSMS:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    .line 2637
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private SignUpSignInUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4575
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4576
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 4578
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setAgreeTerm(Landroid/content/Context;Z)V

    .line 4579
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 4580
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 4581
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 4583
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 4584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->createBtnPressed:Z

    .line 4585
    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    .line 4586
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 4589
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4591
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 4595
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4597
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSignButton:Landroid/widget/Button;

    .line 4601
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSignButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4602
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->hideIME(Landroid/view/View;)V

    .line 4605
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cscore/restapi/json/SearchResults;)Lcom/htc/cscore/restapi/json/SearchResults;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getLocationService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getPendingLegalDocumentId()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getRegionForAccount()Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->securityQuestion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->sendLoginIntent(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/cs/activity/accountactivities/CS_login;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->isTtlExpired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getLegalDocumentId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkMarketing:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/cs/activity/accountactivities/CS_login;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    return v0
.end method

.method static synthetic access$2402(Lcom/htc/cs/activity/accountactivities/CS_login;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/cs/activity/accountactivities/CS_login;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->processProvisioning(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->locateConfirmUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/cs/activity/accountactivities/CS_login;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->almostDone()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->createNameUi(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->phoneNumberSigninUI(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->securityUi()V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpOrSignIn:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->showPassword(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->next()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->delAccount:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/cs/activity/accountactivities/CS_login;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->createEmailPhoneUi(Z)V

    return-void
.end method

.method static synthetic access$4402(Lcom/htc/cs/activity/accountactivities/CS_login;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->canSignIn:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->savePrefPhone()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/service/ConnectedService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->serviceBinder:Lcom/htc/cs/service/ConnectedService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cs/service/ConnectedService;)Lcom/htc/cs/service/ConnectedService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->serviceBinder:Lcom/htc/cs/service/ConnectedService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/cs/activity/accountactivities/CS_login;Ljava/util/UUID;)Ljava/util/UUID;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeAccountfromServer(Landroid/content/Context;)V

    return-void
.end method

.method private activityDestroyed()Z
    .locals 2

    .prologue
    .line 1570
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 1572
    :cond_0
    const/4 v0, 0x1

    .line 1574
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private almostDone()V
    .locals 5

    .prologue
    .line 1581
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1583
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 1584
    const/high16 v2, 0x7f0b

    const v3, 0x7f090090

    invoke-direct {p0, v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 1585
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, userEmail:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, msg:Ljava/lang/String;
    const v2, 0x7f0b0002

    invoke-direct {p0, v2, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(ILjava/lang/String;)V

    .line 1593
    const/16 v2, 0xc

    iput v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 1595
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 1596
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 1598
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    .line 1599
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1600
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->setBtnEnable(Landroid/widget/Button;Z)V

    .line 1601
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1602
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1603
    return-void
.end method

.method private authenticatorOnReslut()V
    .locals 6

    .prologue
    .line 1618
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1619
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    .line 1622
    .local v1, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v1, :cond_0

    .line 1623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1624
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "authAccount"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    const-string v2, "accountType"

    const-string v3, "com.htc.cs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v1, v0}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 1631
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "No callback IBinder"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private back()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1634
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1635
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 1695
    :goto_0
    return-void

    .line 1637
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 1640
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdParty:Z

    if-eqz v0, :cond_1

    .line 1641
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 1642
    :cond_1
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyWIntro:Z

    if-eqz v0, :cond_2

    .line 1643
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyUi()V

    goto :goto_0

    .line 1645
    :cond_2
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->introductionUi()V

    goto :goto_0

    .line 1649
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    goto :goto_0

    .line 1652
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->createNameUi(Z)V

    goto :goto_0

    .line 1655
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->createEmailPhoneUi(Z)V

    goto :goto_0

    .line 1658
    :pswitch_5
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v1, "legalDoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1659
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 1661
    :cond_3
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    goto :goto_0

    .line 1665
    :pswitch_6
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->hasLocationService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1666
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->locateConfirmUi()V

    goto :goto_0

    .line 1668
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 1672
    :pswitch_7
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v1, "legalDoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 1673
    invoke-direct {p0, v2, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_0

    .line 1675
    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_0

    .line 1679
    :pswitch_8
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v1, "legalDoc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1680
    invoke-direct {p0, v2, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_0

    .line 1682
    :cond_6
    invoke-direct {p0, v3, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_0

    .line 1686
    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 1689
    :pswitch_a
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createAccount()V

    .line 1690
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->authenticatorOnReslut()V

    .line 1691
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setResult(I)V

    .line 1692
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto/16 :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private checkAccountState()V
    .locals 4

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1700
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 1701
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->processProvisioning(Z)V

    .line 1702
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1704
    .local v0, endMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v3, 0x401

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1706
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1707
    return-void
.end method

.method private final checkAddress(Landroid/widget/TextView;)Z
    .locals 7
    .parameter "field"

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x1

    .line 1710
    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v5}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1711
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1713
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 1714
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1729
    :goto_0
    return v4

    .line 1717
    :cond_0
    const-string v5, "(.+)@(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1719
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1720
    .local v0, atPos:I
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1722
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 1724
    const/4 v4, 0x0

    goto :goto_0

    .line 1727
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0
.end method

.method private final checkEmailError()Z
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1734
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkAddress(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    :cond_0
    const/4 v0, 0x1

    .line 1737
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkEmpty(Landroid/widget/EditText;)Z
    .locals 1
    .parameter "field"

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1742
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1744
    const/4 v0, 0x1

    .line 1746
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkNameEmpty()Z
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1752
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    :cond_0
    const/4 v0, 0x1

    .line 1755
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkPasswordConfirmPasswordError()Z
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1760
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    :cond_0
    const/4 v0, 0x1

    .line 1763
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkPasswordConfirmPasswordLength()Z
    .locals 4

    .prologue
    .line 1767
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1768
    const v2, 0x7f0b0021

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1769
    .local v0, field1:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    .local v1, string1:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 1772
    const/4 v2, 0x1

    .line 1775
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final checkPasswordError()Z
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1781
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    const/4 v0, 0x1

    .line 1784
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkPasswordMatch()Z
    .locals 5

    .prologue
    .line 1788
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1789
    const v4, 0x7f0b0021

    invoke-virtual {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1790
    .local v0, field1:Landroid/widget/EditText;
    const v4, 0x7f0b0022

    invoke-virtual {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1792
    .local v1, field2:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1793
    .local v2, string1:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1795
    .local v3, string2:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1796
    const/4 v4, 0x1

    .line 1798
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final checkPasswordToConfirm()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1802
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1803
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return v3

    .line 1807
    :cond_1
    const v4, 0x7f0b0021

    invoke-virtual {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1808
    .local v0, field1:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1809
    .local v1, string1:Ljava/lang/String;
    sget-object v2, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    .line 1811
    .local v2, userPass:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1814
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final checkPhoneError()Z
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1819
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1820
    const/4 v0, 0x1

    .line 1822
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkSecurityQuestionAnswer()Z
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1827
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityQuestion:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityAnswer:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    :cond_0
    const/4 v0, 0x1

    .line 1831
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final checkUsernameEmailError()Z
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1836
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkAddress(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    :cond_0
    const/4 v0, 0x1

    .line 1839
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkVersion()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1843
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v6}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1844
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getVersion(Landroid/content/Context;)Lcom/htc/cscore/util/CSVersion;

    move-result-object v3

    .line 1845
    .local v3, version:Lcom/htc/cscore/util/CSVersion;
    iget-object v0, v3, Lcom/htc/cscore/util/CSVersion;->HandsetLibraryVersion:Ljava/lang/String;

    .line 1846
    .local v0, handsetLibVersion:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1847
    .local v1, major:I
    const-string v6, "DevBuild"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1848
    const/4 v1, 0x1

    .line 1854
    :goto_0
    const-string v6, "1"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1856
    .local v2, myMajor:I
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "Handset Library Major:  "

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1857
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "CS Client Major:  "

    aput-object v8, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1858
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "Handset Library Version:  "

    aput-object v8, v7, v5

    aput-object v0, v7, v4

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1860
    if-gt v2, v1, :cond_1

    :goto_1
    return v4

    .line 1850
    .end local v2           #myMajor:I
    :cond_0
    const-string v6, "2"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local v2       #myMajor:I
    :cond_1
    move v4, v5

    .line 1860
    goto :goto_1
.end method

.method private createEmailPhoneUi(Z)V
    .locals 13
    .parameter "keepUserData"

    .prologue
    const v8, 0x7f0b003b

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1907
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v6}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1908
    const/16 v6, 0xe

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 1910
    const v6, 0x7f030008

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 1911
    const/4 v6, 0x4

    iput v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 1917
    invoke-virtual {p0, v8}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarText;

    const v7, 0x7f090076

    invoke-virtual {v6, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 1919
    invoke-virtual {p0, v8}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 1922
    const v6, 0x7f0b0017

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 1923
    const v6, 0x7f0b0018

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    .line 1925
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1926
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    :cond_0
    if-eqz p1, :cond_7

    .line 1930
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->loadPrefEmailPhone()V

    .line 1939
    :cond_1
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditPhone:Ljava/lang/String;

    .line 1940
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditEmail:Ljava/lang/String;

    .line 1942
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    const/16 v7, 0x21

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 1945
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, v10}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 1947
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getAccountList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1948
    .local v2, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1949
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x7f030011

    invoke-direct {v1, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1952
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1955
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_2
    iget-boolean v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    if-eqz v6, :cond_9

    .line 1956
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v6, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 1963
    :goto_1
    const v6, 0x7f0b0003

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 1964
    const v6, 0x7f0b0004

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 1965
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1966
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v7, 0x7f090050

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1968
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    const v7, 0x7f090051

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1970
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 1971
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->requestFocusFromTouch()Z

    .line 1973
    const v6, 0x7f0b0019

    invoke-virtual {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkMarketing:Landroid/widget/CheckBox;

    .line 1975
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v6}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1977
    .local v4, regionName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getAgreeTerm(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->oldRegionName:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->oldRegionName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1979
    :cond_3
    iput-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->oldRegionName:Ljava/lang/String;

    .line 1980
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 1981
    .local v5, set:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1987
    .local v3, i:Ljava/util/Iterator;
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    .line 1988
    .local v0, accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    iget-object v6, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v6, v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 1990
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "accountRegion.CountryCode = "

    aput-object v8, v7, v9

    iget-object v8, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1992
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "accountRegion.CountryCode = "

    aput-object v8, v7, v9

    iget-object v8, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v8, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 1995
    const-string v6, "%s/Services/LegalDocs.svc/LegalDocs/Current/%s/%s/content.html"

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v8, v8, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;

    .line 2000
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "TosURL = "

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2002
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2003
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showTermDialog:Z

    if-eqz v6, :cond_5

    .line 2004
    :cond_4
    iput-boolean v9, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showTermDialog:Z

    .line 2005
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createTermDialog()V

    .line 2007
    :cond_5
    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 2014
    .end local v0           #accountRegion:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .end local v3           #i:Ljava/util/Iterator;
    .end local v5           #set:Ljava/util/Set;
    :cond_6
    :goto_2
    return-void

    .line 1932
    .end local v2           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #regionName:Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditPhone:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 1933
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1935
    :cond_8
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditEmail:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1936
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    iget-object v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1958
    .restart local v2       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 1959
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-static {v9, v9, v10}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/16 :goto_1

    .line 2010
    .restart local v4       #regionName:Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->launchIME(Landroid/view/View;)V

    .line 2011
    iget v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    goto :goto_2
.end method

.method private createNameUi(Z)V
    .locals 14
    .parameter "keepUserData"

    .prologue
    .line 2022
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v11}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2023
    const v11, 0x7f030009

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 2024
    const/4 v11, 0x3

    iput v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 2030
    const v11, 0x7f0b003b

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HeaderBarText;

    const v12, 0x7f090076

    invoke-virtual {v11, v12}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 2032
    const v11, 0x7f0b003b

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HeaderBarText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 2035
    const v11, 0x7f0b001c

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    .line 2036
    const v11, 0x7f0b001d

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    .line 2038
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 2039
    .local v10, tm:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x0

    .line 2040
    .local v7, iso:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2041
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 2042
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCDMANumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 2066
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v11, 0x7f03000f

    invoke-direct {v0, p0, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2069
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v11, 0x7f030010

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2071
    const v11, 0x7f0b001e

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcSpinner;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    .line 2073
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2088
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    .line 2090
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    if-eqz v11, :cond_3

    .line 2091
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    iget-object v11, v11, Lcom/htc/cscore/restapi/json/SearchResults;->Results:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    .line 2092
    .local v9, region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->regionsMap:Ljava/util/HashMap;

    iget-object v12, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Name:Ljava/lang/String;

    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    iget-object v11, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->Name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2116
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :catch_0
    move-exception v2

    .line 2118
    .local v2, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v11, v2}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 2151
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2045
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2097
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 2098
    const/4 v6, 0x0

    .line 2099
    .local v6, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    iget v11, v11, Lcom/htc/cscore/restapi/json/SearchResults;->Count:I

    if-ge v3, v11, :cond_2

    .line 2101
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2102
    .local v8, isoLowerCase:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-virtual {v11, v3}, Lcom/htc/cscore/restapi/json/SearchResults;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    iget-object v11, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2104
    .local v1, countryCodeLowerCase:Ljava/lang/String;
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2105
    move v6, v3

    .line 2106
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-virtual {v11, v3}, Lcom/htc/cscore/restapi/json/SearchResults;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    iget-object v11, v11, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DialingCode:Ljava/lang/String;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mCountryCode:Ljava/lang/String;

    .line 2110
    .end local v1           #countryCodeLowerCase:Ljava/lang/String;
    .end local v8           #isoLowerCase:Ljava/lang/String;
    :cond_2
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11, v6}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2122
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #index:I
    :cond_3
    if-eqz p1, :cond_4

    .line 2123
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->loadPrefLastNameFirstName()V

    .line 2126
    :cond_4
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    const/16 v12, 0x4060

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2129
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2130
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocus()Z

    .line 2131
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 2133
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    const/16 v12, 0x4060

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 2136
    const v11, 0x7f0b0003

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 2137
    const v11, 0x7f0b0004

    invoke-virtual {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 2138
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2139
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v12, 0x7f090050

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    .line 2141
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    const v12, 0x7f090051

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(I)V

    .line 2143
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 2145
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v5, v11, v12, v13}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 2148
    iget v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v11}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    .line 2149
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showTermDialog:Z

    goto/16 :goto_2

    .line 2099
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v1       #countryCodeLowerCase:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #index:I
    .restart local v8       #isoLowerCase:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method private createPasswordUi()V
    .locals 4

    .prologue
    const v3, 0x7f0b003b

    const/4 v2, 0x1

    .line 2157
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2158
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 2159
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 2165
    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 2167
    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 2170
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    .line 2171
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    .line 2172
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityQuestion:Landroid/widget/EditText;

    .line 2173
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityAnswer:Landroid/widget/EditText;

    .line 2175
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpOrSignIn:Z

    .line 2177
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2179
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 2180
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 2181
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2182
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2183
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2184
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2186
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkShowPwd:Landroid/widget/CheckBox;

    .line 2187
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkShowPwd:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2189
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2190
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 2192
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->launchIME(Landroid/view/View;)V

    .line 2193
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    .line 2194
    return-void
.end method

.method private createTermDialog()V
    .locals 9

    .prologue
    const v8, 0x7f090055

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 2197
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2199
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    .line 2201
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    .line 2202
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 2203
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2204
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2205
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    const-string v1, "www.htcsense.com"

    const-string v3, "Authentication Required"

    const-string v4, "sense01"

    const-string v5, "6wlM8i3ORT9s9Eqiufcc"

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$8;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$8;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2272
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2273
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    if-ne v0, v7, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$9;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$9;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v8, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2302
    :goto_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setPositiveButtonDisabled(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2304
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    if-ne v0, v7, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f090061

    new-instance v3, Lcom/htc/cs/activity/accountactivities/CS_login$11;

    invoke-direct {v3, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$11;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2332
    :goto_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$13;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$13;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2348
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2349
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2350
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2351
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2352
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 2353
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->create()Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    .line 2354
    return-void

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$10;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$10;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v8, v1}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0

    .line 2320
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termServiceDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;

    const v1, 0x7f090056

    new-instance v3, Lcom/htc/cs/activity/accountactivities/CS_login$12;

    invoke-direct {v3, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$12;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual {v0, v1, v3}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1
.end method

.method private finalizeWorker()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2357
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 2359
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2363
    :goto_0
    iput-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    .line 2364
    iput-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    .line 2365
    return-void

    .line 2360
    :catch_0
    move-exception v0

    .line 2361
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDeviceID()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2412
    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v5}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2413
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2414
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2415
    .local v3, strUUID:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 2417
    .local v2, strIMEI:Ljava/lang/String;
    const-string v5, "ro.serialno"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2419
    .local v0, deviceSN:Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 2421
    :try_start_0
    const-string v5, ""

    invoke-static {v0, v2, v5}, Lcom/htc/cscore/util/UUIDConverter;->createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2426
    if-nez v3, :cond_0

    .line 2427
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2433
    :cond_0
    :goto_0
    return-object v3

    .line 2423
    :catch_0
    move-exception v1

    .line 2424
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v5, v1}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2426
    if-nez v3, :cond_0

    .line 2427
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2426
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-nez v3, :cond_1

    .line 2427
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    throw v5

    .line 2431
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getLegalDocumentId(Ljava/lang/String;)V
    .locals 9
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2437
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2438
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "region =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2439
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Locale.getDefault() =  "

    aput-object v2, v1, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2443
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getCurrentLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    return-void

    .line 2449
    :catch_0
    move-exception v8

    .line 2450
    .local v8, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 2451
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "getLegalDocumentId"

    invoke-direct {v0, v1, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getLocationService()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2456
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2457
    const-string v8, ""

    .line 2458
    .local v8, country:Ljava/lang/String;
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    .line 2459
    const-string v8, "kr"

    .line 2466
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->hasLocationService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2470
    .local v10, temp:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLocaton =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2471
    const-string v0, "0"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2472
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLocationService(Landroid/content/Context;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2481
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 2461
    :cond_0
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLocationService(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 2474
    .restart local v10       #temp:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLocationService(Landroid/content/Context;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2476
    .end local v10           #temp:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2477
    .local v9, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 2478
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLocationService(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private getPendingLegalDocumentId()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2484
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2485
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Locale.getDefault() =  "

    aput-object v2, v1, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2488
    :try_start_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getRegionForAccount()Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;

    move-result-object v9

    .line 2489
    .local v9, region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    if-eqz v0, :cond_0

    .line 2490
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 2492
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->CmsUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCMSURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 2494
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ImcUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setIMCURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 2496
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v1, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->UpUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setStatusURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCSRegion(Landroid/content/Context;Ljava/lang/String;)V

    .line 2500
    iget-object v0, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v0, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ServiceUri:Ljava/lang/String;

    sput-object v0, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    .line 2501
    iget-object v0, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v0, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->CmsUri:Ljava/lang/String;

    sput-object v0, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    .line 2502
    iget-object v0, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v0, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->ImcUri:Ljava/lang/String;

    sput-object v0, Lcom/htc/cs/util/Keys;->IMC_URI:Ljava/lang/String;

    .line 2503
    iget-object v0, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->DataCenter:Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;

    iget-object v0, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDataCenter;->UpUri:Ljava/lang/String;

    sput-object v0, Lcom/htc/cs/util/Keys;->STATUS_URI:Ljava/lang/String;

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "region.CountryCode =  "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2507
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, v9, Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;->CountryCode:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getPendingLegalDocsID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    .line 2512
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "versionList =  "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2517
    return-void

    .line 2513
    .end local v9           #region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :catch_0
    move-exception v8

    .line 2514
    .local v8, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 2515
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "getPendingLegalDocumentId"

    invoke-direct {v0, v1, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getRegionForAccount()Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    .locals 10

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2554
    const/4 v9, 0x0

    .line 2556
    .local v9, region:Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegionForAccount(Ljava/lang/String;)Lcom/htc/cscore/restapi/proxy/WebClasses$WRegion;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2564
    :goto_0
    return-object v9

    .line 2561
    :catch_0
    move-exception v8

    .line 2562
    .local v8, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getRegionsFromServer()V
    .locals 9

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2574
    :try_start_0
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetRegions()Lcom/htc/cscore/restapi/json/SearchResults;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    :goto_0
    return-void

    .line 2579
    :catch_0
    move-exception v8

    .line 2580
    .local v8, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSecurityQuestion()V
    .locals 5

    .prologue
    .line 2585
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2586
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmailError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2587
    const v3, 0x7f09003f

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 2590
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2604
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 2595
    :cond_0
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 2596
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getSecurityQuestion(Landroid/content/Context;)Ljava/lang/String;

    .line 2598
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 2600
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2601
    .local v0, endMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x3ff

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2603
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private hideIME(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2607
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2608
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2610
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2611
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2613
    :cond_0
    return-void
.end method

.method private introductionUi()V
    .locals 3

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2648
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 2649
    const/high16 v0, 0x7f0b

    const v1, 0x7f09006c

    invoke-direct {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 2650
    const v0, 0x7f0b0027

    const v1, 0x7f09006d

    invoke-direct {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 2652
    const v0, 0x7f0b0029

    const v1, 0x7f0b002a

    const v2, 0x7f09006f

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setRow(III)V

    .line 2653
    const v0, 0x7f0b002b

    const v1, 0x7f0b002c

    const v2, 0x7f090070

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setRow(III)V

    .line 2655
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2656
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2658
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 2660
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 2661
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2663
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 2664
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2665
    return-void
.end method

.method private isSignUpComplete()Z
    .locals 3

    .prologue
    .line 2685
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2686
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 2688
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 2689
    const/4 v1, 0x0

    .line 2691
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTtlExpired()Z
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2703
    const/4 v0, 0x1

    return v0
.end method

.method private launchIME(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 2725
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2726
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2728
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2729
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2731
    :cond_0
    return-void
.end method

.method private loadPrefEmailPassword()V
    .locals 3

    .prologue
    .line 2734
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2735
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2736
    .local v0, email:Ljava/lang/String;
    sget-object v1, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    .line 2737
    .local v1, userPass:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2738
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2741
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2742
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2744
    :cond_1
    return-void
.end method

.method private loadPrefEmailPhone()V
    .locals 4

    .prologue
    .line 2747
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2748
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2749
    .local v0, areaCode:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2750
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2752
    .local v1, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2755
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2756
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2758
    :cond_0
    return-void
.end method

.method private loadPrefLastNameFirstName()V
    .locals 3

    .prologue
    .line 2761
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2762
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2763
    .local v0, userFirstName:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2765
    .local v1, userLastName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2767
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2770
    :cond_0
    return-void
.end method

.method private locateConfirmUi()V
    .locals 3

    .prologue
    .line 2773
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2774
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2776
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2777
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2780
    :cond_0
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 2782
    const/high16 v1, 0x7f0b

    const v2, 0x7f09006c

    invoke-direct {p0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 2783
    const v1, 0x7f0b000b

    const v2, 0x7f09007c

    invoke-direct {p0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 2785
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2786
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 2788
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 2789
    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    .line 2790
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2791
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setBtnEnable(Landroid/widget/Button;Z)V

    .line 2792
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2793
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 2795
    return-void
.end method

.method private needShowLegalDoc(Ljava/util/List;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, versionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2798
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v8}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2800
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2801
    .local v4, signInVersion:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLegalDocVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2804
    .local v5, signUpVersion:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v11, v13, [Ljava/lang/Object;

    const-string v12, "signUpVersion: "

    aput-object v12, v11, v10

    aput-object v5, v11, v9

    invoke-virtual {v8, v11}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2805
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v11, v13, [Ljava/lang/Object;

    const-string v12, "checkedTheSameLegalDoc signInVersion: "

    aput-object v12, v11, v10

    aput-object v4, v11, v9

    invoke-virtual {v8, v11}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2807
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 2847
    :goto_0
    return v8

    .line 2811
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2813
    .local v6, ver:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 2816
    .local v7, versionSize:I
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    array-length v11, v6

    if-eq v8, v11, :cond_1

    move v8, v9

    .line 2817
    goto :goto_0

    .line 2819
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_3

    .line 2823
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v11, v6, v1

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-le v8, v11, :cond_2

    move v8, v9

    .line 2824
    goto :goto_0

    .line 2819
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2830
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLegalDocAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2832
    .local v3, oldEmail:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    .line 2833
    goto :goto_0

    .line 2835
    :cond_4
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2840
    .local v2, newEmail:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    .line 2841
    goto :goto_0

    :cond_5
    move v8, v10

    .line 2844
    goto :goto_0

    .line 2845
    .end local v1           #i:I
    .end local v2           #newEmail:Ljava/lang/String;
    .end local v3           #oldEmail:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2846
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v8, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    move v8, v9

    .line 2847
    goto :goto_0
.end method

.method private next()V
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2853
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 2881
    :goto_0
    :pswitch_0
    return-void

    .line 2859
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->processSetupName()V

    goto :goto_0

    .line 2862
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->createBtnPressed:Z

    .line 2863
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->processEmailPhone()V

    goto :goto_0

    .line 2866
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->preCreateAccount()V

    goto :goto_0

    .line 2869
    :pswitch_4
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->processSignIn(I)V

    goto :goto_0

    .line 2874
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->preSignInAccount()V

    goto :goto_0

    .line 2853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private phoneNumberSigninUI(Z)V
    .locals 8
    .parameter "keepUserData"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3930
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3931
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 3934
    const/16 v2, 0x9

    iput v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 3935
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3936
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCDMANumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 3940
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3941
    .local v1, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 3942
    .local v0, iso:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3943
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 3947
    :goto_0
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "SIM Card Country Code = "

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3987
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3988
    const-string v2, "%s/Services/LegalDocs.svc/LegalDocs/Pending/%s/%s/content.html"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/htc/cs/util/CSDatabaseUtil;->getServiceURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCSRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;

    .line 3996
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3997
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->needShowLegalDoc(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3998
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    if-nez v2, :cond_1

    .line 3999
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "phoneNumberSigninUI termDB == null"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4000
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createTermDialog()V

    .line 4002
    :cond_1
    iget-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->delAccount:Z

    if-nez v2, :cond_2

    .line 4003
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "phoneNumberSigninUI showDialog"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4004
    invoke-virtual {p0, v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 4006
    :cond_2
    iget-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->delAccount:Z

    if-eqz v2, :cond_3

    .line 4007
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "delAccount"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4008
    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 4025
    :cond_3
    :goto_1
    return-void

    .line 3945
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4011
    :cond_5
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "phoneNumberSigninUI don\'t need legal doc"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4012
    invoke-static {p0, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setAgreeTerm(Landroid/content/Context;Z)V

    .line 4013
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->next()V

    goto :goto_1

    .line 4017
    :cond_6
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "phoneNumberSigninUI versionList in null or empty"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 4018
    iget-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->canSignIn:Z

    if-eqz v2, :cond_3

    .line 4019
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->next()V

    goto :goto_1
.end method

.method private processProvisioning(Z)V
    .locals 6
    .parameter "withAuthKey"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4136
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4137
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->isTtlExpired()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq p1, v4, :cond_0

    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    if-ne v1, v4, :cond_1

    .line 4138
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "start provisioing"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4139
    iput-boolean v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z

    .line 4140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.csengine.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4141
    .local v0, csIntent:Landroid/content/Intent;
    const-string v1, "test"

    iget-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4142
    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->sendBroadcast(Landroid/content/Intent;)V

    .line 4143
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    invoke-direct {v1, p0}, Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    .line 4144
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/cs/util/CSDatabaseUtil;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4148
    .end local v0           #csIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private removeAccountfromServer(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4189
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4190
    new-instance v0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getCMSURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;Landroid/content/Context;)V

    .line 4200
    .local v0, restProxy:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/cs/util/CloudProxyUtil;->requestBinding(Landroid/content/Context;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;

    .line 4203
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->RequestBindingID:Ljava/util/UUID;

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/cs/util/CloudProxyUtil;->bindService(Landroid/content/Context;Ljava/util/UUID;Ljava/util/List;Ljava/lang/String;)V

    .line 4206
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v6

    .line 4217
    .local v6, deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    invoke-virtual {v0, v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->setDeviceToken(Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 4218
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->deleteCSAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4223
    return-void

    .line 4219
    .end local v6           #deviceToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :catch_0
    move-exception v7

    .line 4220
    .local v7, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1, v7}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 4221
    throw v7
.end method

.method private resetDraw(I)V
    .locals 2
    .parameter "sipHeight"

    .prologue
    .line 4237
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4238
    if-nez p1, :cond_0

    .line 4239
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4240
    .local v0, templl:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 4241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 4244
    .end local v0           #templl:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private savePrefEmailPhone()V
    .locals 1

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4302
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4304
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 4306
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 4308
    :cond_0
    return-void
.end method

.method private savePrefLastNameFirstName()V
    .locals 2

    .prologue
    .line 4311
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4312
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4314
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4317
    :cond_0
    return-void
.end method

.method private savePrefPhone()V
    .locals 2

    .prologue
    .line 4320
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4321
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 4323
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCountryCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 4324
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4325
    .local v0, newSIMNum:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSIMSerialNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 4337
    .end local v0           #newSIMNum:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4327
    :cond_1
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4328
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setPhone(Landroid/content/Context;Ljava/lang/String;)V

    .line 4330
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCountryCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 4332
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4333
    .restart local v0       #newSIMNum:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSIMSerialNumber(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private save_pref()V
    .locals 11

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4248
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    .line 4250
    .local v4, strUUID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-virtual {v0}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->ordinal()I

    move-result v8

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/htc/cs/util/CSUserPreferenceUtil;->save_pref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4261
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    .line 4262
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 4263
    .local v9, newSIMNum:Ljava/lang/String;
    invoke-static {p0, v9}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSIMSerialNumber(Landroid/content/Context;Ljava/lang/String;)V

    .line 4264
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityQuestion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSecurityQuestionAnswer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHashedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 4269
    invoke-static {p0, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setPhoneUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 4271
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHashedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v4, v1}, Lcom/htc/cs/util/CSDatabaseUtil;->WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    new-instance v10, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V

    .line 4277
    .local v10, updateEmail:Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;
    invoke-virtual {v10}, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->start()V

    .line 4278
    return-void
.end method

.method private save_pref_email_password()V
    .locals 4

    .prologue
    .line 4281
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4282
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 4283
    .local v0, strUUID:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 4284
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpPasswd:Ljava/lang/String;

    .line 4285
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setHashedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 4287
    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setPhoneUUID(Landroid/content/Context;Ljava/lang/String;)V

    .line 4288
    sget-object v2, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Push:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-virtual {v2}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->ordinal()I

    move-result v2

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSyncFrequency(Landroid/content/Context;I)V

    .line 4291
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHashedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v0, v3}, Lcom/htc/cs/util/CSDatabaseUtil;->WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V

    .line 4297
    .local v1, updateEmail:Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;
    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CS_login$updateEmailThread;->start()V

    .line 4298
    return-void
.end method

.method private securityUi()V
    .locals 3

    .prologue
    const v2, 0x7f0b003b

    .line 4340
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4341
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 4342
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 4348
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 4350
    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 4353
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tvSecurityQuestion:Landroid/widget/TextView;

    .line 4355
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tvSecurityQuestion:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->securityQuestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4357
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;

    .line 4359
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 4360
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mVerifyPassword:Landroid/widget/Button;

    .line 4361
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4362
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mVerifyPassword:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4363
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4364
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mVerifyPassword:Landroid/widget/Button;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 4365
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    .line 4366
    return-void
.end method

.method private sendLoginIntent(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4369
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4370
    if-ne p1, v4, :cond_0

    .line 4371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.connectedservice.loginsuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4373
    .local v0, loginIntent:Landroid/content/Intent;
    const-string v1, "accountID"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4375
    const-string v1, "firstname"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4377
    const-string v1, "lastname"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4379
    const-string v1, "areacode"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4381
    const-string v1, "countrycode"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4383
    const-string v1, "phonenumber"

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4386
    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->sendBroadcast(Landroid/content/Intent;)V

    .line 4388
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "sendLoginIntent()"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4394
    :goto_0
    return-void

    .line 4390
    .end local v0           #loginIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.connectedservice.loginfail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4391
    .restart local v0       #loginIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->sendBroadcast(Landroid/content/Intent;)V

    .line 4392
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "sendLoginIntent()"

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setRow(III)V
    .locals 3
    .parameter "rowId"
    .parameter "textId"
    .parameter "stringRes"

    .prologue
    .line 4410
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4411
    invoke-virtual {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4412
    .local v0, row:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4414
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4415
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 4416
    return-void
.end method

.method private setTitle(II)V
    .locals 2
    .parameter "titleId"
    .parameter "stringRes"

    .prologue
    .line 4419
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4420
    invoke-virtual {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4421
    .local v0, temp:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4422
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 4423
    return-void
.end method

.method private setTitle(ILjava/lang/String;)V
    .locals 2
    .parameter "titleId"
    .parameter "string"

    .prologue
    .line 4427
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4428
    invoke-virtual {p0, p1}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4429
    .local v0, temp:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4430
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4431
    return-void
.end method

.method private setupWorker()V
    .locals 2

    .prologue
    .line 4435
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4436
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CS_LoginWorker: 0"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    .line 4437
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4438
    new-instance v0, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$WorkerHandler;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    .line 4439
    return-void
.end method

.method private showPassword(Z)V
    .locals 3
    .parameter "showPass"

    .prologue
    const/16 v2, 0x91

    const/16 v1, 0x81

    .line 4442
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4443
    if-eqz p1, :cond_0

    .line 4444
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 4446
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 4454
    :goto_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 4455
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 4457
    return-void

    .line 4449
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4451
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private signInEmailPasswordUi(ZZ)V
    .locals 9
    .parameter "fromServer"
    .parameter "keepUserData"

    .prologue
    const v8, 0x7f090077

    const v7, 0x7f090051

    const/16 v6, 0x21

    const v5, 0x7f0b003b

    const/4 v4, 0x0

    .line 4483
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4484
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 4486
    const v2, 0x7f0b0017

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 4487
    const v2, 0x7f0b0021

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    .line 4489
    iput-boolean v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpOrSignIn:Z

    .line 4491
    if-eqz p2, :cond_0

    .line 4492
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->loadPrefEmailPassword()V

    .line 4495
    :cond_0
    const v2, 0x7f0b0038

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHelpPassword:Landroid/widget/Button;

    .line 4496
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHelpPassword:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4498
    const v2, 0x7f0b0023

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkShowPwd:Landroid/widget/CheckBox;

    .line 4499
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkShowPwd:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->showPwd:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4506
    if-eqz p1, :cond_2

    .line 4507
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 4509
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 4513
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v4}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 4515
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 4516
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 4517
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4518
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4519
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 4520
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 4522
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4524
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v6}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 4527
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSentLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 4528
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSentLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 4551
    :goto_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4552
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4553
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030011

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4556
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4559
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 4560
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocusFromTouch()Z

    .line 4562
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->launchIME(Landroid/view/View;)V

    .line 4564
    iput-boolean v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signInOrConfirm:Z

    .line 4565
    const/4 v2, 0x6

    iput v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 4566
    iget v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    .line 4567
    iput-boolean v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->delAccount:Z

    .line 4568
    return-void

    .line 4531
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 4533
    invoke-virtual {p0, v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 4540
    const v2, 0x7f0b0003

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 4541
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 4542
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4543
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4544
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    const v3, 0x7f090050

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 4545
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 4547
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v6}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    goto :goto_0
.end method

.method private thirdPartyUi()V
    .locals 3

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4612
    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    .line 4613
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setContentView(I)V

    .line 4615
    const/high16 v0, 0x7f0b

    const v1, 0x7f090066

    invoke-direct {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 4616
    const v0, 0x7f0b0027

    const v1, 0x7f090067

    invoke-direct {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 4617
    const v0, 0x7f0b0028

    const v1, 0x7f09006d

    invoke-direct {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->setTitle(II)V

    .line 4620
    const v0, 0x7f0b0029

    const v1, 0x7f0b002a

    const v2, 0x7f09006f

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setRow(III)V

    .line 4621
    const v0, 0x7f0b002b

    const v1, 0x7f0b002c

    const v2, 0x7f090070

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->setRow(III)V

    .line 4623
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 4624
    invoke-static {p0, p0}, Lcom/htc/cs/util/PhoneStatusUtil;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 4626
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 4627
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4629
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 4635
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4637
    return-void
.end method


# virtual methods
.method IsNumeric(Ljava/lang/String;)Z
    .locals 6
    .parameter "sText"

    .prologue
    .line 2668
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2669
    const-string v2, "0123456789."

    .line 2670
    .local v2, ValidChars:Ljava/lang/String;
    const/4 v1, 0x1

    .line 2673
    .local v1, IsNumber:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 2674
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2675
    .local v0, Char:C
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 2676
    const/4 v1, 0x0

    .line 2673
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2680
    .end local v0           #Char:C
    :cond_1
    return v1
.end method

.method protected almostDone(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    .line 1607
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1609
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1615
    :goto_0
    return-void

    .line 1612
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x402

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1613
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1614
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected confirmAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    .line 1864
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1865
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1872
    :goto_0
    return-void

    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3fc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1870
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1871
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected createAccount()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1875
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 1876
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1878
    .local v8, email:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1879
    new-instance v7, Landroid/accounts/Account;

    const-string v0, "com.htc.cs"

    invoke-direct {v7, v8, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    .local v7, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7, v1, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1893
    const-string v1, "com.htc.cs"

    const/4 v2, -0x1

    const/16 v3, -0x64

    const v4, 0x7f050001

    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 1900
    .end local v7           #account:Landroid/accounts/Account;
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Email is null or empty."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getAccountList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2368
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    .local v7, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v2, v1

    .line 2370
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2373
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CS_login;->account_uri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_account asc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2381
    if-eqz v8, :cond_1

    .line 2382
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2385
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2386
    .local v6, account:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2387
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    .line 2397
    .end local v6           #account:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 2398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2401
    :cond_2
    :goto_0
    return-object v7

    .line 2390
    :catch_0
    move-exception v9

    .line 2391
    .local v9, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2397
    if-eqz v8, :cond_2

    .line 2398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2392
    .end local v9           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v9

    .line 2393
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2397
    if-eqz v8, :cond_2

    .line 2398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2394
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v9

    .line 2395
    .local v9, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v9}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2397
    if-eqz v8, :cond_2

    .line 2398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2397
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 2398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2405
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    .local v0, countrycode:Ljava/lang/String;
    return-object v0
.end method

.method protected getRegion(I)V
    .locals 4
    .parameter "currentScreen"

    .prologue
    .line 2520
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2527
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2531
    .local v0, endMsg:Landroid/os/Message;
    sparse-switch p1, :sswitch_data_0

    .line 2542
    :goto_1
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 2546
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v3, 0x3fe

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2548
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2533
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_0
    const v2, 0x7f0b0033

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2534
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->processProvisioning(Z)V

    goto :goto_1

    .line 2538
    :sswitch_1
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 2531
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7f0b0033 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2886
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "request code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "result code = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2888
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2892
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2894
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2917
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Button Error"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 2955
    :goto_0
    return-void

    .line 2897
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    goto :goto_0

    .line 2900
    :sswitch_1
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 2901
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getRegion(I)V

    goto :goto_0

    .line 2904
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->processSetupName()V

    goto :goto_0

    .line 2907
    :sswitch_3
    iput-boolean v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->createBtnPressed:Z

    .line 2908
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->processEmailPhone()V

    goto :goto_0

    .line 2911
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->preCreateAccount()V

    goto :goto_0

    .line 2914
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->next()V

    goto :goto_0

    .line 2921
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 2922
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2923
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createAccount()V

    .line 2924
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->authenticatorOnReslut()V

    .line 2927
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setResult(I)V

    .line 2928
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_0

    .line 2929
    :cond_2
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSignButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 2930
    invoke-direct {p0, v3, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_0

    .line 2931
    :cond_3
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHelpPassword:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 2932
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getSecurityQuestion()V

    goto :goto_0

    .line 2933
    :cond_4
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mVerifyPassword:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 2934
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->signin_forgetpassword()V

    goto :goto_0

    .line 2935
    :cond_5
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmFromServer:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 2936
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->confirmAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 2938
    :cond_6
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    const v0, 0x7f0b0003

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2940
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->back()V

    goto :goto_0

    .line 2941
    :cond_7
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    const v0, 0x7f0b0035

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2943
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdParty:Z

    if-eqz v0, :cond_9

    .line 2944
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto/16 :goto_0

    .line 2945
    :cond_9
    iget-boolean v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyWIntro:Z

    if-eqz v0, :cond_a

    .line 2946
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyUi()V

    goto/16 :goto_0

    .line 2948
    :cond_a
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->introductionUi()V

    goto/16 :goto_0

    .line 2951
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto/16 :goto_0

    .line 2895
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0004 -> :sswitch_5
        0x7f0b001b -> :sswitch_3
        0x7f0b0020 -> :sswitch_2
        0x7f0b0026 -> :sswitch_4
        0x7f0b0030 -> :sswitch_0
        0x7f0b0033 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2959
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2960
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_4

    .line 2961
    iput-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    .line 2966
    :goto_0
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    if-ne v0, v1, :cond_0

    .line 2967
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->introductionUi()V

    .line 2969
    :cond_0
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2970
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    .line 2976
    :cond_1
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2977
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditPhone:Ljava/lang/String;

    .line 2978
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tmpEditEmail:Ljava/lang/String;

    .line 2979
    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->createEmailPhoneUi(Z)V

    .line 2982
    :cond_2
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 2983
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->almostDone()V

    .line 2986
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2987
    return-void

    .line 2963
    :cond_4
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2995
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v4}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2997
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2998
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->InitStatus()V

    .line 3000
    const/16 v4, 0x21

    iput v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    .line 3001
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setupWorker()V

    .line 3002
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3003
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 3004
    const-string v4, "IntentSource"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    .line 3005
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "mFromWhere: "

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3008
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/cs/service/ConnectedService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->bindIntent:Landroid/content/Intent;

    .line 3011
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->bindIntent:Landroid/content/Intent;

    const-string v5, "com.htc.cs.ConnectedService.login"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3012
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->bindIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->csConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v8}, Lcom/htc/cs/activity/accountactivities/CS_login;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3014
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3015
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3016
    const-string v0, ""

    .line 3018
    :cond_1
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    .line 3019
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdParty:Z

    .line 3020
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyWIntro:Z

    .line 3021
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpComplete:Z

    .line 3022
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->canSignIn:Z

    .line 3024
    const-string v4, "InvalidCredential"

    invoke-static {p0, v4, v7}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3026
    sget-object v4, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3027
    invoke-static {p0, v7}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocCheckTime(Landroid/content/Context;I)V

    .line 3029
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 3030
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocDDay(Landroid/content/Context;J)V

    .line 3032
    const-string v4, "profiler.cssim"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3033
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "https://dm.htcsense.com/"

    invoke-static {v4, v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setProvServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3039
    :cond_2
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkVersion()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3040
    const-string v4, "You are using incompatible version of HTC Sense"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 3043
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3044
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 3047
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3053
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 3056
    :cond_4
    invoke-static {p0, v7}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setAgreeTerm(Landroid/content/Context;Z)V

    .line 3057
    new-instance v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v2}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 3058
    .local v2, tempToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    const-string v4, ""

    iput-object v4, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    .line 3059
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    .line 3060
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    .line 3062
    invoke-static {p0, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    .line 3064
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v8, :cond_5

    .line 3065
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    .line 3070
    :goto_0
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v5, "SetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    .line 3071
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    .line 3072
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    .line 3097
    :goto_1
    return-void

    .line 3067
    :cond_5
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->hardwareKey:Z

    goto :goto_0

    .line 3073
    :cond_6
    if-eqz v0, :cond_8

    const-string v4, "ConfirmAccount"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3074
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->hasLocationService(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3075
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->locateConfirmUi()V

    goto :goto_1

    .line 3077
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    goto :goto_1

    .line 3079
    :cond_8
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v5, "thirdParty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 3083
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->SignUpSignInUi()V

    .line 3084
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdParty:Z

    goto :goto_1

    .line 3085
    :cond_9
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v5, "thirdPartyWIntro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    .line 3088
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyUi()V

    .line 3089
    iput-boolean v8, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdPartyWIntro:Z

    goto :goto_1

    .line 3090
    :cond_a
    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mFromWhere:Ljava/lang/String;

    const-string v5, "legalDoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 3092
    invoke-direct {p0, v8, v7}, Lcom/htc/cs/activity/accountactivities/CS_login;->signInEmailPasswordUi(ZZ)V

    goto :goto_1

    .line 3094
    :cond_b
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->introductionUi()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 29
    .parameter "id"

    .prologue
    .line 3101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3103
    packed-switch p1, :pswitch_data_0

    .line 3723
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v16

    :goto_0
    return-object v16

    .line 3106
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_STORAGE_FULL"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3108
    const v22, 0x7f090024

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {}, Lcom/htc/cs/util/PhoneStatusUtil;->getRequiredStorage()J

    move-result-wide v25

    const-wide/16 v27, 0x400

    div-long v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(J)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3111
    .local v7, desc:Ljava/lang/String;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090023

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090057

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$16;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$16;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/high16 v23, 0x104

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$15;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$15;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CS_login$14;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$14;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3145
    .end local v7           #desc:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_SIGN_UP_LOG_IN"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3147
    const/16 v22, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 3149
    const/4 v8, 0x0

    .line 3150
    .local v8, dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    new-instance v8, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    .end local v8           #dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3151
    .restart local v8       #dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 3153
    .local v11, msg:Ljava/lang/CharSequence;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 3154
    invoke-virtual {v8, v11}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3155
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$17;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$17;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3163
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$18;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$18;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v16, v8

    .line 3174
    goto/16 :goto_0

    .line 3177
    .end local v8           #dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    .end local v11           #msg:Ljava/lang/CharSequence;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_CONFIRM_ACCOUNT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3179
    new-instance v16, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3180
    .local v16, progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 3181
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09000c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3183
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$19;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$19;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3191
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$20;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$20;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 3206
    .end local v16           #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_GET_REGION"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3208
    new-instance v16, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3209
    .restart local v16       #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f09000e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3212
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$21;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$21;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 3224
    .end local v16           #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_GET_SECURITY_QUESTION"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3226
    new-instance v16, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3227
    .restart local v16       #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 3228
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090012

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3230
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$22;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$22;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 3242
    .end local v16           #progressDialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_RETRIEVING_PASSWORD"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3244
    new-instance v8, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3245
    .restart local v8       #dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090010

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 3247
    .local v17, reMsg:Ljava/lang/CharSequence;
    sget-object v22, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setDialog(Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;)V

    .line 3248
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3249
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$23;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$23;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v16, v8

    .line 3257
    goto/16 :goto_0

    .line 3260
    .end local v8           #dialog:Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
    .end local v17           #reMsg:Ljava/lang/CharSequence;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_CONNECTING_SERVER"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3262
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090025

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09002c

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$24;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$24;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3278
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_MAIL_VERIFICATION"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3280
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 3281
    .local v21, userEmail:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090091

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090092

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3288
    .local v18, showMsg:Ljava/lang/String;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090093

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$25;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$25;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3304
    .end local v18           #showMsg:Ljava/lang/String;
    .end local v21           #userEmail:Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_BIND"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3306
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090025

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090033

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$26;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$26;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3321
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_NO_NETWORK_OOBE"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3323
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090025

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x20c009f

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$27;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$27;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3340
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_NO_NETWORK"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3342
    move-object/from16 v5, p0

    .line 3343
    .local v5, context:Landroid/content/Context;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090025

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x20c009f

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090057

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$30;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/cs/activity/accountactivities/CS_login$30;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/content/Context;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$29;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$29;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CS_login$28;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$28;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3379
    .end local v5           #context:Landroid/content/Context;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_FORGOT_PASSWORD"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3381
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3382
    .local v9, email:Ljava/lang/String;
    const v22, 0x7f09001b

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 3385
    .local v10, message:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09001a

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$31;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$31;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3399
    .end local v9           #email:Ljava/lang/String;
    .end local v10           #message:Ljava/lang/CharSequence;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_RETRIEVE_PASSWORD"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3401
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09000f

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090034

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$33;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$33;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$32;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$32;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3424
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_CREATEACCOUNT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3426
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090026

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09002d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$35;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$35;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$34;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$34;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3449
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_GET_REGION"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3451
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090028

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09002e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$37;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$37;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$36;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$36;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3474
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_MISSING_DEVICE"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3476
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090035

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090036

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$39;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$39;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$38;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$38;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3505
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_GET_SECURITYQ"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3507
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09002a

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090029

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$41;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$41;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$40;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$40;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3531
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_FAILED_TO_REQUESTBINDING"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3533
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09002f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$43;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$43;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$42;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$42;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3557
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_WAIT_SMS_CONFIRM_TIMEOUT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3559
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090030

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 3561
    .local v12, msg3:Ljava/lang/CharSequence;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 3562
    .local v15, phone:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090031

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3565
    .local v13, msg4:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090025

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$45;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$45;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$44;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$44;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3586
    .end local v12           #msg3:Ljava/lang/CharSequence;
    .end local v13           #msg4:Ljava/lang/CharSequence;
    .end local v15           #phone:Ljava/lang/String;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_VIEW_TERM_SERVICE"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 3591
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_SHOW_DELETE_ACCOUNT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3592
    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090022

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3594
    .local v14, msg5:Ljava/lang/CharSequence;
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090021

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    new-instance v23, Lcom/htc/cs/activity/accountactivities/CS_login$48;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$48;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005e

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$47;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$47;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005f

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$46;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$46;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3639
    .end local v14           #msg5:Ljava/lang/CharSequence;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_DELETING_ACCOUNT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3640
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f090005

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09002c

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005b

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$50;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$50;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005d

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$49;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$49;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3665
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ERROR_MISSING_DEVICE_DELETE_ACCOUNT"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3666
    new-instance v22, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x1080027

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f090035

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090037

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const v23, 0x7f09005c

    new-instance v24, Lcom/htc/cs/activity/accountactivities/CS_login$51;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login$51;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V

    invoke-virtual/range {v22 .. v24}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v16

    goto/16 :goto_0

    .line 3683
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "DIALOG_ENTER_SERVER_URL"

    aput-object v25, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/htc/cs/util/Logger;->verbose([Ljava/lang/Object;)V

    .line 3684
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3686
    .local v6, dbEnter:Landroid/app/Dialog;
    const v22, 0x7f030003

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3687
    const-string v22, "Enter Provisioning URL:            "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3689
    const v22, 0x7f0b0007

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    .line 3690
    .local v19, text:Landroid/widget/EditText;
    invoke-static/range {p0 .. p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getProvServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 3692
    .local v20, url:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_0

    .line 3693
    const-string v22, "Provisioning URL"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3698
    :goto_1
    const/16 v22, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3701
    const v22, 0x7f0b0008

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 3702
    .local v4, butt:Landroid/widget/Button;
    new-instance v22, Lcom/htc/cs/activity/accountactivities/CS_login$52;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login$52;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v16, v6

    .line 3721
    goto/16 :goto_0

    .line 3695
    .end local v4           #butt:Landroid/widget/Button;
    :cond_0
    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_14
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_5
        :pswitch_11
        :pswitch_18
        :pswitch_10
        :pswitch_8
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3728
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3729
    const-string v1, "profiler.cssim"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3731
    .local v0, chkSimEnable:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "chkSimEnable "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3732
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3733
    const-string v1, "Production Server"

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3735
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3736
    const-string v1, "Staging Server"

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3738
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3739
    const-string v1, "Test Server"

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3741
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3742
    const/4 v1, 0x3

    const-string v2, "Other server"

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3745
    :cond_3
    return v5
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3750
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3751
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3752
    const/16 v1, 0x26

    iput v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    .line 3753
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->csConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3754
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3756
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finalizeWorker()V

    .line 3758
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 3759
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editFirstName:Landroid/widget/EditText;

    .line 3760
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editLastName:Landroid/widget/EditText;

    .line 3761
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPhone:Landroid/widget/EditText;

    .line 3762
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;

    .line 3763
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->spinnerCountryCode:Lcom/htc/widget/HtcSpinner;

    .line 3764
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    .line 3765
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editConfirmPassword:Landroid/widget/EditText;

    .line 3766
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityQuestion:Landroid/widget/EditText;

    .line 3767
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editCreateSecurityAnswer:Landroid/widget/EditText;

    .line 3768
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->chkShowPwd:Landroid/widget/CheckBox;

    .line 3769
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mPrevButton:Landroid/widget/Button;

    .line 3770
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mNextButton:Landroid/widget/Button;

    .line 3771
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSignButton:Landroid/widget/Button;

    .line 3772
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHelpPassword:Landroid/widget/Button;

    .line 3773
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mVerifyPassword:Landroid/widget/Button;

    .line 3774
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mConfirmLocate:Landroid/widget/Button;

    .line 3775
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->tvSecurityQuestion:Landroid/widget/TextView;

    .line 3776
    iput-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mRegionList:Lcom/htc/cscore/restapi/json/SearchResults;

    .line 3778
    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpComplete:Z

    if-nez v1, :cond_0

    .line 3780
    invoke-direct {p0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->sendLoginIntent(Z)V

    .line 3781
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->bindIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->stopService(Landroid/content/Intent;)Z

    .line 3782
    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->thirdParty:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    if-nez v1, :cond_0

    .line 3783
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 3786
    .local v0, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-nez v0, :cond_1

    .line 3787
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No callback IBinder"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 3794
    .end local v0           #callback:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    :goto_0
    return-void

    .line 3789
    .restart local v0       #callback:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_1
    const/16 v1, 0x190

    const-string v2, "User canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3798
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3799
    packed-switch p1, :pswitch_data_0

    .line 3805
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3801
    :pswitch_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onKeyDown(): KeyEvent.back"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3802
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->back()V

    goto :goto_0

    .line 3799
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 3810
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3811
    const-string v3, "profiler.cssim"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3813
    .local v0, chkSimEnable:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chkSimEnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3814
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getProvServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3816
    .local v1, url:Ljava/lang/String;
    iput-boolean v7, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    .line 3817
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3857
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 3820
    :pswitch_0
    const-string v3, "ANALYTIC_MyHTC"

    const-string v4, "[CS_login] Use Production Server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://dm.htcsense.com/"

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setProvServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3824
    const-string v3, "https://dm.htcsense.com/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3825
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    goto :goto_0

    .line 3830
    :pswitch_1
    const-string v3, "ANALYTIC_MyHTC"

    const-string v4, "[CS_login] Use Staging Server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://dm.htctouch.com/"

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setProvServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3834
    const-string v3, "https://dm.htctouch.com/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3835
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    goto :goto_0

    .line 3840
    :pswitch_2
    const-string v3, "ANALYTIC_MyHTC"

    const-string v4, "[CS_login] Use Test Server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "http://provision-test.dev.csh.tc/"

    invoke-static {v3, v4}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setProvServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 3844
    const-string v3, "http://provision-test.dev.csh.tc/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3845
    iput-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->test_:Z

    goto :goto_0

    .line 3850
    :pswitch_3
    const-string v3, "ANALYTIC_MyHTC"

    const-string v4, "[CS_login] User define server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3852
    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    goto :goto_0

    .line 3817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3863
    const/16 v0, 0x24

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    .line 3864
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3865
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIMERecever:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3866
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIMERecever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3868
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    .line 3871
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->CurrentScreen:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3872
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createAccount()V

    .line 3873
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->authenticatorOnReslut()V

    .line 3874
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setResult(I)V

    .line 3875
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 3877
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3888
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "inState"

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3894
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->introductionUi()V

    .line 3895
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3899
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 3900
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3901
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->isSignUpComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3902
    iput-boolean v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signUpComplete:Z

    .line 3903
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->setResult(I)V

    .line 3904
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->finish()V

    .line 3906
    :cond_0
    const/16 v0, 0x23

    iput v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mActivityState:I

    .line 3908
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "HTC_IME_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSipIntentFilter:Landroid/content/IntentFilter;

    .line 3909
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mIMERecever:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mSipIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3910
    iget v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mOldSipHeight:I

    invoke-direct {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->resetDraw(I)V

    .line 3911
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setUpWizard = "

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->setUpWizard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 3913
    invoke-static {p0, v3}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->isToashShown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3914
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "No Network"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->warning([Ljava/lang/Object;)V

    .line 3915
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 3922
    :cond_1
    invoke-static {}, Lcom/htc/cs/util/PhoneStatusUtil;->isDataStorageFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3923
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Low Storage"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->warning([Ljava/lang/Object;)V

    .line 3924
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 3927
    :cond_2
    return-void
.end method

.method protected preCreateAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4028
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4029
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPasswordConfirmPasswordError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4030
    const v2, 0x7f09003b

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 4033
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4065
    .end local v1           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 4036
    :cond_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkSecurityQuestionAnswer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4037
    const v2, 0x7f090042

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 4040
    .restart local v1       #toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4043
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_1
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPasswordConfirmPasswordLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4044
    const v2, 0x7f09003c

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 4047
    .restart local v1       #toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4050
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_2
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPasswordMatch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4051
    const v2, 0x7f09003d

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 4054
    .restart local v1       #toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4057
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4059
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    .line 4060
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4062
    :cond_4
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->save_pref()V

    .line 4063
    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->requestBinding(I)V

    goto :goto_0
.end method

.method protected preSignInAccount()V
    .locals 3

    .prologue
    .line 4068
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4069
    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->signInOrConfirm:Z

    if-nez v1, :cond_1

    .line 4081
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->savePrefPhone()V

    .line 4082
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->requestBinding(I)V

    .line 4095
    :cond_0
    :goto_0
    return-void

    .line 4084
    :cond_1
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPasswordToConfirm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4085
    const v1, 0x7f09003e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4088
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected processEmailPhone()V
    .locals 3

    .prologue
    .line 4098
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4100
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkUsernameEmailError()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPhoneError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4101
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->savePrefEmailPhone()V

    .line 4102
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->createPasswordUi()V

    .line 4109
    :goto_0
    return-void

    .line 4104
    :cond_0
    const v1, 0x7f09003a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4107
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected processSetupName()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4151
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4152
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkNameEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4153
    const v1, 0x7f090039

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4155
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4164
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 4158
    :cond_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->savePrefLastNameFirstName()V

    .line 4159
    iget-boolean v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->createBtnPressed:Z

    if-eqz v1, :cond_1

    .line 4160
    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->createEmailPhoneUi(Z)V

    goto :goto_0

    .line 4162
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->createEmailPhoneUi(Z)V

    goto :goto_0
.end method

.method protected processSignIn(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 4167
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4168
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkUsernameEmailError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4169
    const v1, 0x7f09003f

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4172
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4186
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 4175
    :cond_0
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkPasswordError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4176
    const v1, 0x7f09003e

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4179
    .restart local v0       #toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4183
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_1
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->save_pref_email_password()V

    .line 4184
    invoke-direct {p0}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkAccountState()V

    goto :goto_0
.end method

.method protected requestBinding(I)V
    .locals 4
    .parameter "transacId"

    .prologue
    .line 4226
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4227
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 4229
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x3fd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4231
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4232
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4234
    return-void
.end method

.method setBtnEnable(Landroid/widget/Button;Z)V
    .locals 3
    .parameter "btn"
    .parameter "set"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4397
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4398
    if-eqz p2, :cond_0

    .line 4399
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 4400
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4401
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 4407
    :goto_0
    return-void

    .line 4403
    :cond_0
    const v0, 0x33ffffff

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 4404
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4405
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method

.method protected signin_forgetpassword()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4460
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v3}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4461
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "check = "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;

    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 4462
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->editsecurityAnswer:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->checkEmpty(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4463
    const v3, 0x7f090043

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 4465
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4480
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 4469
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 4475
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4476
    .local v0, endMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    const/16 v4, 0x400

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4478
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updateEmailAddrToPublicAccount(Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .parameter "account"
    .parameter "mContext"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 4640
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 4641
    const/4 v6, 0x0

    .line 4643
    .local v6, accountExist:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 4644
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "update email address: account is empty"

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 4682
    :cond_1
    :goto_0
    return-void

    .line 4648
    :cond_2
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v2, v5

    .line 4651
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4652
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CS_login;->AccountProviderUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4658
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 4660
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    .line 4661
    const/4 v6, 0x1

    .line 4666
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4670
    :cond_4
    if-nez v6, :cond_1

    .line 4671
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 4672
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "_account"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4674
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CS_login;->AccountProviderUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 4676
    .local v9, newuri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Inserted URI: "

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object v9, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4677
    .end local v9           #newuri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 4678
    .local v8, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v0, v8}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4666
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
