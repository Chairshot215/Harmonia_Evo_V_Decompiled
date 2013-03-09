.class public Lcom/google/android/gsf/TalkContract$AccountSettings;
.super Ljava/lang/Object;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1305
    const-string v0, "content://com.google.android.providers.talk/accountSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    return-void
.end method

.method static synthetic access$000(J)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1298
    invoke-static {p0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static final getContentUriByAccountId(J)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1427
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1428
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1429
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static getSettingValue(Z)I
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1748
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static isEnabled(J)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 1736
    const-wide/16 v0, 0x3

    and-long/2addr v0, p0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1459
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1461
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1465
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1466
    return-void
.end method

.method public static putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1441
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1443
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1445
    const-string v1, "account_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1447
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1448
    return-void
.end method

.method public static putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .parameter "accountId"

    .prologue
    .line 1477
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1479
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v1, "account_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1483
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1484
    return-void
.end method

.method public static setAudioChatEnabled(Landroid/content/ContentResolver;ZJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "accountId"

    .prologue
    .line 1656
    const-string v1, "audiochatv2"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getSettingValue(Z)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1658
    return-void
.end method

.method public static setCameraEnabled(Landroid/content/ContentResolver;ZJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "accountId"

    .prologue
    .line 1724
    const-string v1, "show_camera"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getSettingValue(Z)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1726
    return-void
.end method

.method public static setNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1576
    const-string v0, "text-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1578
    return-void
.end method

.method public static setNotifyFriendInvitation(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notify"
    .parameter "accountId"

    .prologue
    .line 1764
    const-string v0, "notify_invite"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1765
    return-void
.end method

.method public static setShowAwayOnIdle(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showAway"
    .parameter "accountId"

    .prologue
    .line 1759
    const-string v0, "show_away_on_idle"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1760
    return-void
.end method

.method public static setShowMobileIndicator(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "showMobileIndicator"
    .parameter "accountId"

    .prologue
    .line 1622
    const-string v0, "mobile_indicator"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1624
    return-void
.end method

.method public static setTextRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1600
    const-string v0, "ringtone"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1601
    return-void
.end method

.method public static setTextVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1531
    const-string v0, "vibrate-when"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1532
    return-void
.end method

.method public static setVideoChatEnabled(Landroid/content/ContentResolver;ZJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "enabled"
    .parameter "accountId"

    .prologue
    .line 1690
    const-string v1, "videochatv2"

    invoke-static {p1}, Lcom/google/android/gsf/TalkContract$AccountSettings;->getSettingValue(Z)I

    move-result v0

    int-to-long v2, v0

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1692
    return-void
.end method

.method public static setVideoImageStabilization(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "imageStabilization"
    .parameter "accountId"

    .prologue
    .line 1564
    const-string v0, "video-image-stabilization"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1566
    return-void
.end method

.method public static setVideoNotificationType(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "notificationType"
    .parameter "accountId"

    .prologue
    .line 1588
    const-string v0, "video-notif-type"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1590
    return-void
.end method

.method public static setVideoRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "ringtoneUri"
    .parameter "accountId"

    .prologue
    .line 1611
    const-string v0, "ringtone-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1612
    return-void
.end method

.method public static setVideoVibrateWhen(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "when"
    .parameter "accountId"

    .prologue
    .line 1553
    const-string v0, "vibrate-when-video"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1554
    return-void
.end method
