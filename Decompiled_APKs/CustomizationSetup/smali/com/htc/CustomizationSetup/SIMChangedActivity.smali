.class public Lcom/htc/CustomizationSetup/SIMChangedActivity;
.super Landroid/app/Activity;
.source "SIMChangedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/CustomizationSetup/SIMChangedActivity$ParseDataTask;
    }
.end annotation


# static fields
.field private static final ALARM_INTERVAL:J = 0x5265c00L

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DIALOG_ID_SIM_CHANGED:I = 0x65

.field private static final INTENT_DATA_CUSTOMIZATION_MVNO_OPERATOR:Ljava/lang/String; = "CustomizationMvnoOperator"

.field private static final INTENT_DATA_CUSTOMIZATION_SETTING_FILE:Ljava/lang/String; = "CustomizationSettingFile"

.field private static final INTENT_STRING_LAUNCH_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final NOTIFY_SIM_CHANGED:I = 0x7f050002

.field private static final OPTION_LATER:I = 0x2

.field private static final OPTION_NO:I = 0x0

.field private static final OPTION_YES:I = 0x1

.field private static final PREFERC_URI:Landroid/net/Uri; = null

.field private static final PREFS_NAME:Ljava/lang/String; = "CustomizePref"

.field private static final PREF_NEED_NOTIFY:Ljava/lang/String; = "needNotify"

.field private static final TAG:Ljava/lang/String; = "SIMChangedActivity"

.field private static final USER_UPDATE_BUNDLE_KEY:Ljava/lang/String; = "updatetime"

.field private static final USER_UPDATE_DATABASE_KEY:Ljava/lang/String; = "user_update"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mLaunchActivity:Ljava/lang/String;

.field private mMvnoOperator:Ljava/lang/String;

.field private mOptionChoose:I

.field private mXmlCustFile:Ljava/lang/String;

.field private needNotify:Z

.field private sender:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "content://customization_settings/SettingTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->PREFERC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 96
    return-void
.end method

.method private NotifyLater()V
    .locals 6

    .prologue
    .line 343
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 344
    .local v0, mAlarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->changeCustomizationSetup()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->postExecution()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/CustomizationSetup/SIMChangedActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/CustomizationSetup/SIMChangedActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mOptionChoose:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/CustomizationSetup/SIMChangedActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->cleanUp(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->NotifyLater()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/CustomizationSetup/SIMChangedActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;

    return-object v0
.end method

.method private static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method private changeCustomizationSetup()V
    .locals 17

    .prologue
    .line 218
    const-string v13, "SIMChangedActivity"

    const-string v14, "changeCustomizationSetup"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v7, Lcom/htc/CustomizationSetup/ParseXml;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/CustomizationSetup/ParseXml;-><init>(Landroid/content/Context;)V

    .line 221
    .local v7, parser:Lcom/htc/CustomizationSetup/ParseXml;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 222
    .local v5, nStartParsingTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mXmlCustFile:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Lcom/htc/CustomizationSetup/ParseXml;->parse(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    .line 223
    const-string v13, "SIMChangedActivity"

    const-string v14, "parsing error."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;

    const-string v14, "mvno_operator"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 276
    const-string v13, "SIMChangedActivity"

    const-string v14, "prepare to start OperatorPicker"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v4, mvnoIntent:Landroid/content/Intent;
    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.OperatorPicker"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    .end local v4           #mvnoIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 225
    :cond_1
    const-string v13, "SIMChangedActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mMvnoOperator:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mMvnoOperator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mMvnoOperator:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "mvno_operator"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mMvnoOperator:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    :cond_2
    const-string v13, "SIMChangedActivity"

    const-string v14, "Start customization wizard part."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v13, "ro.cid"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, cid:Ljava/lang/String;
    const-string v10, ""

    .line 233
    .local v10, strOperator:Ljava/lang/String;
    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 234
    .local v11, teleMgr:Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_3

    .line 235
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 236
    const-string v13, "SIMChangedActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Current MCC + MNC = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    new-instance v8, Lcom/htc/sie/tool/RunX;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/sie/tool/RunX;-><init>(Landroid/content/Context;)V

    .line 239
    .local v8, runx:Lcom/htc/sie/tool/RunX;
    const/4 v13, 0x1

    invoke-virtual {v8, v1, v10, v13}, Lcom/htc/sie/tool/RunX;->applyCWData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    const-string v13, "SIMChangedActivity"

    const-string v14, "End customization wizard part."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 243
    .local v2, currentTime:J
    const-string v13, "SIMChangedActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "total parsing time == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v15, v2, v5

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->updateUserUpdateTimeToDB(J)V

    .line 247
    new-instance v12, Lcom/htc/CustomizationSetup/CustomizeCase;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/htc/CustomizationSetup/CustomizeCase;-><init>(Landroid/content/Context;)V

    .line 248
    .local v12, util:Lcom/htc/CustomizationSetup/CustomizeCase;
    if-eqz v12, :cond_4

    .line 250
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/CustomizationSetup/CustomizeCase;->doLocaleCustomized(Ljava/lang/String;)Z

    .line 254
    invoke-virtual {v12}, Lcom/htc/CustomizationSetup/CustomizeCase;->doDateTimeFormatInit()Z

    .line 256
    invoke-virtual {v12}, Lcom/htc/CustomizationSetup/CustomizeCase;->doDateTimeFormatShortInit()Z

    .line 261
    invoke-virtual {v12}, Lcom/htc/CustomizationSetup/CustomizeCase;->doScreenTimeOutInit()Z

    .line 268
    :goto_1
    new-instance v9, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;-><init>(Landroid/content/Context;)V

    .line 269
    .local v9, scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    invoke-virtual {v9}, Lcom/htc/wrap/android/media/HtcWrapMediaScanner;->onSimChanged()V

    goto/16 :goto_0

    .line 265
    .end local v9           #scanner:Lcom/htc/wrap/android/media/HtcWrapMediaScanner;
    :cond_4
    const-string v13, "SIMChangedActivity"

    const-string v14, "util == null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cleanUp(Z)V
    .locals 4
    .parameter "resetNotify"

    .prologue
    const/4 v2, 0x0

    .line 349
    const-string v3, "CustomizePref"

    invoke-virtual {p0, v3, v2}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 350
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "needNotify"

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->finish()V

    .line 357
    return-void
.end method

.method private createSIMChangedConfirmation()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 166
    const-string v1, "SIMChangedActivity"

    const-string v2, "createSIMChangedConfirmation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050004

    new-instance v3, Lcom/htc/CustomizationSetup/SIMChangedActivity$3;

    invoke-direct {v3, p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity$3;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050006

    new-instance v3, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity$2;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050005

    new-instance v3, Lcom/htc/CustomizationSetup/SIMChangedActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity$1;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 194
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v1, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity$4;-><init>(Lcom/htc/CustomizationSetup/SIMChangedActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 213
    return-object v0
.end method

.method private havePreviousMCCMNC()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 310
    const-string v3, "\"key\" == \"user_update\""

    .line 312
    .local v3, strWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/CustomizationSetup/SIMChangedActivity;->PREFERC_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 315
    const-string v0, "SIMChangedActivity"

    const-string v1, "Failed to get cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 332
    :goto_0
    return v0

    .line 319
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 320
    const-string v0, "SIMChangedActivity"

    const-string v1, "cursor size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 322
    goto :goto_0

    .line 325
    :cond_1
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 326
    .local v7, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v7, :cond_2

    .line 327
    const-string v0, "SIMChangedActivity"

    const-string v1, "no customized data support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 329
    goto :goto_0

    .line 331
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postExecution()V
    .locals 3

    .prologue
    .line 285
    const-string v1, "SIMChangedActivity"

    const-string v2, "postExecution"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->cleanUp(Z)V

    .line 291
    return-void
.end method

.method private updateUserUpdateTimeToDB(J)V
    .locals 6
    .parameter "currentTime"

    .prologue
    .line 294
    const-string v3, "SIMChangedActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUserUpdateTimeToDB(), currentTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "updatetime"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "key"

    const-string v4, "user_update"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v3, "value"

    invoke-static {v0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 301
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->havePreviousMCCMNC()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/CustomizationSetup/SIMChangedActivity;->PREFERC_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v1, "\"key\" == \"user_update\""

    .line 305
    .local v1, strWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/CustomizationSetup/SIMChangedActivity;->PREFERC_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 149
    const-string v0, "SIMChangedActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConigurationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 116
    const-string v4, "SIMChangedActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 120
    .local v2, notifyMgr:Landroid/app/NotificationManager;
    const v4, 0x7f050002

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 124
    const-string v4, "CustomizationSettingFile"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mXmlCustFile:Ljava/lang/String;

    .line 125
    const-string v4, "SIMChangedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customization setting File = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v4, "LaunchActivity"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;

    .line 127
    const-string v4, "SIMChangedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLaunchActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v4, "CustomizationMvnoOperator"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mMvnoOperator:Ljava/lang/String;

    .line 129
    const-string v4, "SIMChangedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMvnoOperator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mMvnoOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v3, retryIntent:Landroid/content/Intent;
    const-string v4, "com.htc.CustomizationSetup"

    const-string v5, "com.htc.CustomizationSetup.SIMStateChangeService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v4, "CustomizationSettingFile"

    iget-object v5, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mXmlCustFile:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->sender:Landroid/app/PendingIntent;

    .line 136
    const-string v4, "SIMChangedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PendingIntent sender = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->showDialog(I)V

    .line 139
    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 142
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 144
    .end local v0           #btn:Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 154
    const/16 v0, 0x65

    if-ne v0, p1, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMChangedActivity;->createSIMChangedConfirmation()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    iput-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 157
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SIMChangedActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 361
    const-string v0, "SIMChangedActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    return-void
.end method
