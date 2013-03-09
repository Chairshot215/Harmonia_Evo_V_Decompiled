.class public abstract Lcom/android/mms/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/Recycler$MmsRecycler;,
        Lcom/android/mms/util/Recycler$SmsRecycler;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_DELETE:Z = false

.field private static final LOCAL_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Recycler"

.field private static final lock:Ljava/lang/Object;

.field private static sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

.field private static sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/mms/util/Recycler;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static checkForThreadsOverLimit(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    .line 77
    .local v1, smsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    .line 79
    .local v0, mmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$MmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$MmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    return-object v0
.end method

.method public static getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$SmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    .line 65
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract anyThreadOverLimit(Landroid/content/Context;)Z
.end method

.method protected abstract deleteMessagesForContact(Landroid/content/Context;JI)V
.end method

.method protected abstract deleteMessagesForThread(Landroid/content/Context;JI)V
.end method

.method public deleteOldMessages(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 84
    const-string v4, "Recycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recycler.deleteOldMessages this: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v1

    .line 93
    .local v1, limit:I
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/mms/util/Recycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 95
    .local v2, threadId:J
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    .end local v2           #threadId:J
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public deleteOldMessagesByContactId(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 124
    const-string v0, "Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycler.deleteOldMessagesByContactId this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/Recycler;->deleteMessagesForContact(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 104
    const-string v2, "Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recycler.deleteOldMessagesByThreadId this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/util/Recycler;->getContactIdFromThreadId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 114
    .local v0, contactId:J
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/mms/util/Recycler;->deleteMessagesForContact(Landroid/content/Context;JI)V

    goto :goto_0

    .line 117
    .end local v0           #contactId:J
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method protected abstract dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
.end method

.method protected abstract getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public getContactIdFromThreadId(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 142
    const-string v0, "Recycler"

    const-string v1, "getContactIdFromThreadId"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "content://mms-sms-v2/get-contactID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 146
    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 149
    .local v7, id:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 150
    return-wide v7
.end method

.method public abstract getMessageLimit(Landroid/content/Context;)I
.end method

.method public abstract getMessageMaxLimit()I
.end method

.method public abstract getMessageMinLimit()I
.end method

.method protected abstract getThreadId(Landroid/database/Cursor;)J
.end method

.method public abstract setMessageLimit(Landroid/content/Context;I)V
.end method
