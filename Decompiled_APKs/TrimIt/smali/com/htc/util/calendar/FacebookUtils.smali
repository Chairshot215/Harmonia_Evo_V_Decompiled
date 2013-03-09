.class public Lcom/htc/util/calendar/FacebookUtils;
.super Ljava/lang/Object;
.source "FacebookUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FacebookUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getRawContactId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 27
    const-wide/16 v8, -0x1

    .line 28
    .local v8, raw_contact_id:J
    const/4 v6, 0x0

    .line 30
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    const-string v3, "account_type=? AND sourceid=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto :goto_0

    .line 45
    :cond_0
    if-eqz v6, :cond_1

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    :goto_1
    return-wide v8

    .line 42
    :catch_0
    move-exception v7

    .line 43
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "FacebookUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRawContactId failed! uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-eqz v6, :cond_1

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 45
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 46
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static final getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "uid"

    .prologue
    .line 17
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 18
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 19
    .local v0, raw_contact_id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 20
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 23
    :cond_0
    return-object v2
.end method
