.class public Lcom/android/mms/ui/PreHandleIntentActivity;
.super Landroid/app/Activity;
.source "PreHandleIntentActivity.java"


# static fields
.field private static final PREPARE_SENDTO_DATA_TOKEN:I = 0x708

.field private static final TAG:Ljava/lang/String; = "PreHandleIntentActivity"


# instance fields
.field private mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 317
    new-instance v0, Lcom/android/mms/ui/PreHandleIntentActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PreHandleIntentActivity$1;-><init>(Lcom/android/mms/ui/PreHandleIntentActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/PreHandleIntentActivity;->mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/PreHandleIntentActivity;Landroid/content/Intent;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mms/ui/PreHandleIntentActivity;->getSendToThreadIDbyNumber(Landroid/content/Intent;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/PreHandleIntentActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/PreHandleIntentActivity;->runTraditionModeFlow(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/PreHandleIntentActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mms/ui/PreHandleIntentActivity;->handleActionView(Landroid/content/Intent;)V

    return-void
.end method

.method private getDetailViewIntentFromMmsUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 20
    .parameter "uri"
    .parameter "intent"

    .prologue
    .line 223
    const/4 v13, 0x0

    .line 224
    .local v13, it:Landroid/content/Intent;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "msg_box"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "thread_id"

    aput-object v3, v5, v2

    .line 225
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 228
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 230
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 232
    .local v16, msgId:J
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 233
    .local v15, mmsType:I
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 234
    .local v18, threadId:J
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v14, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v13           #it:Landroid/content/Intent;
    .local v14, it:Landroid/content/Intent;
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "category"

    sget v3, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :cond_0
    const/4 v2, 0x3

    if-ne v15, v2, :cond_4

    .line 239
    const-string v2, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 240
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/PreHandleIntentActivity;->getReceipientAddressesFromOneMmsContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, address:Ljava/lang/String;
    const-string v2, "address"

    invoke-virtual {v14, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    .end local v11           #address:Ljava/lang/String;
    :cond_1
    const-string v2, "msg_uri"

    move-object/from16 v0, p1

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    const-string v2, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string v2, "from_draft"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v2, "msg_type"

    const-string v3, "mms"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "msg_Id"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v14

    .line 271
    .end local v14           #it:Landroid/content/Intent;
    .end local v15           #mmsType:I
    .end local v16           #msgId:J
    .end local v18           #threadId:J
    .restart local v13       #it:Landroid/content/Intent;
    :cond_2
    :goto_0
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 274
    :cond_3
    return-object v13

    .line 251
    .end local v13           #it:Landroid/content/Intent;
    .restart local v14       #it:Landroid/content/Intent;
    .restart local v15       #mmsType:I
    .restart local v16       #msgId:J
    .restart local v18       #threadId:J
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getContactIdFromThreadID(Landroid/content/Context;JJ)J

    move-result-wide v18

    .line 254
    const-string v2, "PreHandleIntentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get contact id> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_5
    const-string v2, "thread_id"

    move-wide/from16 v0, v18

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    const-string v2, "MyTaskUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, MyTaskUri:Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 260
    const-string v2, "MyTaskUri"

    invoke-virtual {v14, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 263
    const-string v2, "category"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, MyTaskCategory:Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 265
    const-string v2, "category"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v9           #MyTaskCategory:Ljava/lang/String;
    :cond_7
    move-object v13, v14

    .end local v14           #it:Landroid/content/Intent;
    .restart local v13       #it:Landroid/content/Intent;
    goto :goto_0

    .line 271
    .end local v10           #MyTaskUri:Ljava/lang/String;
    .end local v15           #mmsType:I
    .end local v16           #msgId:J
    .end local v18           #threadId:J
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2

    .end local v13           #it:Landroid/content/Intent;
    .restart local v14       #it:Landroid/content/Intent;
    .restart local v15       #mmsType:I
    .restart local v16       #msgId:J
    .restart local v18       #threadId:J
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14           #it:Landroid/content/Intent;
    .restart local v13       #it:Landroid/content/Intent;
    goto :goto_1
.end method

.method private getDetailViewIntentFromSmsUri(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 21
    .parameter "uri"

    .prologue
    .line 145
    const/4 v13, 0x0

    .line 146
    .local v13, it:Landroid/content/Intent;
    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "body"

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string v3, "type"

    aput-object v3, v5, v2

    const/4 v2, 0x3

    const-string v3, "thread_id"

    aput-object v3, v5, v2

    .line 148
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 151
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 153
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    .line 155
    .local v15, msgId:J
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, address:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, smsBody:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 158
    .local v18, smsType:I
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 159
    .local v19, threadId:J
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v14, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v13           #it:Landroid/content/Intent;
    .local v14, it:Landroid/content/Intent;
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "category"

    sget v3, Lcom/android/mms/ui/ConversationList;->search_category:I

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    :cond_0
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 163
    const-string v2, "address"

    invoke-virtual {v14, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "sms_body"

    move-object/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v2, "compose_mode"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v2, "from_draft"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v2, "msg_type"

    const-string v3, "sms"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "msg_Id"

    move-wide v0, v15

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, v14

    .line 191
    .end local v11           #address:Ljava/lang/String;
    .end local v14           #it:Landroid/content/Intent;
    .end local v15           #msgId:J
    .end local v17           #smsBody:Ljava/lang/String;
    .end local v18           #smsType:I
    .end local v19           #threadId:J
    .restart local v13       #it:Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 194
    :cond_2
    return-object v13

    .line 171
    .end local v13           #it:Landroid/content/Intent;
    .restart local v11       #address:Ljava/lang/String;
    .restart local v14       #it:Landroid/content/Intent;
    .restart local v15       #msgId:J
    .restart local v17       #smsBody:Ljava/lang/String;
    .restart local v18       #smsType:I
    .restart local v19       #threadId:J
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide/from16 v0, v19

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getContactIdFromThreadID(Landroid/content/Context;JJ)J

    move-result-wide v19

    .line 174
    const-string v2, "PreHandleIntentActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get contact id> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_4
    const-string v2, "thread_id"

    move-wide/from16 v0, v19

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 178
    const-string v2, "MyTaskUri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 179
    .local v10, MyTaskUri:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 180
    const-string v2, "MyTaskUri"

    invoke-virtual {v14, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    const-string v2, "category"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, MyTaskCategory:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 185
    const-string v2, "category"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v9           #MyTaskCategory:Ljava/lang/String;
    :cond_6
    move-object v13, v14

    .end local v14           #it:Landroid/content/Intent;
    .restart local v13       #it:Landroid/content/Intent;
    goto :goto_0

    .line 191
    .end local v10           #MyTaskUri:Ljava/lang/String;
    .end local v11           #address:Ljava/lang/String;
    .end local v15           #msgId:J
    .end local v17           #smsBody:Ljava/lang/String;
    .end local v18           #smsType:I
    .end local v19           #threadId:J
    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v2

    .end local v13           #it:Landroid/content/Intent;
    .restart local v11       #address:Ljava/lang/String;
    .restart local v14       #it:Landroid/content/Intent;
    .restart local v15       #msgId:J
    .restart local v17       #smsBody:Ljava/lang/String;
    .restart local v18       #smsType:I
    .restart local v19       #threadId:J
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14           #it:Landroid/content/Intent;
    .restart local v13       #it:Landroid/content/Intent;
    goto :goto_1
.end method

.method private getReceipientAddressesFromOneMmsContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "mmsUri"

    .prologue
    .line 204
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    .local v0, address:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 209
    .local v2, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    const v3, 0x20c016e

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/PreHandleIntentActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 214
    .end local v2           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "PreHandleIntentActivity"

    invoke-virtual {v1}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getSendToThreadIDbyNumber(Landroid/content/Intent;)J
    .locals 9
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x0

    .line 114
    const-wide/16 v3, 0x0

    .line 117
    .local v3, threadID:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportInDetailViewByQucikContact()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 119
    .local v0, recipientUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 121
    .local v2, retrivedAddress:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SENDTO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v1, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 134
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/mms/ui/MessageUtils;->getAvailableThreadId_V2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v3

    .end local v0           #recipientUri:Landroid/net/Uri;
    .end local v1           #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2           #retrivedAddress:Ljava/lang/String;
    :cond_0
    :goto_0
    move-wide v5, v3

    .line 140
    :cond_1
    return-wide v5

    .line 136
    .restart local v0       #recipientUri:Landroid/net/Uri;
    .restart local v1       #recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2       #retrivedAddress:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/mms/ui/MessageUtils;->getAvailableThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v3

    goto :goto_0
.end method

.method private handleActionView(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 281
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 282
    .local v1, scheme:Ljava/lang/String;
    const/4 v0, 0x0

    .line 283
    .local v0, auth:Ljava/lang/String;
    const/4 v2, 0x0

    .line 284
    .local v2, sendIntent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_0
    const-string v4, "content"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const-string v4, "sms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    invoke-direct {p0, v3}, Lcom/android/mms/ui/PreHandleIntentActivity;->getDetailViewIntentFromSmsUri(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 295
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/PreHandleIntentActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->finish()V

    .line 304
    return-void

    .line 291
    :cond_3
    const-string v4, "mms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/PreHandleIntentActivity;->getDetailViewIntentFromMmsUri(Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 300
    :cond_4
    const-string v4, "PreHandleIntentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong uri> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, p1}, Lcom/android/mms/ui/PreHandleIntentActivity;->handleInvalidIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private handleInvalidIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "it"

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 103
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v2, "sms_body"

    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/PreHandleIntentActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private runTraditionModeFlow(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "address"
    .parameter "body"

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_mms_thread_mode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    .local v0, flag:Z
    if-nez v0, :cond_2

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v1, intent1:Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    const-string v4, "address"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :cond_0
    const-string v4, "compose_mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    const-string v4, "sms_body"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/PreHandleIntentActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->finish()V

    .line 95
    .end local v0           #flag:Z
    .end local v1           #intent1:Landroid/content/Intent;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 49
    .local v3, theWindow:Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, it:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    iget-object v4, p0, Lcom/android/mms/ui/PreHandleIntentActivity;->mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    const/16 v5, 0x708

    invoke-virtual {v4, v5}, Lcom/android/mms/util/MmsAsyncWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 59
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/mms/ui/PreHandleIntentActivity;->mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v4, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 70
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    iget-object v4, p0, Lcom/android/mms/ui/PreHandleIntentActivity;->mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    const/16 v5, 0x4ee9

    invoke-virtual {v4, v5}, Lcom/android/mms/util/MmsAsyncWorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 62
    .restart local v2       #msg:Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcom/android/mms/ui/PreHandleIntentActivity;->mbgHandler:Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-virtual {v4, v2}, Lcom/android/mms/util/MmsAsyncWorkHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 66
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/mms/ui/PreHandleIntentActivity;->handleInvalidIntent(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/mms/ui/PreHandleIntentActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
