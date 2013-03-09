.class public Lcom/htc/android/worldclock/SettingsReader;
.super Ljava/lang/Object;
.source "SettingsReader.java"


# static fields
.field private static final CATEGORY_MODULE:Ljava/lang/String; = "application_Calendar"

.field private static final FUNCTION:Ljava/lang/String; = "view"

.field private static final ITEM_NAME:Ljava/lang/String; = "start_weekday"

.field private static final SET:Ljava/lang/String; = "plenty_set1"

.field private static final URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mStartWeekDay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cr"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/worldclock/SettingsReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    const-string v0, "1"

    iput-object v0, p0, Lcom/htc/android/worldclock/SettingsReader;->mStartWeekDay:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 22
    iput-object p1, p0, Lcom/htc/android/worldclock/SettingsReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    invoke-direct {p0}, Lcom/htc/android/worldclock/SettingsReader;->fromContent()V

    .line 24
    return-void
.end method

.method public static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 103
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 108
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private fromContent()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/SettingsReader;->queryUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query database fail, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryUrl()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 43
    iget-object v0, p0, Lcom/htc/android/worldclock/SettingsReader;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://customization_settings/SettingTable/application_Calendar"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 45
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 48
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 97
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 54
    const-string v2, "cursor size is 0"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 55
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    const/4 v8, 0x0

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 62
    :cond_2
    :try_start_1
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 63
    .local v10, idValue:I
    const/4 v2, -0x1

    if-ne v2, v10, :cond_4

    .line 64
    const-string v2, "no customized data support"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 65
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_3
    const/4 v8, 0x0

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    :cond_4
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 73
    .local v6, buffer:[B
    invoke-static {v6}, Lcom/htc/android/worldclock/SettingsReader;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v7

    .line 74
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 75
    const-string v11, "view"

    .line 76
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 77
    .local v9, configBundle:Landroid/os/Bundle;
    if-eqz v9, :cond_5

    .line 78
    const-string v11, "plenty_set1"

    .line 79
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 80
    if-eqz v9, :cond_5

    .line 82
    const-string v11, "start_weekday"

    .line 83
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 84
    .local v12, value:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 86
    if-eqz v12, :cond_5

    .line 87
    iput-object v12, p0, Lcom/htc/android/worldclock/SettingsReader;->mStartWeekDay:Ljava/lang/String;

    .line 93
    .end local v9           #configBundle:Landroid/os/Bundle;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query done, mStartWeekDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/worldclock/SettingsReader;->mStartWeekDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6           #buffer:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #idValue:I
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public getStartWeekDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 28
    iget-object v0, p0, Lcom/htc/android/worldclock/SettingsReader;->mStartWeekDay:Ljava/lang/String;

    return-object v0
.end method
