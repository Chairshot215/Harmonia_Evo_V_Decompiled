.class public Lcom/google/android/gm/provider/ConversationUtil;
.super Ljava/lang/Object;
.source "ConversationUtil.java"


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mMailCore:Lcom/google/android/gm/provider/MailCore;


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V
    .locals 0
    .parameter "db"
    .parameter "mailCore"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    iput-object p2, p0, Lcom/google/android/gm/provider/ConversationUtil;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    .line 28
    return-void
.end method

.method private onConversationChanged(JJLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V
    .locals 15
    .parameter "conversationId"
    .parameter "queryId"
    .parameter "rationale"
    .parameter "messageLabelChange"

    .prologue
    .line 100
    new-instance v11, Landroid/util/TimingLogger;

    const-string v1, "Gmail"

    const-string v2, "onConversationChanged"

    invoke-direct {v11, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v11, timings:Landroid/util/TimingLogger;
    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, conversationIdString:Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, queryIdString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p4}, Lcom/google/android/gm/provider/ConversationUtil;->fetchOldConversationLabels(JJ)Ljava/util/Map;

    move-result-object v6

    .line 108
    .local v6, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    const-string v1, "fetch old labels"

    invoke-virtual {v11, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 110
    const-wide/16 v7, 0x0

    .line 112
    .local v7, oldMaxMessageId:J
    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 116
    .local v13, oldConversationCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 120
    :cond_0
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 122
    const-string v1, "read old conversation"

    invoke-virtual {v11, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    const-string v3, "queryId = ? AND conversation_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    const-string v1, "delete old labels"

    invoke-virtual {v11, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 135
    .local v9, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    .line 137
    new-instance v0, Lcom/google/android/gm/provider/SyncedConversationHandler;

    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/ConversationUtil;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/SyncedConversationHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V

    .local v0, handler:Lcom/google/android/gm/provider/ConversationHandler;
    :goto_0
    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move-wide/from16 v4, p3

    move/from16 v10, p6

    .line 143
    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gm/provider/ConversationHandler;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;JLjava/util/Map;JLjava/util/Map;ZLandroid/util/TimingLogger;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    const-string v1, "Gmail"

    const-string v2, "updated tables for conversation %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    const-string v1, "finish"

    invoke-virtual {v11, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v11}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 151
    return-void

    .line 120
    .end local v0           #handler:Lcom/google/android/gm/provider/ConversationHandler;
    .end local v9           #conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    .end local v6           #oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .end local v7           #oldMaxMessageId:J
    .end local v12           #conversationIdString:Ljava/lang/String;
    .end local v13           #oldConversationCursor:Landroid/database/Cursor;
    .end local v14           #queryIdString:Ljava/lang/String;
    :catchall_1
    move-exception v1

    const-string v2, "Gmail"

    const-string v3, "updated tables for conversation %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    const-string v2, "finish"

    invoke-virtual {v11, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v11}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v1

    .line 140
    .restart local v6       #oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .restart local v7       #oldMaxMessageId:J
    .restart local v9       #conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .restart local v12       #conversationIdString:Ljava/lang/String;
    .restart local v13       #oldConversationCursor:Landroid/database/Cursor;
    .restart local v14       #queryIdString:Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v0, Lcom/google/android/gm/provider/LiveConversationHandler;

    iget-object v1, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/ConversationUtil;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/LiveConversationHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0       #handler:Lcom/google/android/gm/provider/ConversationHandler;
    goto :goto_0
.end method


# virtual methods
.method public fetchOldConversationLabels(JJ)Ljava/util/Map;
    .locals 12
    .parameter "conversationId"
    .parameter "queryId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 161
    .local v10, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversation_labels AS cl JOIN labels AS l ON cl.labels_id = l._id"

    const/4 v6, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "labels_id"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "isZombie"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "sortMessageId"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "date"

    aput-object v7, v2, v6

    const-string v3, "queryId = ? AND conversation_id = ? AND canonicalName NOT LIKE \'^^unseen-%\'"

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 169
    .local v11, oldLabelsCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 171
    .local v8, labelId:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 172
    .local v5, isZombie:Z
    :goto_1
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 173
    .local v1, sortMessageId:J
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 174
    .local v3, date:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v0, Lcom/google/android/gm/provider/LabelRecord;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/LabelRecord;-><init>(JJZ)V

    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    .end local v1           #sortMessageId:J
    .end local v3           #date:J
    .end local v5           #isZombie:Z
    .end local v8           #labelId:J
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 171
    .restart local v8       #labelId:J
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 177
    .end local v8           #labelId:J
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 179
    return-object v10
.end method

.method onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 6
    .parameter "conversationId"
    .parameter "rationale"

    .prologue
    const/4 v4, 0x0

    .line 39
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/ConversationUtil;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 41
    return-void
.end method

.method onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    .locals 11
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "updateSynced"
    .parameter "messageLabelChange"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "updateConversationTables: conversationId %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/provider/ConversationUtil;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversation_labels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "queryId"

    aput-object v6, v2, v5

    const-string v3, "conversation_id = ?"

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "queryId"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    .local v8, conversationQueryCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 67
    .local v10, queryIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 69
    .local v3, queryId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    .end local v3           #queryId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 75
    if-eqz p4, :cond_2

    .line 78
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .restart local v3       #queryId:J
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move/from16 v6, p5

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/ConversationUtil;->onConversationChanged(JJLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    goto :goto_1

    .line 84
    .end local v3           #queryId:J
    :cond_3
    return-void
.end method
