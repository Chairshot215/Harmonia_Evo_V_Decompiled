.class public Lcom/google/android/gm/provider/LiveConversationHandler;
.super Lcom/google/android/gm/provider/ConversationHandler;
.source "LiveConversationHandler.java"


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V
    .locals 0
    .parameter "db"
    .parameter "mailCore"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/ConversationHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/MailCore;)V

    .line 17
    return-void
.end method

.method private getMessageLabelRecordsFromConversationTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "queryIdString"
    .parameter "conversationIdString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MessageLabelRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 197
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    .local v1, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MessageLabelRecord;>;"
    iget-object v6, p0, Lcom/google/android/gm/provider/LiveConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT   labelIds, \n  maxMessageId FROM   conversations WHERE   _id = ? AND queryId = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object p2, v8, v9

    aput-object p1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 210
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, labels:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 214
    .local v4, maxMessageId:J
    new-instance v0, Lcom/google/android/gm/provider/MessageLabelRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/google/android/gm/provider/MessageLabelRecord;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    .local v0, conversationLabel:Lcom/google/android/gm/provider/MessageLabelRecord;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v0           #conversationLabel:Lcom/google/android/gm/provider/MessageLabelRecord;
    .end local v3           #labels:Ljava/lang/String;
    .end local v4           #maxMessageId:J
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 220
    return-object v1

    .line 218
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private getMessageLabelRecordsFromLiveMessageTable(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "conversationIdString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MessageLabelRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 154
    const/4 v6, 0x0

    .line 157
    .local v6, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MessageLabelRecord;>;"
    iget-object v8, p0, Lcom/google/android/gm/provider/LiveConversationHandler;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT \n  messageId,\n  group_concat(labels_id, \',\'),\n  dateReceivedMs \nFROM\n  messages LEFT OUTER JOIN   message_labels ON messageId = message_messageId\nWHERE\n  synced = 0 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId"

    new-array v10, v10, [Ljava/lang/String;

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 171
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 173
    const/4 v8, 0x0

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 188
    :goto_0
    return-object v8

    .line 175
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 176
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 178
    .local v2, messageId:J
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, labels:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 181
    .local v4, dateMessageReceived:J
    new-instance v0, Lcom/google/android/gm/provider/MessageLabelRecord;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MessageLabelRecord;-><init>(Ljava/lang/String;JJ)V

    .line 183
    .local v0, conversationLabel:Lcom/google/android/gm/provider/MessageLabelRecord;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 186
    .end local v0           #conversationLabel:Lcom/google/android/gm/provider/MessageLabelRecord;
    .end local v1           #labels:Ljava/lang/String;
    .end local v2           #messageId:J
    .end local v4           #dateMessageReceived:J
    :catchall_0
    move-exception v8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v8, v6

    .line 188
    goto :goto_0
.end method


# virtual methods
.method protected onConversationChangedImpl(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;JLjava/util/Map;ZLandroid/util/TimingLogger;)Z
    .locals 36
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "queryIdString"
    .parameter
    .parameter "oldMaxMessageId"
    .parameter
    .parameter "messageLabelChange"
    .parameter "timings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/LabelRecord;",
            ">;Z",
            "Landroid/util/TimingLogger;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p5, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    .local p8, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/LabelRecord;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 44
    .local v13, conversationIdString:Ljava/lang/String;
    const-wide/high16 v32, -0x8000

    .line 45
    .local v32, oldConversationDate:J
    const/4 v11, 0x0

    .line 49
    .local v11, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/android/gm/provider/LabelRecord;

    .line 50
    .local v35, record:Lcom/google/android/gm/provider/LabelRecord;
    move-object/from16 v0, v35

    iget-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v32

    goto :goto_0

    .line 53
    .end local v35           #record:Lcom/google/android/gm/provider/LabelRecord;
    :cond_0
    const/16 v16, 0x0

    .line 54
    .local v16, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MessageLabelRecord;>;"
    if-eqz p9, :cond_1

    .line 59
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/gm/provider/LiveConversationHandler;->getMessageLabelRecordsFromLiveMessageTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 62
    :cond_1
    if-nez v16, :cond_2

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v13}, Lcom/google/android/gm/provider/LiveConversationHandler;->getMessageLabelRecordsFromConversationTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 80
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/LiveConversationHandler;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdSpam()J

    move-result-wide v24

    .line 81
    .local v24, labelIdSpam:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/LiveConversationHandler;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdTrash()J

    move-result-wide v27

    .line 83
    .local v27, labelIdTrash:J
    const-wide/high16 v9, -0x8000

    .line 84
    .local v9, maxMessageId:J
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v18           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gm/provider/MessageLabelRecord;

    .line 85
    .local v20, labelEntry:Lcom/google/android/gm/provider/MessageLabelRecord;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gm/provider/MessageLabelRecord;->getMessageId()J

    move-result-wide v9

    .line 87
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gm/provider/MessageLabelRecord;->getLabelIds()[Ljava/lang/String;

    move-result-object v29

    .line 89
    .local v29, labelIds:[Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .line 93
    .local v23, labelIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .line 94
    .local v14, conversationInTrash:Z
    const/4 v15, 0x0

    .line 95
    .local v15, conversationIsSpam:Z
    move-object/from16 v12, v29

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    aget-object v26, v12, v19

    .line 96
    .local v26, labelIdString:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 98
    .local v21, labelId:J
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    cmp-long v3, v24, v21

    if-nez v3, :cond_5

    .line 100
    const/4 v15, 0x1

    .line 95
    .end local v21           #labelId:J
    :cond_4
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 101
    .restart local v21       #labelId:J
    :cond_5
    cmp-long v3, v27, v21

    if-nez v3, :cond_4

    .line 102
    const/4 v14, 0x1

    goto :goto_2

    .line 108
    .end local v21           #labelId:J
    .end local v26           #labelIdString:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 110
    .local v21, labelId:Ljava/lang/Long;
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 111
    new-instance v30, Lcom/google/android/gm/provider/LabelRecord;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gm/provider/LabelRecord;-><init>()V

    .line 112
    .local v30, labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_4
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object/from16 v0, v30

    iput-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    .line 117
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/google/android/gm/provider/LabelRecord;

    .line 118
    .local v34, oldLabelRecord:Lcom/google/android/gm/provider/LabelRecord;
    if-eqz v34, :cond_8

    .line 119
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object/from16 v0, v30

    iput-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    .line 122
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gm/provider/MessageLabelRecord;->getDateReceived()Ljava/lang/Long;

    move-result-object v17

    .line 123
    .local v17, dateReceived:Ljava/lang/Long;
    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_5
    move-object/from16 v0, v30

    iput-wide v3, v0, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    .line 130
    if-nez v15, :cond_9

    if-eqz v14, :cond_b

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v24

    if-nez v3, :cond_a

    if-eqz v14, :cond_b

    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v27

    if-nez v3, :cond_7

    .line 133
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    goto :goto_3

    .line 114
    .end local v17           #dateReceived:Ljava/lang/Long;
    .end local v30           #labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    .end local v34           #oldLabelRecord:Lcom/google/android/gm/provider/LabelRecord;
    :cond_c
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/gm/provider/LabelRecord;

    .restart local v30       #labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    goto :goto_4

    .restart local v17       #dateReceived:Ljava/lang/Long;
    .restart local v34       #oldLabelRecord:Lcom/google/android/gm/provider/LabelRecord;
    :cond_d
    move-wide/from16 v3, v32

    .line 123
    goto :goto_5

    .end local v12           #arr$:[Ljava/lang/String;
    .end local v14           #conversationInTrash:Z
    .end local v15           #conversationIsSpam:Z
    .end local v17           #dateReceived:Ljava/lang/Long;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #labelEntry:Lcom/google/android/gm/provider/MessageLabelRecord;
    .end local v21           #labelId:Ljava/lang/Long;
    .end local v23           #labelIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v29           #labelIds:[Ljava/lang/String;
    .end local v30           #labelRecord:Lcom/google/android/gm/provider/LabelRecord;
    .end local v31           #len$:I
    .end local v34           #oldLabelRecord:Lcom/google/android/gm/provider/LabelRecord;
    :cond_e
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    .line 139
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gm/provider/LiveConversationHandler;->updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V

    .line 141
    const-string v3, "process labels"

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x0

    return v3
.end method
