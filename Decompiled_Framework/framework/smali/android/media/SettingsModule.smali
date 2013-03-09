.class public Landroid/media/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# static fields
.field private static final KEY_ALARM:Ljava/lang/String; = "alarm"

.field private static final KEY_APPLICATION_SETTINGS:Ljava/lang/String; = "application_Settings"

.field private static final KEY_CALENDAR_NOTIFICATION:Ljava/lang/String; = "calendar_notification"

.field private static final KEY_DEFAULT_ALARM:Ljava/lang/String; = "default_alarm"

.field private static final KEY_DEFAULT_CALENDAR_NOTIFICATION:Ljava/lang/String; = "default_calendar_notification"

.field private static final KEY_DEFAULT_MSG_NOTIFICATION:Ljava/lang/String; = "default_msg_notification"

.field private static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "default_notification"

.field private static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "default_ringtone"

.field private static final KEY_EXTRA_ALARMS:Ljava/lang/String; = "extra_alarms"

.field private static final KEY_EXTRA_NOTIFICATIONS:Ljava/lang/String; = "extra_notifications"

.field private static final KEY_EXTRA_RESOURCE_PATH:Ljava/lang/String; = "extra_resource_path"

.field private static final KEY_EXTRA_RINGTONES:Ljava/lang/String; = "extra_ringtones"

.field private static final KEY_MSG_NOTIFICATION:Ljava/lang/String; = "msg_notification"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final KEY_PATH:Ljava/lang/String; = "path"

.field private static final KEY_PLENTY_SET:Ljava/lang/String; = "plenty_set"

.field private static final KEY_RESOURCE_PATH:Ljava/lang/String; = "resource_path"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final TAG:Ljava/lang/String; = "SettingsModule"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mAlarms:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mExtraResourcePath:Ljava/lang/String;

.field private mNotfications:Landroid/os/Bundle;

.field private mResourcePath:Ljava/lang/String;

.field private mRingtones:Landroid/os/Bundle;

.field private mSettings:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/SettingsModule;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SettingsModule;->mRingtones:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SettingsModule;->mNotfications:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SettingsModule;->mAlarms:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/SettingsModule;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static getExtraResourcePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/media/SettingsModule;->getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_resource_path"

    const-string/jumbo v2, "path"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-static {v8}, Landroid/media/SettingsModule;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    goto :goto_0
.end method

.method public static getResourcePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/media/SettingsModule;->getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "resource_path"

    const-string/jumbo v2, "path"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getSettingsModule()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/SettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/SettingsModule;->getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/media/SettingsModule;->mSettings:Landroid/os/Bundle;

    return-object v0
.end method

.method private static getSettingsModule(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "application_Settings"

    invoke-static {v0, p0}, Landroid/media/SettingsModule;->getModule(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public fileExits(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/media/SettingsModule;->getResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/media/SettingsModule;->getExtraResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "plenty_set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/SettingsModule;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "SettingsModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cust_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Set : FileName> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/SettingsModule;->getExtraResourcePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "SettingsModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cust_Extra"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :FileName> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public getDefaultAlarm()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_alarm"

    const-string v2, "alarm"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCalendarNotification()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_calendar_notification"

    const-string v2, "calendar_notification"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMsgNotification()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_msg_notification"

    const-string/jumbo v2, "msg_notification"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNotification()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_notification"

    const-string/jumbo v2, "notification"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRingtone()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_ringtone"

    const-string/jumbo v2, "ringtone"

    invoke-static {v0, v1, v2}, Landroid/media/SettingsModule;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraResourcePath()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/SettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/SettingsModule;->getExtraResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    iput-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    iget-object v2, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SettingsModule;->mExtraResourcePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/SettingsModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/SettingsModule;->getResourcePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/"

    iput-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    iget-object v2, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SettingsModule;->mResourcePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAlarm(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/media/SettingsModule;->mAlarms:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_alarms"

    invoke-static {v0, v1}, Landroid/media/SettingsModule;->getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SettingsModule;->mAlarms:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/media/SettingsModule;->mAlarms:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/SettingsModule;->mAlarms:Landroid/os/Bundle;

    const-string v1, "alarm"

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/SettingsModule;->fileExits(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isNotification(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/media/SettingsModule;->mNotfications:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_notifications"

    invoke-static {v0, v1}, Landroid/media/SettingsModule;->getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SettingsModule;->mNotfications:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/media/SettingsModule;->mNotfications:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/SettingsModule;->mNotfications:Landroid/os/Bundle;

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/SettingsModule;->fileExits(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRingtone(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Landroid/media/SettingsModule;->mRingtones:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/SettingsModule;->getSettingsModule()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_ringtones"

    invoke-static {v0, v1}, Landroid/media/SettingsModule;->getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SettingsModule;->mRingtones:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/media/SettingsModule;->mRingtones:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/media/SettingsModule;->mRingtones:Landroid/os/Bundle;

    const-string/jumbo v1, "ringtone"

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/SettingsModule;->fileExits(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
