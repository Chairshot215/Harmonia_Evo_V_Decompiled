.class public Lcom/htc/CustomizationSetup/SIMStateChangeService;
.super Landroid/app/Service;
.source "SIMStateChangeService.java"


# static fields
.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION_FORCE:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

.field private static final CUSTOMIZATIONSETUP_CLASS_NAME:Ljava/lang/String; = "com.htc.CustomizationSetup"

.field private static final CUSTOMIZATIONSETUP_SIMCHANGED_ACTIVITY:Ljava/lang/String; = "com.htc.CustomizationSetup.SIMChangedActivity"

.field private static final CUSTOMIZATION_MNS_ROOT:Ljava/lang/String; = "/system/customize/MNS/"

.field private static final CUSTOMIZATION_ROOT:Ljava/lang/String; = "/system/customize/"

.field private static final CUST_FILE_BUNDLE_KEY:Ljava/lang/String; = "custxml"

.field private static final HTCSETUPWIZARD_CLASS_NAME:Ljava/lang/String; = "com.htc.android.htcsetupwizard"

.field private static final HTCSETUPWIZARD_CSL_SELECTION_ACTIVITY:Ljava/lang/String; = "com.htc.android.htcsetupwizard.csl.CslSelectionActivity"

.field private static final HTCSETUPWIZARD_CUSTOMIZATION_SETUP_ACTIVITY:Ljava/lang/String; = "com.htc.android.htcsetupwizard.activity.CustomizationPickerActivity"

.field private static final INTENT_DATA_CUSTOMIZATION_MVNO_OPERATOR:Ljava/lang/String; = "CustomizationMvnoOperator"

.field private static final INTENT_DATA_CUSTOMIZATION_SETTING_FILE:Ljava/lang/String; = "CustomizationSettingFile"

.field private static final INTENT_STRING_LAUNCH_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final KEY_SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field private static final MCC_MNC_BUNDLE_KEY:Ljava/lang/String; = "operator"

.field private static final MCC_MNC_DATABASE_DEF_KEY:Ljava/lang/String; = "default"

.field private static final MCC_MNC_DATABASE_KEY:Ljava/lang/String; = "mcc_mnc"

.field private static final MNS_MAP_FILE:Ljava/lang/String; = "mns_map.xml"

.field private static final MVNO_MAP_FILE:Ljava/lang/String; = "mvno_map.xml"

.field private static final NOTIFY_SIM_CHANGED:I = 0x7f050002

.field private static final PREFERC_URI:Landroid/net/Uri; = null

.field private static final PREFS_NAME:Ljava/lang/String; = "CustomizePref"

.field private static final PREF_NEED_FORCE_NOTIFY:Ljava/lang/String; = "needForceNotify"

.field private static final PREF_NEED_NOTIFY:Ljava/lang/String; = "needNotify"

.field private static final SELECTED_CSL_PROFILE:Ljava/lang/String; = "SelectedCslProfile"

.field private static final TAG:Ljava/lang/String; = "SIMStateChangeService"


# instance fields
.field mApnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private mGID:Ljava/lang/String;

.field private mIsCSL:Z

.field private mIsCustomizationPickerNeeded:Z

.field private mMccMnc:Ljava/lang/String;

.field private mMvnoOperator:Ljava/lang/String;

.field private mSimChangedByIMSI:Z

.field private mSimOperator:Ljava/lang/String;

.field private mStrCurImsi:Ljava/lang/String;

.field private mStrCurMccMnc:Ljava/lang/String;

.field private mXmlCustFile:Ljava/lang/String;

.field private mXmlCustPickerFile:Ljava/lang/String;

.field private mbInParsing:Ljava/lang/Boolean;

.field private serviceThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://customization_settings/SettingTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->PREFERC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    .line 105
    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    .line 111
    iput-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    .line 112
    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCustomizationPickerNeeded:Z

    .line 114
    iput-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMccMnc:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mApnList:Ljava/util/ArrayList;

    .line 120
    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCSL:Z

    .line 360
    new-instance v0, Lcom/htc/CustomizationSetup/SIMStateChangeService$2;

    invoke-direct {v0, p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService$2;-><init>(Lcom/htc/CustomizationSetup/SIMStateChangeService;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/CustomizationSetup/SIMStateChangeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->doSimChangeService()V

    return-void
.end method

.method private addSimChangedNotification(Landroid/content/Intent;)V
    .locals 8
    .parameter "simIntent"

    .prologue
    const v7, 0x7f050002

    const/4 v3, 0x0

    .line 347
    invoke-static {p0, v3, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 349
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    const v3, 0x108008a

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 351
    .local v1, notify:Landroid/app/Notification;
    invoke-virtual {p0, v7}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {p0, v4}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 354
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 355
    .local v2, notifyMgr:Landroid/app/NotificationManager;
    invoke-virtual {v2, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 356
    return-void
.end method

.method private static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 669
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 673
    const/4 v0, 0x0

    .line 675
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 674
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private doSimChangeService()V
    .locals 19

    .prologue
    .line 173
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 174
    .local v13, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v13, :cond_1

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimOperator:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimOperator:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 178
    :cond_0
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    .line 181
    :goto_0
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    .line 188
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isIMSIChanged()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    .line 189
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mSimChangedByIMSI = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isSIMCardChanged()Z

    move-result v11

    .line 191
    .local v11, simChanged:Z
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "simChanged = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v14, "CustomizePref"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 194
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v14, "needForceNotify"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 195
    .local v6, needForceNotify:Z
    const-string v14, "needNotify"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 196
    .local v7, needNotify:Z
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "needNotify = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 199
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    .line 200
    const-string v14, "SIMStateChangeService"

    const-string v15, "SIM Card is changed"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v6, 0x1

    .line 202
    const/4 v7, 0x1

    .line 204
    const-string v14, "needForceNotify"

    invoke-interface {v3, v14, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    const-string v14, "needNotify"

    invoke-interface {v3, v14, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    :cond_2
    const/4 v14, 0x1

    if-ne v6, v14, :cond_3

    .line 212
    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->saveSIMOperatorToDB()V

    .line 215
    new-instance v4, Landroid/content/Intent;

    const-string v14, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v4, forceIntent:Landroid/content/Intent;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 219
    const/4 v6, 0x0

    .line 220
    const-string v14, "needForceNotify"

    invoke-interface {v3, v14, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    .end local v4           #forceIntent:Landroid/content/Intent;
    :cond_3
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    if-eqz v14, :cond_5

    .line 227
    :cond_4
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "previous_op = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "mvno_operator"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "previous_csl_profile = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "SelectedCslProfile"

    const/16 v18, -0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "mvno_operator"

    const-string v16, ""

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "SelectedCslProfile"

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCustomizationPickerNeeded:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 237
    const-string v14, "SIMStateChangeService"

    const-string v15, "Customization Picker  case case MATCH_GID_MENU_Y or NO_MATCH_GID_MENU_Y"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v12, simIntent:Landroid/content/Intent;
    const-string v14, "com.htc.android.htcsetupwizard"

    const-string v15, "com.htc.android.htcsetupwizard.activity.CustomizationPickerActivity"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v14, "LaunchByIcon"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 244
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    const v14, 0x108008a

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 246
    .local v8, notify:Landroid/app/Notification;
    const v14, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14, v15, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 248
    const/16 v14, 0x10

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 250
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 251
    .local v9, notifyMgr:Landroid/app/NotificationManager;
    const v14, 0x7f050002

    invoke-virtual {v9, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 252
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCustomizationPickerNeeded:Z

    .line 342
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #notify:Landroid/app/Notification;
    .end local v9           #notifyMgr:Landroid/app/NotificationManager;
    .end local v12           #simIntent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-enter v15

    const/4 v14, 0x0

    :try_start_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->stopSelf()V

    .line 344
    return-void

    .line 180
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #needForceNotify:Z
    .end local v7           #needNotify:Z
    .end local v10           #settings:Landroid/content/SharedPreferences;
    .end local v11           #simChanged:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimOperator:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #needForceNotify:Z
    .restart local v7       #needNotify:Z
    .restart local v10       #settings:Landroid/content/SharedPreferences;
    .restart local v11       #simChanged:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    if-eqz v14, :cond_9

    .line 256
    const-string v14, "SIMStateChangeService"

    const-string v15, "mXmlCustPickerFile != null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v14, 0x1

    if-ne v7, v14, :cond_6

    .line 259
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 260
    .restart local v12       #simIntent:Landroid/content/Intent;
    const-string v14, "com.htc.CustomizationSetup"

    const-string v15, "com.htc.CustomizationSetup.SIMChangedActivity"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v14, "CustomizationSettingFile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v14, "CustomizationMvnoOperator"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMvnoOperator:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->addSimChangedNotification(Landroid/content/Intent;)V

    goto :goto_1

    .line 267
    .end local v12           #simIntent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCSL:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    .line 269
    const-string v14, "SIMStateChangeService"

    const-string v15, "CSL case"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 271
    .restart local v12       #simIntent:Landroid/content/Intent;
    const-string v14, "com.htc.android.htcsetupwizard"

    const-string v15, "com.htc.android.htcsetupwizard.csl.CslSelectionActivity"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v14, "LaunchByIcon"

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 276
    .restart local v2       #contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    const v14, 0x108008a

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 278
    .restart local v8       #notify:Landroid/app/Notification;
    const v14, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14, v15, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 280
    const/16 v14, 0x10

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 282
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 283
    .restart local v9       #notifyMgr:Landroid/app/NotificationManager;
    const v14, 0x7f050002

    invoke-virtual {v9, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 284
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCSL:Z

    goto/16 :goto_1

    .line 286
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #notify:Landroid/app/Notification;
    .end local v9           #notifyMgr:Landroid/app/NotificationManager;
    .end local v12           #simIntent:Landroid/content/Intent;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isMvnoSupported()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    if-ne v7, v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isInSupportList()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 288
    const-string v14, "SIMStateChangeService"

    const-string v15, "Both MVNO and customizaiton"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 293
    .restart local v12       #simIntent:Landroid/content/Intent;
    const-string v14, "com.htc.CustomizationSetup"

    const-string v15, "com.htc.CustomizationSetup.SIMChangedActivity"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v14, "CustomizationSettingFile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v14, "LaunchActivity"

    const-string v15, "mvno_operator"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 299
    .restart local v2       #contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    const v14, 0x108008a

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 301
    .restart local v8       #notify:Landroid/app/Notification;
    const v14, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14, v15, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 303
    const/16 v14, 0x10

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 305
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 306
    .restart local v9       #notifyMgr:Landroid/app/NotificationManager;
    const v14, 0x7f050002

    invoke-virtual {v9, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 308
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #notify:Landroid/app/Notification;
    .end local v9           #notifyMgr:Landroid/app/NotificationManager;
    .end local v12           #simIntent:Landroid/content/Intent;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isMvnoSupported()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 310
    const-string v14, "SIMStateChangeService"

    const-string v15, "Mvno Supported"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v5, mvnoIntent:Landroid/content/Intent;
    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.OperatorPicker"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v14, "CustomizationSettingFile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 320
    .restart local v2       #contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    const v14, 0x108008a

    const/4 v15, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v8, v14, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 322
    .restart local v8       #notify:Landroid/app/Notification;
    const v14, 0x7f050002

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v14, v15, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 324
    const/16 v14, 0x10

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 326
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 327
    .restart local v9       #notifyMgr:Landroid/app/NotificationManager;
    const v14, 0x7f050002

    invoke-virtual {v9, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 331
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #mvnoIntent:Landroid/content/Intent;
    .end local v8           #notify:Landroid/app/Notification;
    .end local v9           #notifyMgr:Landroid/app/NotificationManager;
    :cond_c
    const-string v14, "SIMStateChangeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mXmlCustPickerFile != null case or isInSupportList ; needNotify = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v14, 0x1

    if-ne v7, v14, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isInSupportList()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 333
    const-string v14, "SIMStateChangeService"

    const-string v15, " isInSupportList"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 336
    .restart local v12       #simIntent:Landroid/content/Intent;
    const-string v14, "com.htc.CustomizationSetup"

    const-string v15, "com.htc.CustomizationSetup.SIMChangedActivity"

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v14, "CustomizationSettingFile"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->addSimChangedNotification(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 342
    .end local v12           #simIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14
.end method

.method private getPreviousCustFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    const-string v0, "custxml"

    invoke-direct {p0, v0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getPreviousData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 620
    const-string v3, "\"key\" == \"mcc_mnc\""

    .line 622
    .local v3, strWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/CustomizationSetup/SIMStateChangeService;->PREFERC_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 624
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 625
    const-string v0, "SIMStateChangeService"

    const-string v1, "Failed to get cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_0
    return-object v2

    .line 629
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 630
    const-string v0, "SIMStateChangeService"

    const-string v1, "cursor size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 635
    :cond_1
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 636
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_2

    .line 637
    const-string v0, "SIMStateChangeService"

    const-string v1, "no customized data support"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 641
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 643
    const/4 v8, 0x0

    .line 645
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 651
    invoke-direct {p0, v8}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 652
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 653
    const-string v11, ""

    .line 654
    .local v11, strOperator:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 655
    invoke-virtual {v6, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 656
    :cond_3
    const-string v0, "SIMStateChangeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousData key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v11

    .line 657
    goto :goto_0

    .line 646
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v11           #strOperator:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 647
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v0, "SIMStateChangeService"

    const-string v1, "no customized data support"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPreviousImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_imsi"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousMCCMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    const-string v0, "operator"

    invoke-direct {p0, v0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getPreviousData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private havePreviousMCCMNC()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 585
    const-string v3, "\"key\" == \"mcc_mnc\""

    .line 587
    .local v3, strWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/CustomizationSetup/SIMStateChangeService;->PREFERC_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 590
    const-string v0, "SIMStateChangeService"

    const-string v1, "Failed to get cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 607
    :goto_0
    return v0

    .line 594
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 595
    const-string v0, "SIMStateChangeService"

    const-string v1, "cursor size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 597
    goto :goto_0

    .line 600
    :cond_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 601
    .local v7, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v7, :cond_2

    .line 602
    const-string v0, "SIMStateChangeService"

    const-string v1, "no customized data support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 604
    goto :goto_0

    .line 606
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 607
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 479
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .local v1, mainComponent:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 482
    .local v3, res:Z
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    const/4 v3, 0x1

    .line 487
    :goto_0
    return v3

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SIMStateChangeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Not Found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCSLSupported()Z
    .locals 9

    .prologue
    .line 454
    const-string v0, "45400"

    .line 455
    .local v0, CSL1:Ljava/lang/String;
    const-string v1, "45402"

    .line 456
    .local v1, CSL2:Ljava/lang/String;
    const-string v2, "45410"

    .line 458
    .local v2, CSL3:Ljava/lang/String;
    const-string v6, "SIMStateChangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Htc_PROJECT_flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v6, "SIMStateChangeService"

    const-string v7, "PROJECT_G0003_flag = 50"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v6, "SIMStateChangeService"

    const-string v7, "PROJECT_C0003_flag = 18"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x32

    if-eq v6, v7, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x12

    if-ne v6, v7, :cond_1

    :cond_0
    const-string v6, "45400"

    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "45402"

    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "45410"

    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 464
    :cond_1
    const/4 v5, 0x0

    .line 473
    :goto_0
    return v5

    .line 468
    :cond_2
    const-string v3, "/system/customize/csl_mns_map.xml"

    .line 469
    .local v3, CSL_PROFILE_PATH:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v6, "/system/customize/csl_mns_map.xml"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    .line 471
    .local v5, isFound:Z
    const-string v6, "SIMStateChangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/customize/csl_mns_map.xml found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCustFileChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    if-nez v3, :cond_1

    move v1, v2

    .line 449
    :cond_0
    :goto_0
    return v1

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getPreviousCustFile()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, preCustFile:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 449
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isCustomizationPickerNeed()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 511
    new-instance v3, Lcom/htc/CustomizationSetup/ParseXml;

    invoke-direct {v3, p0}, Lcom/htc/CustomizationSetup/ParseXml;-><init>(Landroid/content/Context;)V

    .line 512
    .local v3, parseXml:Lcom/htc/CustomizationSetup/ParseXml;
    const-string v0, ""

    .line 513
    .local v0, itemInMapPath:Ljava/lang/String;
    const-string v5, ""

    .line 514
    .local v5, xmlFile:Ljava/lang/String;
    const-string v1, "/system/customize/mvno_map.xml"

    .line 515
    .local v1, mvnoMapPath:Ljava/lang/String;
    new-instance v2, Lcom/htc/CustomizationSetup/ParseMvnoMap;

    invoke-direct {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;-><init>()V

    .line 517
    .local v2, parseMvnoMap:Lcom/htc/CustomizationSetup/ParseMvnoMap;
    iget-object v8, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mGID:Ljava/lang/String;

    invoke-virtual {v2, v1, v8, v9}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v4

    .line 518
    .local v4, ret:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;
    sget-object v8, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->PARSE_ERROR:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    if-ne v4, v8, :cond_1

    .line 543
    :cond_0
    :goto_0
    return v6

    .line 521
    :cond_1
    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getOperatorName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMvnoOperator:Ljava/lang/String;

    .line 522
    const-string v8, "SIMStateChangeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCustomizationPickerNeed mMvnoOperator:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMvnoOperator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v8

    sget-object v9, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_N:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    if-eq v8, v9, :cond_2

    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v8

    sget-object v9, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->NULL_GID_MENU_N:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    if-ne v8, v9, :cond_4

    .line 526
    :cond_2
    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 527
    if-eqz v5, :cond_0

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/customize/MNS/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {v3, v0, v6}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v7, v8, :cond_3

    .line 530
    const-string v7, "SIMStateChangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    goto :goto_0

    .line 534
    :cond_3
    const-string v7, "SIMStateChangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "case1 ! , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 538
    :cond_4
    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v8

    sget-object v9, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->NO_MATCH_GID_MENU_Y:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    if-eq v8, v9, :cond_5

    invoke-virtual {v2}, Lcom/htc/CustomizationSetup/ParseMvnoMap;->getCaseNumber()Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    move-result-object v8

    sget-object v9, Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;->MATCH_GID_MENU_Y:Lcom/htc/CustomizationSetup/ParseMvnoMap$ParseCase;

    if-ne v8, v9, :cond_0

    :cond_5
    move v6, v7

    .line 540
    goto/16 :goto_0
.end method

.method private isIMSIChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 491
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getPreviousImsi()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, preImsi:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_imsi"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    :goto_0
    return v1

    .line 499
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_imsi"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurImsi:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 505
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInSupportList()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 548
    const-string v1, "/system/customize/mns_map.xml"

    .line 549
    .local v1, mnsMapPath:Ljava/lang/String;
    const-string v0, ""

    .line 550
    .local v0, itemInMapPath:Ljava/lang/String;
    new-instance v2, Lcom/htc/CustomizationSetup/ParseMap;

    invoke-direct {v2}, Lcom/htc/CustomizationSetup/ParseMap;-><init>()V

    .line 551
    .local v2, parseMap:Lcom/htc/CustomizationSetup/ParseMap;
    new-instance v3, Lcom/htc/CustomizationSetup/ParseXml;

    invoke-direct {v3, p0}, Lcom/htc/CustomizationSetup/ParseXml;-><init>(Landroid/content/Context;)V

    .line 552
    .local v3, parseXml:Lcom/htc/CustomizationSetup/ParseXml;
    const-string v7, "SIMStateChangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsing in progress. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v2, v1, v7}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, xmlFile:Ljava/lang/String;
    if-nez v4, :cond_0

    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    .line 557
    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    .line 558
    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v2, v1, v7}, Lcom/htc/CustomizationSetup/ParseMap;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    :cond_0
    const-string v7, "SIMStateChangeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mapped item in MnsMap == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v7, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 564
    iget-object v6, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    iput-object v6, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    .line 565
    const-string v6, "SIMStateChangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mXmlCustFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    return v5

    .line 568
    :cond_1
    if-eqz v4, :cond_3

    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/customize/MNS/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {v3, v0, v6}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    move-result v7

    if-ne v5, v7, :cond_2

    .line 571
    const-string v6, "SIMStateChangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustFile:Ljava/lang/String;

    goto :goto_0

    .line 575
    :cond_2
    const-string v5, "SIMStateChangeService"

    const-string v7, "parsing error, no mapped item for current MccMnc"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v5, v6

    .line 581
    goto :goto_0

    .line 578
    :cond_3
    const-string v5, "default"

    iput-object v5, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    .line 579
    const-string v5, "SIMStateChangeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Use: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current MccMnc is NOT supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isMvnoSupported()Z
    .locals 15

    .prologue
    .line 680
    const-string v1, "SIMStateChangeService"

    const-string v2, "isMvnoSupported start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v14, 0x0

    .line 683
    .local v14, phoneType:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v14

    .line 684
    const/4 v1, 0x2

    if-ne v14, v1, :cond_0

    .line 686
    const-string v1, "SIMStateChangeService"

    const-string v2, "phoneType == Phone.PHONE_TYPE_CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v1, 0x0

    .line 774
    :goto_0
    return v1

    .line 690
    :cond_0
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMccMnc:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMccMnc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    const-string v1, "SIMStateChangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMccMnc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v1, 0x0

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mvno_operator"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 698
    .local v11, op:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 700
    const-string v1, "SIMStateChangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "op = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    iget-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    if-nez v1, :cond_3

    .line 706
    const-string v1, "SIMStateChangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimChangedByIMSI = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    goto :goto_0

    .line 710
    :cond_3
    const/4 v10, 0x0

    .line 712
    .local v10, mIsMVNO:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 714
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "operator"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 717
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v13, opnamelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    .line 719
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 721
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 722
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, id:Ljava/lang/String;
    const-string v1, "operator"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 725
    .local v12, oper:Ljava/lang/String;
    const/4 v9, 0x0

    .line 726
    .local v9, isExisted:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_4

    .line 727
    if-eqz v12, :cond_6

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 728
    const/4 v9, 0x1

    .line 733
    :cond_4
    if-nez v9, :cond_5

    if-eqz v12, :cond_5

    .line 734
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    const-string v1, "SIMStateChangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opnamelist.add( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 726
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 740
    .end local v7           #i:I
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #isExisted:Z
    .end local v12           #oper:Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 769
    :cond_8
    const-string v1, "SIMStateChangeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opnamelist.size() is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v10, 0x1

    .line 771
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v10, :cond_a

    .line 772
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 770
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 774
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private isSIMCardChanged()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 399
    const-string v3, "SIMStateChangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current MCC + MNC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getPreviousMCCMNC()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, strPreMCCMNC:Ljava/lang/String;
    const-string v3, "SIMStateChangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous MCC + MNC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "SIMStateChangeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "equals == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimChangedByIMSI:Z

    if-eqz v3, :cond_6

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-enter v3

    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isCSLSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    const-string v2, "SIMStateChangeService"

    const-string v3, "CSL case. Set mIsCSL to true."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCSL:Z

    .line 433
    .end local v0           #strPreMCCMNC:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 408
    .restart local v0       #strPreMCCMNC:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isCustomizationPickerNeed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const-string v3, "SIMStateChangeService"

    const-string v4, "isCustomizationPickerNeed true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iput-boolean v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mIsCustomizationPickerNeeded:Z

    .end local v0           #strPreMCCMNC:Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 433
    goto :goto_0

    .line 420
    .restart local v0       #strPreMCCMNC:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isCustFileChanged()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 421
    const-string v2, "SIMStateChangeService"

    const-string v3, "mXmlCustPickerFile!=null && isCustFileChanged!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_5
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->isInSupportList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    const-string v3, "SIMStateChangeService"

    const-string v4, "isInSupportList true"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 431
    goto :goto_0
.end method

.method private saveSIMOperatorToDB()V
    .locals 6

    .prologue
    .line 369
    const-string v3, "SIMStateChangeService"

    const-string v4, "saveSIMOperatorToDB()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "operator"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mStrCurMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v3, "custxml"

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mXmlCustPickerFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "key"

    const-string v4, "mcc_mnc"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "value"

    invoke-static {v0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 377
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->havePreviousMCCMNC()Z

    move-result v3

    if-nez v3, :cond_0

    .line 379
    const-string v3, "SIMStateChangeService"

    const-string v4, "No previous MCC and MNC!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/CustomizationSetup/SIMStateChangeService;->PREFERC_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v3, "SIMStateChangeService"

    const-string v4, "Update previous MCC and MNC!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v1, "\"key\" == \"mcc_mnc\""

    .line 386
    .local v1, strWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/CustomizationSetup/SIMStateChangeService;->PREFERC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "SIMStateChangeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SIMStateChangeService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string v0, "SIMStateChangeService"

    const-string v1, "onStart: intent = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    monitor-enter v1

    .line 150
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mbInParsing:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 151
    monitor-exit v1

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const-string v0, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mSimOperator:Ljava/lang/String;

    .line 156
    const-string v0, "GID1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->mGID:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/htc/CustomizationSetup/SIMStateChangeService$1;

    invoke-direct {v0, p0}, Lcom/htc/CustomizationSetup/SIMStateChangeService$1;-><init>(Lcom/htc/CustomizationSetup/SIMStateChangeService;)V

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->serviceThread:Ljava/lang/Thread;

    .line 167
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMStateChangeService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
