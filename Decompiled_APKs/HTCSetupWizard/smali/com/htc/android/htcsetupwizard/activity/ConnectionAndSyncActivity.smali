.class public Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "ConnectionAndSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final AUTO_SYNC_DATA:Ljava/lang/String; = "oobe_auto_sync_data_check"

.field private static final CONNECTION_TYPE:I = 0x1

.field private static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connection_type"

.field private static final KEY_INTERNET_CONNECTION_DESCRIPTION:Ljava/lang/String; = "internet_connection_description"

.field private static final KEY_INTERNET_CONNECTION_IMAGE:Ljava/lang/String; = "internet_connection_image"

.field private static final KEY_SCHEDULED_SYNC:Ljava/lang/String; = "scheduled_sync"

.field private static final MOBILE_DATA:Ljava/lang/String; = "oobe_mobile_data"

.field private static final SCHEDULED_SYNC:I = 0x2

.field private static final SYNC_AUTO:I = 0x7d1

.field private static final SYNC_NEVER:I = 0x7d2

.field private static final TAG:Ljava/lang/String; = "OOBE_ConnectionAndSyncActivity"

.field private static final UNKNOWN:I = 0x0

.field private static final WIFI_MOBILE_BOTH:I = 0x3e9

.field private static final WIFI_ONLY:I = 0x3ea

.field private static final WIFI_YES_4G_BOTH:I = 0x3eb


# instance fields
.field private connectivity:Landroid/net/ConnectivityManager;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mConnectionTypeDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mRadioOff:I

.field private mRadioOn:I

.field private mScheduledSyncDialog:Landroid/app/Dialog;

.field private mSyncSelect:I

.field private mWifiSelect:I

.field private mbBackFinish:Z

.field private mbLaunchByIcon:Z

.field private mbRemoveConnectionType:Z

.field private mbRemoveScheduledSync:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 85
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    .line 86
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbBackFinish:Z

    .line 96
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbLaunchByIcon:Z

    .line 97
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveConnectionType:Z

    .line 98
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveScheduledSync:Z

    return-void
.end method

.method private MobileDataEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 434
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, processDataConnResult:Z
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 438
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_0

    .line 439
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "MobileDataEnabled mPhoneService = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setMobileDataEnabled(Z)V

    .line 443
    if-eqz p1, :cond_2

    .line 444
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v1

    .line 445
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled , processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "MobileDataEnabled , Both WIFI and Mobile Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "MobileDataEnabled setMobileDataEnabled , exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception cause , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled exception , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 451
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "MobileDataEnabled , Only Mobile Data Enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    :cond_2
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "MobileDataEnabled , Mobile Data Disable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v1

    .line 457
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataEnabled processDataConnResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private Yes4GEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes4GEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wimax_on"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    :cond_0
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addList(Ljava/util/List;III)V
    .locals 3
    .parameter
    .parameter "title"
    .parameter "summary"
    .parameter "radio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;III)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-direct {p0, p2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "summary"

    invoke-virtual {p0, p3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v1, "radio"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method private createConnectionTypeDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 296
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createConnectionTypeDialog, mWifiSelect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    if-nez v1, :cond_0

    .line 298
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "illegal mWifiSelect, setDefaultValue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setDefaultValue()V

    .line 303
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 307
    .local v7, radio:I
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v3, 0x3eb

    if-ne v1, v3, :cond_2

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 309
    :goto_0
    const v1, 0x7f0a0104

    const v3, 0x7f0a0107

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addList(Ljava/util/List;III)V

    .line 314
    :cond_1
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_3

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 315
    :goto_1
    const v1, 0x7f0a0105

    const v3, 0x7f0a0108

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addList(Ljava/util/List;III)V

    .line 319
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v3, 0x3ea

    if-ne v1, v3, :cond_4

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 320
    :goto_2
    const v1, 0x7f0a0106

    const v3, 0x7f0a010a

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addList(Ljava/util/List;III)V

    .line 323
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030019

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "summary"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "radio"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 329
    .local v0, simple:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0103

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 335
    .local v6, dialog:Landroid/app/Dialog;
    return-object v6

    .line 308
    .end local v0           #simple:Landroid/widget/SimpleAdapter;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_2
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    goto :goto_0

    .line 314
    :cond_3
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    goto :goto_1

    .line 319
    :cond_4
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    goto :goto_2

    .line 323
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
        0x0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private createScheduledSyncDialog()Landroid/app/Dialog;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 340
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createScheduledSyncDialog, mSyncSelect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    if-nez v1, :cond_0

    .line 342
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "illegal mSyncSelect, setDefaultValue"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setDefaultValue()V

    .line 347
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 351
    .local v7, radio:I
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v3, 0x7d1

    if-ne v1, v3, :cond_1

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 352
    :goto_0
    const v1, 0x7f0a00fa

    const v3, 0x7f0a00fc

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addList(Ljava/util/List;III)V

    .line 356
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v3, 0x7d2

    if-ne v1, v3, :cond_2

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 357
    :goto_1
    const v1, 0x7f0a00fb

    const v3, 0x7f0a00fe

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addList(Ljava/util/List;III)V

    .line 360
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030019

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "summary"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "radio"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 366
    .local v0, simple:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00f9

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 372
    .local v6, dialog:Landroid/app/Dialog;
    return-object v6

    .line 351
    .end local v0           #simple:Landroid/widget/SimpleAdapter;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_1
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    goto :goto_0

    .line 356
    :cond_2
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    goto :goto_1

    .line 360
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
        0x0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private getBackgroundDataEnabled()Z
    .locals 4

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, bRet:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 679
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackgroundDataEnabled, Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return v0
.end method

.method private getConnectionType()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 656
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wimax_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 657
    const/16 v0, 0x3eb

    .line 661
    :goto_0
    return v0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    const/16 v0, 0x3e9

    goto :goto_0

    .line 661
    :cond_1
    const/16 v0, 0x3ea

    goto :goto_0
.end method

.method private getFinalTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "str_id"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, title:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 278
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    const-string v2, "CHS Language"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "Wi-Fi"

    const-string v2, "WLAN"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    return-object v0
.end method

.method private hasYes4G()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isAsia:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isRider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    const-string v2, "common_radiobutton_on"

    const v3, 0x2080078

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOn:I

    .line 123
    const-string v2, "common_radiobutton_off"

    const v3, 0x2080076

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mRadioOff:I

    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 128
    const-string v2, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbBackFinish:Z

    .line 129
    const-string v2, "LaunchByIcon"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbLaunchByIcon:Z

    .line 130
    const-string v2, "RemoveConnectionType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveConnectionType:Z

    .line 131
    const-string v2, "RemoveScheduledSync"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveScheduledSync:Z

    .line 133
    :cond_0
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setContentView(I)V

    .line 134
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 137
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 138
    const/16 v2, 0x23

    invoke-static {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 145
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnNext:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_1
    const v2, 0x7f0d0003

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnBack:Landroid/widget/Button;

    .line 151
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnBack:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 153
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbBackFinish:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnBack:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    :cond_2
    :goto_0
    iput-object p0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mContext:Landroid/content/Context;

    .line 158
    return-void

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isNetworkAvailable(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->connectivity:Landroid/net/ConnectivityManager;

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->connectivity:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_2

    .line 419
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->connectivity:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 423
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 425
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loginYes4G()V
    .locals 5

    .prologue
    .line 640
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "loginYes4G"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.yesloginsetting"

    const-string v4, "com.htc.yesloginsetting.YesLoginSettingActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 645
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "YesLogin exception occurs"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YesLogin exception cause by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "YesLogin exception message , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onCreatePreferences()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onCreatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->addPreferencesFromResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 166
    return-void
.end method

.method private setBackgroundDataEnabled(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 666
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 670
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundDataSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method private setConnectData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 554
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectData , mWifiSelect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 558
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->Yes4GEnabled(Z)V

    .line 559
    invoke-direct {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->MobileDataEnabled(Z)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_2

    .line 563
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->Yes4GEnabled(Z)V

    .line 564
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->MobileDataEnabled(Z)V

    goto :goto_0

    .line 566
    :cond_2
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    .line 568
    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->MobileDataEnabled(Z)V

    .line 569
    invoke-direct {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->Yes4GEnabled(Z)V

    goto :goto_0
.end method

.method private setDefaultValue()V
    .locals 11

    .prologue
    const/16 v10, 0x7d2

    const/16 v9, 0x7d1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "InternetConnectionHasRun"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    move v0, v5

    .line 689
    .local v0, InternetConnectionHasRun:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getConnectionType()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    .line 692
    const-string v6, "OOBE_ConnectionAndSyncActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setDefaultValue mWifiSelect = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SyncDataHasRun"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_5

    move v1, v5

    .line 718
    .local v1, SyncDataHasRun:Z
    :goto_2
    if-eqz v1, :cond_7

    .line 720
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getBackgroundDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 722
    iput v9, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    .line 743
    :goto_3
    return-void

    .end local v0           #InternetConnectionHasRun:Z
    .end local v1           #SyncDataHasRun:Z
    :cond_0
    move v0, v4

    .line 686
    goto :goto_0

    .line 696
    .restart local v0       #InternetConnectionHasRun:Z
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 697
    const/16 v6, 0x3eb

    iput v6, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_1

    .line 700
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oobe_mobile_data"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 701
    .local v3, mobileData:Z
    :goto_4
    const-string v6, "OOBE_ConnectionAndSyncActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setDefaultValue(), InternetConnectionHasRun = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AUTO_SYNC_DATA = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-eqz v3, :cond_4

    .line 705
    const/16 v6, 0x3e9

    iput v6, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_1

    .end local v3           #mobileData:Z
    :cond_3
    move v3, v5

    .line 700
    goto :goto_4

    .line 709
    .restart local v3       #mobileData:Z
    :cond_4
    const/16 v6, 0x3ea

    iput v6, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_1

    .end local v3           #mobileData:Z
    :cond_5
    move v1, v4

    .line 715
    goto :goto_2

    .line 726
    .restart local v1       #SyncDataHasRun:Z
    :cond_6
    iput v10, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    goto :goto_3

    .line 731
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oobe_auto_sync_data_check"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_8

    move v2, v4

    .line 732
    .local v2, autoSyncData:Z
    :goto_5
    const-string v4, "OOBE_ConnectionAndSyncActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setDefaultValue(), SyncDataHasRun = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AUTO_SYNC_DATA = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v2, :cond_9

    .line 736
    iput v9, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    goto/16 :goto_3

    .end local v2           #autoSyncData:Z
    :cond_8
    move v2, v5

    .line 731
    goto :goto_5

    .line 740
    .restart local v2       #autoSyncData:Z
    :cond_9
    iput v10, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    goto/16 :goto_3
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 635
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 637
    return-void
.end method

.method private setSyncData()V
    .locals 3

    .prologue
    .line 575
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSyncData mSyncSelect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_1

    .line 579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setBackgroundDataEnabled(Z)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setBackgroundDataEnabled(Z)V

    goto :goto_0
.end method

.method private updateConnectionTypeDisplay()V
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "connection_type"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 191
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveConnectionType:Z

    if-eqz v1, :cond_1

    .line 193
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectionTypeDisplay, mWifiSelect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 200
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_2

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0105

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    :cond_2
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_3

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0106

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0104

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateIconImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    const-string v2, "updateIconImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "internet_connection_image"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;

    .line 181
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;
    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setImage(I)V

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setDivide(ZZ)V

    .line 183
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setPersistent(Z)V

    .line 184
    invoke-virtual {v0, v3}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setSelectable(Z)V

    .line 185
    return-void
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateIconImage()V

    .line 172
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateConnectionTypeDisplay()V

    .line 173
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateScheduledSyncDisplay()V

    .line 174
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateSyncDescription()V

    .line 175
    return-void
.end method

.method private updateScheduledSyncDisplay()V
    .locals 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "scheduled_sync"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 221
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbRemoveScheduledSync:Z

    if-eqz v1, :cond_1

    .line 223
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScheduledSyncDisplay, mSyncSelect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 230
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v2, 0x7d1

    if-ne v1, v2, :cond_2

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_2
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    const/16 v2, 0x7d2

    if-ne v1, v2, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSyncDescription()V
    .locals 6

    .prologue
    const v5, 0x7f0a010c

    const/4 v4, 0x0

    .line 243
    const-string v2, "OOBE_ConnectionAndSyncActivity"

    const-string v3, "updateSyncDescription"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v3, "internet_connection_description"

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;

    .line 249
    .local v0, pref:Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;
    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isVodaFone:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isBM:Z

    if-eqz v2, :cond_2

    .line 250
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v1, title:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    .end local v1           #title:Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    invoke-virtual {v0, v4}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setSelectable(Z)V

    .line 266
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setDivide(ZZ)V

    .line 267
    return-void

    .line 256
    :cond_2
    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isTelcel:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isAMX:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isBrightStar:Z

    if-eqz v2, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 259
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .restart local v1       #title:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/android/htcsetupwizard/activity/HtcDescPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 590
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbLaunchByIcon:Z

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setConnectData()V

    .line 592
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setSyncData()V

    .line 593
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "InternetConnectionHasRun"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SyncDataHasRun"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 596
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 597
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 779
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 781
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item_idx"

    .prologue
    const/16 v5, 0x3ea

    const/16 v4, 0x3e9

    const/4 v3, 0x1

    .line 478
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mConnectionTypeDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 480
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick()::mConnectionTypeDialog, item_idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    packed-switch p2, :pswitch_data_0

    .line 506
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setConnectData()V

    .line 507
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "InternetConnectionHasRun"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateConnectionTypeDisplay()V

    .line 509
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->removeDialog(I)V

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 485
    :pswitch_0
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_0

    .line 488
    :pswitch_1
    iput v4, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_0

    .line 491
    :pswitch_2
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_0

    .line 496
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 499
    :pswitch_3
    iput v4, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_0

    .line 502
    :pswitch_4
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    goto :goto_0

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mScheduledSyncDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 513
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick()::mScheduledSyncDialog, item_idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    packed-switch p2, :pswitch_data_2

    .line 523
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setSyncData()V

    .line 524
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SyncDataHasRun"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updateScheduledSyncDisplay()V

    .line 526
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->removeDialog(I)V

    goto :goto_1

    .line 517
    :pswitch_5
    const/16 v0, 0x7d1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    goto :goto_2

    .line 520
    :pswitch_6
    const/16 v0, 0x7d2

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mSyncSelect:I

    goto :goto_2

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 496
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 514
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 550
    :goto_0
    return-void

    .line 536
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setResult(I)V

    .line 537
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->hasYes4G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mWifiSelect:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->loginYes4G()V

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->finish()V

    goto :goto_0

    .line 545
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setResult(I)V

    .line 546
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->finish()V

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_1
        0x7f0d0009 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 115
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->initialize()V

    .line 117
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 104
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->requestWindowFeature(I)Z

    .line 106
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->initialize()V

    .line 109
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->onCreatePreferences()V

    .line 110
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 378
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    packed-switch p1, :pswitch_data_0

    .line 389
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 382
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->createConnectionTypeDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mConnectionTypeDialog:Landroid/app/Dialog;

    .line 383
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mConnectionTypeDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->createScheduledSyncDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mScheduledSyncDialog:Landroid/app/Dialog;

    .line 387
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mScheduledSyncDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 767
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 768
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 615
    const-string v1, "OOBE_ConnectionAndSyncActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sparse-switch p1, :sswitch_data_0

    .line 630
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 619
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->mbLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 621
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setResult(I)V

    .line 622
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 602
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    packed-switch p1, :pswitch_data_0

    .line 609
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 606
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 761
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 762
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 396
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(), screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    instance-of v0, p2, Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connection_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->showDialog(I)V

    .line 410
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 405
    :cond_1
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduled_sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 747
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 748
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->setDefaultValue()V

    .line 750
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/ConnectionAndSyncActivity;->updatePreferenceCategoryStatus()V

    .line 751
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 755
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 756
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 773
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 774
    const-string v0, "OOBE_ConnectionAndSyncActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method
