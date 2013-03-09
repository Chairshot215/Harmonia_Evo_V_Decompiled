.class Lcom/google/android/gm/provider/MailStoreInitializer;
.super Lcom/google/android/gm/provider/DatabaseInitializer;
.source "MailStoreInitializer.java"


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "engine"
    .parameter "db"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/DatabaseInitializer;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    return-void
.end method

.method public static moveSyncSettingsToInternalDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"
    .parameter "internalDb"

    .prologue
    const/4 v12, 0x0

    .line 526
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v10, v10

    new-array v9, v10, [Landroid/content/ContentValues;

    .line 528
    .local v9, values:[Landroid/content/ContentValues;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v7, sb:Ljava/lang/StringBuilder;
    const-string v10, "select "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_1

    .line 531
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    aget-object v1, v10, v4

    .line 532
    .local v1, column:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_0
    const-string v10, "(select value from sync_settings where name =\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v10, "\') as "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    aput-object v10, v9, v4

    .line 539
    aget-object v10, v9, v4

    const-string v11, "name"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 542
    .end local v1           #column:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 543
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 544
    const/4 v4, 0x0

    :goto_1
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 545
    aget-object v10, v9, v4

    const-string v11, "value"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 547
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 549
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 552
    :try_start_0
    const-string v10, "internal_sync_settings"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    move-object v0, v9

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v8, v0, v5

    .line 556
    .local v8, v:Landroid/content/ContentValues;
    const-string v10, "internal_sync_settings"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 555
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 558
    .end local v8           #v:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v3, deleteSb:Ljava/lang/StringBuilder;
    const-string v10, "delete from sync_settings where "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const/4 v4, 0x0

    :goto_3
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_5

    .line 566
    sget-object v10, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    aget-object v1, v10, v4

    .line 567
    .restart local v1       #column:Ljava/lang/String;
    const-string v10, " name =\'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v10, "\'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const/4 v10, 0x3

    if-eq v4, v10, :cond_4

    const-string v10, " OR "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 560
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v1           #column:Ljava/lang/String;
    .end local v3           #deleteSb:Ljava/lang/StringBuilder;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_0
    move-exception v10

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 573
    .restart local v0       #arr$:[Landroid/content/ContentValues;
    .restart local v3       #deleteSb:Ljava/lang/StringBuilder;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 574
    return-void
.end method


# virtual methods
.method public bootstrapDatabase()V
    .locals 5

    .prologue
    .line 45
    const-string v0, "Gmail"

    const-string v1, "Bootstrapping db: %s Current version is %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS engine_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE engine_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages (_id INTEGER PRIMARY KEY,messageId INTEGER,conversation INTEGER,fromAddress TEXT,toAddresses TEXT,ccAddresses TEXT,bccAddresses TEXT,replyToAddresses TEXT,dateSentMs INTEGER,dateReceivedMs INTEGER,subject TEXT,snippet TEXT,listInfo TEXT,personalLevel INTEGER,body TEXT,bodyEmbedsExternalResources INTEGER,joinedAttachmentInfos STRING,synced INTEGER,error TEXT, clientCreated INTEGER, refMessageId INTEGER DEFAULT 0, forward INTEGER DEFAULT 0, includeQuotedText INTEGER DEFAULT 0, quoteStartPos INTEGER DEFAULT 0, bodyCompressed BLOB DEFAULT NULL, customFromAddress TEXT DEFAULT NULL, queryId INTEGER DEFAULT 1, UNIQUE(messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, priority INTEGER DEFAULT 0, mimeType TEXT DEFAULT NULL, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE labels ( _id INTEGER PRIMARY KEY, canonicalName TEXT, name TEXT, numConversations TEXT, numUnreadConversations TEXT, color INTEGER DEFAULT 2147483647, systemLabel INTEGER DEFAULT 0, systemLabelOrder INTEGER DEFAULT 0, hidden INTEGER DEFAULT 0, labelCountDisplayBehavior INTEGER DEFAULT 0, labelSyncPolicy INTEGER DEFAULT 0, visibility TEXT, lastTouched INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_index ON labels (_id, canonicalName, numConversations, numUnreadConversations)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE message_labels (_id INTEGER PRIMARY KEY,labels_id INTEGER not null,message_messageId INTEGER not null,message_conversation INTEGER,UNIQUE (labels_id, message_messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_index ON message_labels (labels_id, message_messageId, message_conversation)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_conversation ON message_labels (message_conversation, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS operations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE operations (_id INTEGER PRIMARY KEY AUTOINCREMENT,action TEXT,message_messageId INTEGER,value1 INTEGER,value2 INTEGER, numAttempts INTEGER DEFAULT 0, nextTimeToAttempt INTEGER DEFAULT 0, delay INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX operations_messageid_action_index ON operations (message_messageId, action)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations_to_fetch (_id INTEGER PRIMARY KEY, nextAttemptDateMs INTEGER DEFAULT 0, numAttempts INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversation_labels;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversation_labels (  labels_id TEXT,   queryId INTEGER,   isZombie INTEGER,   sortMessageId INTEGER,   date INTEGER,   conversation_id INTEGER,   UNIQUE(labels_id, queryId, conversation_id));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversation_labels_index ON conversation_labels (labels_id, sortMessageId, queryId, isZombie, date, conversation_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_conversationIndex ON conversation_labels (conversation_id, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_queryId ON conversation_labels (queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations (_id INTEGER, queryId INTEGER, subject TEXT, snippet TEXT, fromAddress TEXT, personalLevel INTEGER, labelIds TEXT, numMessages INTEGER, maxMessageId INTEGER, hasAttachments INTEGER, hasMessagesWithErrors INTEGER, syncRationale STRING, syncRationaleMessageId INTEGER, forceAllUnread INTEGER, dirty INTEGER DEFAULT 0, UNIQUE(_id, queryId));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_syncRationale on conversations (syncRationale, syncRationaleMessageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_name on labels (canonicalName);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_id on labels (_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_message_messageId_labels_id on message_labels (message_messageId, labels_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_messageId on messages (messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_queryId on messages (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_conversation on messages (conversation, messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_messageId_queryId on messages (messageId, queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_conversation_queryId on messages (conversation, queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->createSearchIndexTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 295
    return-void
.end method

.method getTargetDbVersion(I)I
    .locals 2
    .parameter "currentDbVersion"

    .prologue
    const/16 v0, 0x64

    .line 32
    const/16 v1, 0x34

    if-lt p1, v1, :cond_0

    if-ge p1, v0, :cond_0

    .line 37
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public upgradeDbTo100()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabel INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabel = 1 WHERE substr(canonicalName, 1, 1) = \'^\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabelOrder INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 1 WHERE canonicalName = \'^i\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN hidden INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET hidden = 1 WHERE substr(canonicalName, 1, 1) = \'^\' AND canonicalName NOT IN (\'^i\', \'^t\', \'^b\', \'^f\', \'^^out\', \'^r\', \'^all\', \'^s\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public upgradeDbTo101()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelCountDisplayBehavior INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 1 WHERE canonicalName IN (\'^^out\', \'^r\', \'^s\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName IN (\'^f\', \'^t\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public upgradeDbTo102()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelSyncPolicy INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 1 WHERE canonicalName IN (\'^^out\', \'^r\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 2 WHERE canonicalName IN (\'^s\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 3 WHERE canonicalName IN (\'^i\', \'^f\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public upgradeDbTo103()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailStoreInitializer;->moveSyncSettingsToInternalDb(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 520
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->sendUpgradeSyncWindowIntent()V

    .line 521
    return-void
.end method

.method public upgradeDbTo104()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 582
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public upgradeDbTo105()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 597
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public upgradeDbTo106()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 611
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public upgradeDbTo107()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 623
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN visibility TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public upgradeDbTo108()V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 631
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public upgradeDbTo109()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN priority INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public upgradeDbTo110()V
    .locals 5

    .prologue
    .line 661
    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x35

    if-lt v0, v1, :cond_0

    .line 663
    const-string v0, "Gmail"

    const-string v1, "skipping v110 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN nextAttemptDateMs INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public upgradeDbTo111()V
    .locals 5

    .prologue
    .line 677
    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x36

    if-lt v0, v1, :cond_0

    .line 679
    const-string v0, "Gmail"

    const-string v1, "skipping v111 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN customFromAddress TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public upgradeDbTo112()V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 693
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^iim\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 11 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public upgradeDbTo113()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method public upgradeDbTo114()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setValidateSyncSets(Z)V

    .line 723
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 724
    return-void
.end method

.method public upgradeDbTo115()V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public upgradeDbTo116()V
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public upgradeDbTo117()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN mimeType TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public upgradeDbTo118()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 0 WHERE canonicalName = \'^i\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public upgradeDbTo119()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN queryId INTEGER DEFAULT 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE messages SET queryId = 0 WHERE synced = 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM messages where synced = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_queryId on messages (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP INDEX IF EXISTS messages_synced;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public upgradeDbTo120()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailIndexerService;->createSearchIndexTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 775
    return-void
.end method

.method public upgradeDbTo121()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN lastTouched INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public upgradeDbTo122()V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 787
    return-void
.end method

.method public upgradeDbTo123()V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_messageId_queryId on messages (messageId, queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public upgradeDbTo124()V
    .locals 5

    .prologue
    .line 797
    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 799
    const-string v0, "Gmail"

    const-string v1, "skipping v124 mailstore upgrade due to initial version %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mInitialDbVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 805
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN delay INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public upgradeDbTo125()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS message_fts_table_index"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE message_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversation_fts_table_index"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversation_fts_table_index(docid INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method public upgradeDbTo126()V
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_conversation_queryId on messages (conversation, queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public upgradeDbTo37()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET labelIds = \',\' || labelIds"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public upgradeDbTo38()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN clientCreated INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN refMessageId INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public upgradeDbTo39()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->correctLocalLabelIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 313
    return-void
.end method

.method public upgradeDbTo40()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public upgradeDbTo41()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN nextTimeToAttempt INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public upgradeDbTo42()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN color INTEGER DEFAULT 2147483647"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public upgradeDbTo43()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public upgradeDbTo44()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN forward INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN includeQuotedText INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN quoteStartPos INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public upgradeDbTo45()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT, UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public upgradeDbTo46()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public upgradeDbTo47()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public upgradeDbTo48()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN dirty INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public upgradeDbTo49()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN bodyCompressed BLOB DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public upgradeDbTo50()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_synced on messages (synced);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public upgradeDbTo51()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 401
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public upgradeDbTo52()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startSyncNeeded"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/gm/provider/MailStoreInitializer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 409
    return-void
.end method
