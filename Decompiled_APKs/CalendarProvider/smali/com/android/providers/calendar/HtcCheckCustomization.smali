.class public Lcom/android/providers/calendar/HtcCheckCustomization;
.super Ljava/lang/Object;
.source "HtcCheckCustomization.java"


# static fields
.field public static final CALENDAR_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_Calendar"

.field public static final KEY_CUSTOMIZATION:Ljava/lang/String; = "preference_customization"

.field public static final SYNC_GOOGLE_ACCOUNT_MGR:Ljava/lang/String; = "sync_google_account_mgr"

.field private static final TAG:Ljava/lang/String; = "HtcCheckCustomization"

.field private static mDefault_reminder_in_customization:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "10"

    sput-object v0, Lcom/android/providers/calendar/HtcCheckCustomization;->mDefault_reminder_in_customization:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 43
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 44
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 49
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private static checkHtcCustomization(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Lcom/android/providers/calendar/HtcCheckCustomization;->didHtcCustomizationDone(Landroid/content/Context;)Z

    move-result v1

    .line 115
    .local v1, didDone:Z
    if-nez v1, :cond_0

    .line 116
    const-string v2, "content://customization_settings/SettingTable/application_Calendar"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/providers/calendar/HtcCheckCustomization;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0, p0}, Lcom/android/providers/calendar/HtcCheckCustomization;->getDefaultReminderValue(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/providers/calendar/HtcCheckCustomization;->mDefault_reminder_in_customization:Ljava/lang/String;

    .line 120
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/android/providers/calendar/HtcCheckCustomization;->saveHtcCustomization(ZLandroid/content/Context;)V

    .line 123
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private static didHtcCustomizationDone(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/providers/calendar/HtcCheckCustomization;->didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private static didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 32
    const-string v1, "preference_customization"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .local v0, bCustomization:Z
    return v0
.end method

.method private static getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, uri:Landroid/net/Uri;
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    if-eqz p1, :cond_0

    .line 62
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 67
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 68
    const-string v0, "HtcCheckCustomization"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 73
    const-string v0, "HtcCheckCustomization"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_3
    const/4 v7, 0x0

    .line 78
    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 82
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 83
    const-string v0, "HtcCheckCustomization"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_5
    const/4 v7, 0x0

    .line 88
    goto :goto_0

    .line 90
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    const/4 v8, 0x0

    .line 93
    .local v8, data:[B
    const/4 v6, 0x0

    .line 96
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 97
    invoke-static {v8}, Lcom/android/providers/calendar/HtcCheckCustomization;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 103
    if-eqz v7, :cond_8

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_1
    move-object v2, v6

    .line 110
    goto :goto_0

    .line 98
    :catch_0
    move-exception v9

    .line 99
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "HtcCheckCustomization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    const/4 v6, 0x0

    .line 103
    if-eqz v7, :cond_8

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 103
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_a
    const/4 v7, 0x0

    :cond_b
    throw v0
.end method

.method private static getDefaultReminderValue(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 126
    const-string v0, "10"

    .line 129
    .local v0, DEFAULT_REMINDER_VALUE:Ljava/lang/String;
    const-string v10, "reminder"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 130
    .local v7, reminderList:Landroid/os/Bundle;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 132
    const-string v5, "plenty_set1"

    .line 133
    .local v5, key_plenty:Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 135
    .local v6, reminder:Landroid/os/Bundle;
    const-string v2, "reminder_type"

    .line 136
    .local v2, KEY_REMINDER_TYPE:Ljava/lang/String;
    const-string v3, "reminder_vibrate"

    .line 137
    .local v3, KEY_REMINDER_VIBRATE:Ljava/lang/String;
    const-string v1, "reminder_time"

    .line 140
    .local v1, KEY_REMINDER_TIME:Ljava/lang/String;
    const-string v8, "1"

    .line 141
    .local v8, type:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 142
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    :goto_0
    const-string v9, "true"

    .line 150
    .local v9, vibrate:Ljava/lang/String;
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 151
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    :goto_1
    const-string v4, "10"

    .line 161
    .local v4, duration:Ljava/lang/String;
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 162
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    const-string v10, "HtcCheckCustomization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get duration:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 171
    .end local v0           #DEFAULT_REMINDER_VALUE:Ljava/lang/String;
    .end local v1           #KEY_REMINDER_TIME:Ljava/lang/String;
    .end local v2           #KEY_REMINDER_TYPE:Ljava/lang/String;
    .end local v3           #KEY_REMINDER_VIBRATE:Ljava/lang/String;
    .end local v4           #duration:Ljava/lang/String;
    .end local v5           #key_plenty:Ljava/lang/String;
    .end local v6           #reminder:Landroid/os/Bundle;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #vibrate:Ljava/lang/String;
    :goto_2
    return-object v0

    .line 145
    .restart local v0       #DEFAULT_REMINDER_VALUE:Ljava/lang/String;
    .restart local v1       #KEY_REMINDER_TIME:Ljava/lang/String;
    .restart local v2       #KEY_REMINDER_TYPE:Ljava/lang/String;
    .restart local v3       #KEY_REMINDER_VIBRATE:Ljava/lang/String;
    .restart local v5       #key_plenty:Ljava/lang/String;
    .restart local v6       #reminder:Landroid/os/Bundle;
    .restart local v8       #type:Ljava/lang/String;
    :cond_0
    const-string v10, "HtcCheckCustomization"

    const-string v11, "Can\'t get type"

    invoke-static {v10, v11}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .restart local v9       #vibrate:Ljava/lang/String;
    :cond_1
    const-string v10, "HtcCheckCustomization"

    const-string v11, "Can\'t get vibrate"

    invoke-static {v10, v11}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .restart local v4       #duration:Ljava/lang/String;
    :cond_2
    const-string v10, "HtcCheckCustomization"

    const-string v11, "Can\'t get duration"

    invoke-static {v10, v11}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 170
    .end local v1           #KEY_REMINDER_TIME:Ljava/lang/String;
    .end local v2           #KEY_REMINDER_TYPE:Ljava/lang/String;
    .end local v3           #KEY_REMINDER_VIBRATE:Ljava/lang/String;
    .end local v4           #duration:Ljava/lang/String;
    .end local v5           #key_plenty:Ljava/lang/String;
    .end local v6           #reminder:Landroid/os/Bundle;
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #vibrate:Ljava/lang/String;
    :cond_3
    const-string v10, "HtcCheckCustomization"

    const-string v11, "reminder is null or reminder is 0"

    invoke-static {v10, v11}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getReminderValueInCustomization(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 176
    invoke-static {p0}, Lcom/android/providers/calendar/HtcCheckCustomization;->checkHtcCustomization(Landroid/content/Context;)V

    .line 177
    sget-object v0, Lcom/android/providers/calendar/HtcCheckCustomization;->mDefault_reminder_in_customization:Ljava/lang/String;

    return-object v0
.end method

.method private static saveHtcCustomization(ZLandroid/content/Context;)V
    .locals 3
    .parameter "set"
    .parameter "context"

    .prologue
    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_customization"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 29
    return-void
.end method

.method public static syncGoogleAccountMgr(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 21
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "sync_google_account_mgr"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 22
    .local v0, bret:Z
    return v0
.end method
