.class Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->initialize(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

.field final synthetic val$initiatedLocally:Z


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    iput-boolean p2, p0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->val$initiatedLocally:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->queryOtrCursor()V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$200(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->checkInitialOtrStatus()V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$300(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getContactBareAddress()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$400(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, contact:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v3

    invoke-static {v1, v13, v3, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 227
    .local v14, pid:J
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 228
    .local v2, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$600()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 231
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_3

    .line 233
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->setUnreadMessage(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$700(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitiatedbyLocal:Z
    invoke-static {v3, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$802(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Z)Z

    .line 240
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 241
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "is_active"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$500(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "contact_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 271
    :goto_1
    return-void

    .line 238
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 262
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->val$initiatedLocally:Z

    #setter for: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->mInitiatedbyLocal:Z
    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$802(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Z)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->getAccountId()J

    move-result-wide v10

    move-wide v4, v14

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->addChatToDatabase(JLjava/lang/String;Ljava/lang/String;ZZJ)V
    invoke-static/range {v3 .. v11}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$1000(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;JLjava/lang/String;Ljava/lang/String;ZZJ)V

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 253
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession$1;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;

    const-string v3, "initializeChat"

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->logEmptyCursor(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;->access$900(Lcom/google/android/gsf/gtalkservice/gtalk/ChatSession;Ljava/lang/String;)V

    goto :goto_2
.end method
