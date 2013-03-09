.class public Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;
.super Ljava/lang/Object;
.source "ChatMessageSentCallback.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sUris:[Landroid/net/Uri;

.field private static final sValues:Landroid/content/ContentValues;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v4, [Landroid/net/Uri;

    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sUris:[Landroid/net/Uri;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "consolidation_key"

    aput-object v1, v0, v3

    const-string v1, "send_status"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->PROJECTION:[Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 48
    sget-object v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 49
    sget-object v0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sValues:Landroid/content/ContentValues;

    const-string v1, "send_status"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mContentResolver:Landroid/content/ContentResolver;

    .line 51
    return-void
.end method

.method private onMessageSentInternal(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
    .locals 12
    .parameter "entry"

    .prologue
    .line 63
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 64
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;->getPacketId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 66
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sUris:[Landroid/net/Uri;

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 68
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sUris:[Landroid/net/Uri;

    aget-object v1, v2, v10

    .line 69
    .local v1, u:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sValues:Landroid/content/ContentValues;

    const-string v3, "packet_id=?"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 71
    .local v8, changes:I
    if-lez v8, :cond_6

    .line 72
    const/4 v2, 0x1

    if-eq v8, v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected 0 or 1, not "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->PROJECTION:[Ljava/lang/String;

    const-string v3, "packet_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 118
    .end local v1           #u:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #changes:I
    :cond_1
    :goto_1
    return-void

    .line 82
    .restart local v1       #u:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v8       #changes:I
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 83
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, consolidationKey:Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 87
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->PROJECTION:[Ljava/lang/String;

    const-string v3, "consolidation_key=? and send_status=0"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 93
    .local v7, c1:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    const/4 v6, 0x0

    goto :goto_1

    .line 99
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 100
    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 101
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->sValues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 102
    .local v11, updateCount:I
    const/4 v2, 0x1

    if-eq v11, v2, :cond_4

    .line 103
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marking consolidation row "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " as sent >>> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (should be 1)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v11           #updateCount:I
    :cond_4
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    const/4 v7, 0x0

    .line 113
    .end local v7           #c1:Landroid/database/Cursor;
    .end local v9           #consolidationKey:Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    const/4 v6, 0x0

    .line 67
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #c1:Landroid/database/Cursor;
    .restart local v9       #consolidationKey:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 109
    const/4 v7, 0x0

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    .end local v7           #c1:Landroid/database/Cursor;
    .end local v9           #consolidationKey:Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 114
    const/4 v6, 0x0

    throw v2
.end method


# virtual methods
.method public onMessageSent(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->onMessageSentInternal(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyActiveChatSessionsOfChange(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    .line 123
    return-void
.end method

.method public onMessagesSent(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;

    .line 127
    .local v0, entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->onMessageSentInternal(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V

    goto :goto_0

    .line 131
    .end local v0           #entry:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ChatMessageSentCallback;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->notifyActiveChatSessionsOfChanges(Ljava/util/ArrayList;)V

    .line 132
    return-void
.end method
