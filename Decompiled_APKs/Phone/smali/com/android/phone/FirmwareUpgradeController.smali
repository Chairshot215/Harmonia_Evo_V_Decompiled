.class Lcom/android/phone/FirmwareUpgradeController;
.super Ljava/lang/Object;
.source "FirmwareUpgradeController.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "htccdma_settings.db"

.field private static final DB_FILE_PATH:Ljava/lang/String; = "data/data/com.android.providers.htccdma/databases/"

.field private static final FIRMWAREUPGRADE_TAG:Ljava/lang/String; = "com.android.phone.FirmwareUpgradeController"

.field private static final TAG:Ljava/lang/String; = "FirmwareUpgradeController"

.field private static sMe:Lcom/android/phone/FirmwareUpgradeController; = null

.field public static final tablename:Ljava/lang/String; = "htccdma_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/FirmwareUpgradeController;->sMe:Lcom/android/phone/FirmwareUpgradeController;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CheckNeedUpgrade(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 6
    .parameter "phone"
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 39
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "com.android.phone.FirmwareUpgradeController"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string v4, "FirmwareUpgradeController"

    const-string v5, "don\'t need upgrade"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v4, "data/data/com.android.providers.htccdma/databases/"

    const-string v5, "htccdma_settings.db"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v2, settingFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    sget-object v4, Lcom/android/phone/FirmwareUpgradeController;->sMe:Lcom/android/phone/FirmwareUpgradeController;

    if-nez v4, :cond_1

    .line 50
    new-instance v4, Lcom/android/phone/FirmwareUpgradeController;

    invoke-direct {v4}, Lcom/android/phone/FirmwareUpgradeController;-><init>()V

    sput-object v4, Lcom/android/phone/FirmwareUpgradeController;->sMe:Lcom/android/phone/FirmwareUpgradeController;

    .line 52
    :cond_1
    sget-object v4, Lcom/android/phone/FirmwareUpgradeController;->sMe:Lcom/android/phone/FirmwareUpgradeController;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/FirmwareUpgradeController;->UpgradeToEclair(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    .line 56
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    const/4 v4, 0x0

    sput-object v4, Lcom/android/phone/FirmwareUpgradeController;->sMe:Lcom/android/phone/FirmwareUpgradeController;

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FirmwareUpgradeController"

    const-string v5, "Exception : settingFile.delete"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "FirmwareUpgradeController"

    const-string v5, "htccdma_settings.db not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.android.phone.FirmwareUpgradeController"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private UpgradeToEclair(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 16
    .parameter "phone"
    .parameter "context"

    .prologue
    .line 76
    const-string v2, "FirmwareUpgradeController"

    const-string v4, "UpgradeToEclair"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    const-string v2, "data/data/com.android.providers.htccdma/databases/htccdma_settings.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v2, 0xd

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "VOICE_PRIVACY_NOTIFY"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "DATA_ROAMING_GUARD"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "CALL_GUARD"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "ROAMING_ALERT"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "PLUS_CODE_DIALING"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "PLUS_CODE_DIALING_NUMBER"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "AUTO_PREPEND"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "EMERGENCY_ALERT"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "CALL_REDIAL"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "GPSONE_LOCATION_TRACKING"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "VOICEMAIL_MESSAGE_WAITING"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "DTMF_TONE_TYPE"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "VOICE_MAIL_NUMBER"

    aput-object v4, v3, v2

    .line 94
    .local v3, project:[Ljava/lang/String;
    const-string v2, "htccdma_settings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 95
    .local v11, cur:Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 97
    const-string v2, "FirmwareUpgradeController"

    const-string v4, "cur == null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 150
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #project:[Ljava/lang/String;
    .end local v11           #cur:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v12

    .line 86
    .local v12, e:Ljava/lang/Exception;
    const-string v2, "FirmwareUpgradeController"

    const-string v4, "SQLiteException"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #project:[Ljava/lang/String;
    .restart local v11       #cur:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    .line 103
    .local v14, n:I
    const-string v2, "FirmwareUpgradeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getColumnCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-string v2, "htc_cdma_settings"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 115
    .local v10, callGuardSettings:Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 116
    .local v9, callGuardEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "SETTING_CALL_GUARD"

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v9, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-static/range {p2 .. p2}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 122
    .local v15, sp:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 123
    .local v13, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cdma_plus_code_dialing_key"

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-interface {v13, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v2, "cdma_plus_code_dialing_number_key"

    const/4 v4, 0x5

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v4, "cdma_number_hyphenation_key"

    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-interface {v13, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "emergency_tone"

    const/4 v5, 0x7

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    const-string v2, "FirmwareUpgradeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice mail number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xc

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v2, "vm_number_key_cdma"

    const/16 v4, 0xc

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v2, "com.android.phone.FirmwareUpgradeController"

    const/4 v4, 0x1

    invoke-interface {v13, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 149
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 116
    .end local v13           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #sp:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    .restart local v13       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v15       #sp:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 127
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method
