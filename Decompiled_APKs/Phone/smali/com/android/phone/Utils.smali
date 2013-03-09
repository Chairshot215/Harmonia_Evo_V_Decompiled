.class final Lcom/android/phone/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final CALL_RESPONSE:Ljava/lang/String; = "call_response_text"

.field static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DOT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final DRIVING_MODE:Ljava/lang/String; = "driving_enabled"

#the value of this static final field might be set in the static constructor
.field public static final DRIVING_MODE_SUPPORTED:Z = false

.field private static final HANDSFREE:Ljava/lang/String; = "handsfree_enabled"

.field private static final HFM_ENABLED_PROJECTION:[Ljava/lang/String; = null

.field private static final PREMIUM_PKG:Ljava/lang/String; = "premium_installed"

.field static final PROVIDER_NAME:Ljava/lang/String; = "com.tmobile.driving.settingsprovider"

.field private static final SMS_BODY:Ljava/lang/String; = "sms_body"

.field private static final SMS_DELIVERY_INTENT:Ljava/lang/String; = "delivery_intent"

.field private static final SMS_SENDTO:Ljava/lang/String; = "smsto"

.field private static final SMS_SENT_INTENT:Ljava/lang/String; = "sent_intent"

.field private static final SQL_TRUE:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final USE_EMERALD_SOLUTION:Z = false

.field static final WL_PHONE:Ljava/lang/String; = "phone_number"

.field static final WL_PHONE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final WL_PHONE_PREF:Ljava/lang/String; = "whitelist_phone"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v4, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x89

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/Utils;->DRIVING_MODE_SUPPORTED:Z

    .line 43
    const-string v0, "content://com.tmobile.driving.settingsprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/Utils;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.tmobile.driving.settingsprovider/whitelist_phone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/Utils;->WL_PHONE_CONTENT_URI:Landroid/net/Uri;

    .line 50
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isDoubleShotTMO()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/Utils;->USE_EMERALD_SOLUTION:Z

    .line 52
    const-string v0, "content://com.nuance.vsuite.dminterface"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/Utils;->DOT_CONTENT_URI:Landroid/net/Uri;

    .line 54
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "HFM_ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/Utils;->HFM_ENABLED_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    .line 15
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flagDrivingModeCall(Lcom/android/phone/BluetoothHandsfree;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "bt"
    .parameter "context"
    .parameter "number"

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, flag:Z
    const-string v5, "driving_enabled"

    invoke-static {p1, v5}, Lcom/android/phone/Utils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, drivingMode:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    .line 61
    .local v4, wiredHeadsetPlugged:Z
    if-eqz v0, :cond_3

    .line 62
    const-string v5, "handsfree_enabled"

    invoke-static {p1, v5}, Lcom/android/phone/Utils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 63
    .local v3, handsfreeNormal:Z
    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    :cond_1
    move v2, v1

    .line 68
    .end local v1           #flag:Z
    .end local v3           #handsfreeNormal:Z
    .local v2, flag:I
    :goto_0
    return v2

    .line 66
    .end local v2           #flag:I
    .restart local v1       #flag:Z
    .restart local v3       #handsfreeNormal:Z
    :cond_2
    invoke-static {p1, p2}, Lcom/android/phone/Utils;->isNumberWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    .end local v3           #handsfreeNormal:Z
    :cond_3
    :goto_1
    move v2, v1

    .line 68
    .restart local v2       #flag:I
    goto :goto_0

    .line 66
    .end local v2           #flag:I
    .restart local v3       #handsfreeNormal:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "preferenceName"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 100
    const/4 v7, 0x0

    .line 102
    .local v7, prefValue:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/Utils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, prefMode:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 106
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 108
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v8, :cond_2

    move v7, v8

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 109
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "preferenceName"

    .prologue
    const/4 v2, 0x0

    .line 121
    const/4 v7, 0x0

    .line 123
    .local v7, prefValue:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/Utils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, prefMode:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 125
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 129
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    return-object v7

    .line 134
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static final isHFMEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/Utils;->DOT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/phone/Utils;->HFM_ENABLED_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 157
    .local v7, hfmEnabled:Z
    if-eqz v6, :cond_1

    .line 159
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v7, 0x1

    .line 163
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_1
    return v7

    .line 163
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static isNumberWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 73
    const-string v4, "premium_installed"

    invoke-static {p0, v4}, Lcom/android/phone/Utils;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v7

    .line 96
    :goto_0
    return v3

    .line 76
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/Utils;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "whitelist_phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, wlUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "phone_number"

    aput-object v4, v2, v7

    .local v2, WL_ALL_PHONES:[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 82
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 85
    const/4 v3, -0x1

    :try_start_0
    invoke-interface {v6, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 86
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    const-string v3, "phone_number"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v3, v8

    goto :goto_0

    .line 91
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v3, v7

    .line 96
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method static sendCallerReplySms(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "address"

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 146
    .local v2, sentIntent:Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 147
    .local v0, deliveryIntent:Landroid/app/PendingIntent;
    const-string v3, "sent_intent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string v3, "delivery_intent"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
