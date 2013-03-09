.class public Lcom/htc/util/settings/NotificationFlashLightUtility;
.super Ljava/lang/Object;
.source "NotificationFlashLightUtility.java"


# static fields
.field private static mbAlarm:Z

.field private static mbEmail:Z

.field private static mbIncomingCall:Z

.field private static mbMissCall:Z

.field private static mbReminder:Z

.field private static mbSms:Z

.field private static mbVoiceMail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 33
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 34
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 35
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 36
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 37
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 38
    sput-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarm(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    const-string v0, "NotificationFlashLightUtility getAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbAlarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    return v0

    .line 106
    :cond_0
    const-string v0, "NotificationFlashLightUtility getAlarm"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAllData(Landroid/content/Context;)[Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 183
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 184
    const-string v1, "NotificationFlashLightUtility getAllData"

    const-string v2, "load success~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    const/4 v1, 0x7

    new-array v0, v1, [Z

    const/4 v1, 0x0

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    aput-boolean v2, v0, v1

    sget-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    aput-boolean v2, v0, v1

    .line 190
    .local v0, result:[Z
    return-object v0

    .line 186
    .end local v0           #result:[Z
    :cond_0
    const-string v1, "NotificationFlashLightUtility getAllData"

    const-string v2, "load fail~~~~~~~~~~"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmail(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    const-string v0, "NotificationFlashLightUtility getEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    return v0

    .line 76
    :cond_0
    const-string v0, "NotificationFlashLightUtility getEmail"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIncomingCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    const-string v0, "NotificationFlashLightUtility getIncomingCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbIncomingCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    return v0

    .line 46
    :cond_0
    const-string v0, "NotificationFlashLightUtility getIncomingCall"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMissCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const-string v0, "NotificationFlashLightUtility getMissCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbMissCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    return v0

    .line 56
    :cond_0
    const-string v0, "NotificationFlashLightUtility getMissCall"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getReminder(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "NotificationFlashLightUtility getReminder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbReminder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    return v0

    .line 96
    :cond_0
    const-string v0, "NotificationFlashLightUtility getReminder"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSms(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "NotificationFlashLightUtility getSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbSms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    return v0

    .line 66
    :cond_0
    const-string v0, "NotificationFlashLightUtility getSms"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceMail(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->loadSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    const-string v0, "NotificationFlashLightUtility getVoiceMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load success mbVoiceMail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    sget-boolean v0, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    return v0

    .line 86
    :cond_0
    const-string v0, "NotificationFlashLightUtility getVoiceMail"

    const-string v1, "load fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadSetting(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "nfl"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_8

    .line 208
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 209
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v7

    :goto_0
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 210
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_2

    move v1, v7

    :goto_1
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 211
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_3

    move v1, v7

    :goto_2
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 212
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    move v1, v7

    :goto_3
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 213
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_5

    move v1, v7

    :goto_4
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 214
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_6

    move v1, v7

    :goto_5
    sput-boolean v1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 215
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    move v8, v7

    :cond_0
    sput-boolean v8, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :goto_6
    return v7

    :cond_1
    move v1, v8

    .line 209
    goto :goto_0

    :cond_2
    move v1, v8

    .line 210
    goto :goto_1

    :cond_3
    move v1, v8

    .line 211
    goto :goto_2

    :cond_4
    move v1, v8

    .line 212
    goto :goto_3

    :cond_5
    move v1, v8

    .line 213
    goto :goto_4

    :cond_6
    move v1, v8

    .line 214
    goto :goto_5

    .line 220
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v7, v8

    .line 223
    goto :goto_6
.end method

.method private static saveSetting(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "nfl"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 246
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->incoming_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 247
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->miss_call:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->sms:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->email:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->voice_mail:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->reminder:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 252
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->alarm:Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/NotificationFlashLightConsts$COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 255
    :try_start_1
    sget-object v3, Lcom/htc/consts/NotificationFlashLightConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "nfl"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 240
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "saveSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete fail~~~~~~~~~~~~~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 258
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 259
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v3, "saveSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert fail~~~~~~~~~~~~~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setAlarm(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bAlarm"

    .prologue
    .line 173
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbAlarm:Z

    .line 175
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    const-string v0, "NotificationFlashLightUtility setAlarm"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string v0, "NotificationFlashLightUtility setAlarm"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setEmail(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bEmail"

    .prologue
    .line 143
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbEmail:Z

    .line 145
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    const-string v0, "NotificationFlashLightUtility setEmail"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "NotificationFlashLightUtility setEmail"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setIncomingCall(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bIncomingCall"

    .prologue
    .line 113
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbIncomingCall:Z

    .line 115
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    const-string v0, "NotificationFlashLightUtility setIncomingCall"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "NotificationFlashLightUtility setIncomingCall"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMissCall(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bMissCall"

    .prologue
    .line 123
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbMissCall:Z

    .line 125
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    const-string v0, "NotificationFlashLightUtility setMissCall"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "NotificationFlashLightUtility setMissCall"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setReminder(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bReminder"

    .prologue
    .line 163
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbReminder:Z

    .line 165
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    const-string v0, "NotificationFlashLightUtility setReminder"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "NotificationFlashLightUtility setReminder"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSms(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bSms"

    .prologue
    .line 133
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbSms:Z

    .line 135
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    const-string v0, "NotificationFlashLightUtility setSms"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v0, "NotificationFlashLightUtility setSms"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setVoiceMail(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bVoiceMail"

    .prologue
    .line 153
    sput-boolean p1, Lcom/htc/util/settings/NotificationFlashLightUtility;->mbVoiceMail:Z

    .line 155
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->saveSetting(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    const-string v0, "NotificationFlashLightUtility setVoiceMail"

    const-string v1, "save success~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "NotificationFlashLightUtility setVoiceMail"

    const-string v1, "save fail~~~~~~~~~~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
