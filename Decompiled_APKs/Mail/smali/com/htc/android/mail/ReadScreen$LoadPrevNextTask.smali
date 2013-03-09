.class Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;
.super Landroid/os/AsyncTask;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPrevNextTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 6069
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6069
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;-><init>(Lcom/htc/android/mail/ReadScreen;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x1

    .line 6072
    const-class v10, Lcom/htc/android/mail/ReadScreen;

    monitor-enter v10

    .line 6073
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/ReadScreen$MessageIds;->isMessageIdsChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6074
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen$MessageIds;->setMessageIdsStatus(Z)V

    .line 6075
    const/4 v6, 0x0

    .line 6076
    .local v6, c:Landroid/database/Cursor;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "messages._id = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v11, v5, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 6077
    .local v7, extraWhere:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6078
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6079
    .local v1, uri:Landroid/net/Uri;
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sURLMatcher:Landroid/content/UriMatcher;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 6080
    .local v8, match:I
    const/16 v0, 0x163

    if-ne v8, v0, :cond_0

    .line 6081
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$10700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/util/ActivityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6082
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "readSeq"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mActivityCallback:Lcom/htc/android/mail/util/ActivityCallback;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/util/ActivityCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/util/ActivityCallback;->getReadSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6085
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "extraWhere"

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6086
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messages._id as _id"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/ReadScreen;->access$10900(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6087
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ReadScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageIdsUriStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6100
    .end local v8           #match:I
    :cond_1
    :goto_0
    new-instance v9, Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6101
    .local v9, obs:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 6102
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMessageIdsUriStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$10600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2, v9}, Lcom/htc/android/mail/ReadScreen$MessageIds;->setMessageIdsCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;)V

    .line 6110
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #extraWhere:Ljava/lang/String;
    .end local v9           #obs:Lcom/htc/android/mail/ReadScreen$MessageIdsContentObserver;
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v2, v2, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getPreMessageId(J)J

    move-result-wide v2

    #setter for: Lcom/htc/android/mail/ReadScreen;->mPreMessageId:J
    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$11102(Lcom/htc/android/mail/ReadScreen;J)J

    .line 6111
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v2, v2, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen$MessageIds;->getNextMessageId(J)J

    move-result-wide v2

    #setter for: Lcom/htc/android/mail/ReadScreen;->mNextMessageId:J
    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$11202(Lcom/htc/android/mail/ReadScreen;J)J

    .line 6112
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6113
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 6089
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #extraWhere:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mFromConversationView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$11000(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6090
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sGroupMessageIdsURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "extraWhere"

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6091
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messages._id as _id"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/ReadScreen;->access$10900(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6092
    goto :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$600(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6093
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "extraWhere"

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6094
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "searchSvrMessages._id as _id"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/ReadScreen;->access$10900(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6095
    goto/16 :goto_0

    .line 6096
    .end local v1           #uri:Landroid/net/Uri;
    :cond_6
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sMessageIdsURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "extraWhere"

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 6097
    .restart local v1       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messages._id as _id"

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSQLStatement:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$10800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSortRule:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/ReadScreen;->access$10900(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_0

    .line 6112
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #extraWhere:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6069
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6119
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6069
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ReadScreen$LoadPrevNextTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
