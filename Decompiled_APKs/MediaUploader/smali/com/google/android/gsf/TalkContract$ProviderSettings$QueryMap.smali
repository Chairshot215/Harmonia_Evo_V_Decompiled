.class public Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$ProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1685
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "value"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1691
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1692
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1931
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1957
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1958
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1970
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1971
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1944
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1945
    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public getAutomaticallyConnectToGTalkServer()Z
    .locals 2

    .prologue
    .line 1709
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableNotification()Z
    .locals 2

    .prologue
    .line 1748
    const-string v0, "enable_notification"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHeartbeatInterval()J
    .locals 3

    .prologue
    .line 1902
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .locals 2

    .prologue
    .line 1729
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1919
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyFriendInvitation()Z
    .locals 2

    .prologue
    .line 1865
    const-string v0, "notify_invite"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRingtoneURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1809
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 2

    .prologue
    .line 1846
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator()Z
    .locals 2

    .prologue
    .line 1827
    const-string v0, "mobile_indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUploadHeartbeatStat()Z
    .locals 2

    .prologue
    .line 1883
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrate()Z
    .locals 2

    .prologue
    .line 1767
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateWhen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1786
    const-string v0, "vibrate-when"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    if-eqz v0, :cond_0

    .line 1790
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getVibrate()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "always"

    goto :goto_0

    :cond_1
    const-string v0, "never"

    goto :goto_0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;Z)V

    .line 1702
    return-void
.end method

.method public setEnableNotification(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setEnableNotification(Landroid/content/ContentResolver;Z)V

    .line 1740
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 1
    .parameter

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;J)V

    .line 1894
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;Z)V

    .line 1721
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1912
    return-void
.end method

.method public setNotifyFriendInvitation(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setNotifyFriendInvitation(Landroid/content/ContentResolver;Z)V

    .line 1857
    return-void
.end method

.method public setRingtoneURI(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1801
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;Z)V

    .line 1838
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;Z)V

    .line 1819
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;Z)V

    .line 1875
    return-void
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setVibrate(Landroid/content/ContentResolver;Z)V

    .line 1759
    return-void
.end method

.method public setVibrateWhen(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1777
    return-void
.end method
