.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;
.super Landroid/app/IntentService;
.source "SubscribedFeedsIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "SubscribedFeedsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private serviceAndRowFromClientToken(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .parameter "clientToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v4, "_"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, components:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 160
    :goto_0
    return-object v3

    .line 157
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 158
    .local v2, rowId:Ljava/lang/Integer;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 159
    .end local v2           #rowId:Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 21
    .parameter "intent"

    .prologue
    .line 65
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 67
    .local v11, bundle:Landroid/os/Bundle;
    if-eqz v11, :cond_0

    .line 68
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 70
    :cond_0
    const-string v2, "SubscribedFeeds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received network tickle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v11           #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "google.com"

    const-string v3, "from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string v2, "SubscribedFeeds"

    const-string v3, "Ignoring tickle -- not from trusted server."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    :goto_0
    return-void

    .line 81
    :cond_3
    const-string v2, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, accountName:Ljava/lang/String;
    const-string v2, "collapse_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, token:Ljava/lang/String;
    const-string v2, "sync_hint"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 86
    .local v15, hint:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "SubscribedFeeds"

    const-string v3, "Ignoring malformed tickle -- missing token."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;->serviceAndRowFromClientToken(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v17

    .line 95
    .local v17, serviceAndRowId:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v17, :cond_6

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v20

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 110
    .local v12, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 111
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 113
    const-string v2, "authority"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, authority:Ljava/lang/String;
    const-string v2, "feed"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, feed:Ljava/lang/String;
    const-string v2, "_sync_account"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, name:Ljava/lang/String;
    const-string v2, "_sync_account_type"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 117
    .local v19, type:Ljava/lang/String;
    new-instance v8, Landroid/accounts/Account;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v8, account:Landroid/accounts/Account;
    const/16 v2, 0xab6

    invoke-static {v2, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 119
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v8, v10}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 121
    :cond_5
    const-string v2, "SubscribedFeeds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received tickle for a disabled feed, removing feed and forcing a subscribedfeeds sync: account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", feed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_sync_account=? and _sync_account_type=? and authority=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x1

    aput-object v19, v5, v6

    const/4 v6, 0x2

    aput-object v10, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v13, extras:Landroid/os/Bundle;
    const-string v2, "ignore_settings"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v2, "subscribedfeeds"

    invoke-static {v8, v2, v13}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 147
    .end local v8           #account:Landroid/accounts/Account;
    .end local v10           #authority:Ljava/lang/String;
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v14           #feed:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 99
    .end local v12           #c:Landroid/database/Cursor;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    const-string v2, "SubscribedFeeds"

    const-string v3, "Ignoring malformed tickle -- missing account name."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsIntentService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_sync_account= ? and _sync_account_type= ? and feed= ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v20, "com.google"

    aput-object v20, v6, v7

    const/4 v7, 0x2

    aput-object v18, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .restart local v12       #c:Landroid/database/Cursor;
    goto/16 :goto_1

    .line 131
    .restart local v8       #account:Landroid/accounts/Account;
    .restart local v10       #authority:Ljava/lang/String;
    .restart local v14       #feed:Ljava/lang/String;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v19       #type:Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v2, "SubscribedFeeds"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 132
    const-string v2, "SubscribedFeeds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requesting sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_9
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 136
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v2, "feed"

    invoke-virtual {v13, v2, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz v15, :cond_a

    .line 138
    const-string v2, "hint"

    invoke-virtual {v13, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_a
    invoke-static {v8, v10, v13}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 143
    .end local v8           #account:Landroid/accounts/Account;
    .end local v10           #authority:Ljava/lang/String;
    .end local v13           #extras:Landroid/os/Bundle;
    .end local v14           #feed:Ljava/lang/String;
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #type:Ljava/lang/String;
    :cond_b
    const-string v2, "SubscribedFeeds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received tickle for non-existent feed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v2, 0xab6

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
