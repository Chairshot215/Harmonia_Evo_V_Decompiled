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

.method public static setHeartbeatInterval(Landroid/content/ContentResolver;JJ)V
    .locals 6
    .parameter "contentResolver"
    .parameter "interval"
    .parameter "accountId"

    .prologue
    .line 1787
    const-string v1, "heartbeat_interval"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;JJ)V

    .line 1788
    return-void
.end method

.method public static setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 1
    .parameter "contentResolver"
    .parameter "jidResource"
    .parameter "accountId"

    .prologue
    .line 1795
    const-string v0, "jid_resource"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1796
    return-void
.end method

.method public static setUploadHeartbeatStat(Landroid/content/ContentResolver;ZJ)V
    .locals 1
    .parameter "contentResolver"
    .parameter "uploadStat"
    .parameter "accountId"

    .prologue
    .line 1775
    const-string v0, "upload_heartbeat_stat"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/TalkContract$AccountSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;ZJ)V

    .line 1777
    return-void
.end method
