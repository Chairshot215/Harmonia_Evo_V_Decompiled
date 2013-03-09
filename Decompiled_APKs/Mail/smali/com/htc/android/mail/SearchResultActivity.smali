.class public Lcom/htc/android/mail/SearchResultActivity;
.super Lcom/htc/app/HtcListActivity;
.source "SearchResultActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final MENU_ITEM_SEE_CONVERSATION:I = 0x1

.field private static final REQUEST_CODE_ACCOUNT_LIST:I = 0x1


# instance fields
.field final TAG:Ljava/lang/String;

.field mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mGlobalWhere:Ljava/lang/String;

.field private mMailboxId:J

.field private mQueryIntent:Landroid/content/Intent;

.field userQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 20
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 21
    const-string v0, "SearchResultActivity"

    iput-object v0, p0, Lcom/htc/android/mail/SearchResultActivity;->TAG:Ljava/lang/String;

    .line 25
    iput-wide v1, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    .line 31
    iput-wide v1, p0, Lcom/htc/android/mail/SearchResultActivity;->mMailboxId:J

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/SearchResultActivity;->mGlobalWhere:Ljava/lang/String;

    return-void
.end method

.method private checkParameter(J)V
    .locals 7
    .parameter "id"

    .prologue
    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/messages/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_account"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_mailboxId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 202
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "_account"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    .line 204
    const-string v0, "_mailboxId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/SearchResultActivity;->mMailboxId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_1
    return-void

    .line 208
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_2
    throw v0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method private createExchangeAccount()V
    .locals 3

    .prologue
    .line 224
    sget-boolean v1, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SearchResultActivity"

    const-string v2, "createExchangeAccount"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent.eas.mode.wizard"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-class v1, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private lunchAccountList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 215
    sget-boolean v1, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SearchResultActivity"

    const-string v2, "lunchAccountList"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const-string v1, "show_separate_account_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string v1, "show_exchange_only"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v0, v3}, Lcom/htc/android/mail/SearchResultActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 221
    return-void
.end method

.method private readMail(JIZ)V
    .locals 25
    .parameter "id"
    .parameter "position"
    .parameter "isGlobalSearch"

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "app_data"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 138
    .local v10, appData:Landroid/os/Bundle;
    sget-boolean v21, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    if-eqz v21, :cond_0

    const-string v21, "SearchResultActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "appData>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "content://mail/messages/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 140
    .local v20, uri:Landroid/net/Uri;
    if-eqz v10, :cond_4

    .line 141
    const-string v21, "isDraftMailbox"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 142
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v19, readIntent:Landroid/content/Intent;
    const-string v21, "position"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v21, "where"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mGlobalWhere:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v21, "sortRule"

    const-string v22, "_internaldate DESC"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v21, "singleItem"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    .end local v19           #readIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    const-string v21, "SearchResultActivity"

    const-string v22, "composeNew>"

    invoke-static/range {v21 .. v22}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    move-wide/from16 v21, v0

    const-wide/16 v23, -0x1

    cmp-long v21, v21, v23

    if-nez v21, :cond_3

    .line 153
    invoke-direct/range {p0 .. p2}, Lcom/htc/android/mail/SearchResultActivity;->checkParameter(J)V

    .line 155
    :cond_3
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const-class v22, Lcom/htc/android/mail/ComposeActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v19       #readIntent:Landroid/content/Intent;
    const-string v21, "cmd"

    const-string v22, "editdraft"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v21, "accountID"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const-string v21, "SetOrient"

    const-string v22, "InMail"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v19           #readIntent:Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "intent_extra_data_key"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, extraData:Ljava/lang/String;
    const/4 v14, 0x0

    .line 165
    .local v14, isOpeningDraft:Z
    if-eqz v12, :cond_6

    .line 166
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 167
    .local v13, extraUri:Landroid/net/Uri;
    const-string v21, "accountId"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, accountIdStr:Ljava/lang/String;
    const-string v21, "mailboxId"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 169
    .local v17, mailboxIdStr:Ljava/lang/String;
    if-eqz v8, :cond_6

    if-eqz v17, :cond_6

    .line 170
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 171
    .local v6, accountId:J
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 172
    .local v15, mailboxId:J
    invoke-static/range {p0 .. p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v9

    .line 173
    .local v9, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v6, v7}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v5

    .line 174
    .local v5, account:Lcom/htc/android/mail/Account;
    if-eqz v5, :cond_1

    .line 175
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/Mailboxs;->getDraftMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v11

    .line 176
    .local v11, draftMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v18

    .line 177
    .local v18, outMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v11, :cond_1

    if-eqz v18, :cond_1

    .line 178
    iget-wide v0, v11, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v21, v0

    cmp-long v21, v15, v21

    if-eqz v21, :cond_5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v21, v0

    cmp-long v21, v15, v21

    if-nez v21, :cond_6

    :cond_5
    const/4 v14, 0x1

    .line 182
    .end local v5           #account:Lcom/htc/android/mail/Account;
    .end local v6           #accountId:J
    .end local v8           #accountIdStr:Ljava/lang/String;
    .end local v9           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v11           #draftMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v13           #extraUri:Landroid/net/Uri;
    .end local v15           #mailboxId:J
    .end local v17           #mailboxIdStr:Ljava/lang/String;
    .end local v18           #outMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_6
    if-nez v14, :cond_7

    .line 183
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .restart local v19       #readIntent:Landroid/content/Intent;
    const-string v21, "position"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v21, "where"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/SearchResultActivity;->mGlobalWhere:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v21, "sortRule"

    const-string v22, "_internaldate DESC"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v21, "singleItem"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 190
    .end local v19           #readIntent:Landroid/content/Intent;
    :cond_7
    new-instance v19, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const-class v22, Lcom/htc/android/mail/ComposeActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v19       #readIntent:Landroid/content/Intent;
    const-string v21, "cmd"

    const-string v22, "editdraft"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private searchServerMail(J)V
    .locals 12
    .parameter "accountId"

    .prologue
    .line 232
    const-string v8, "SearchResultActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "search server mail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v8, p0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v9, "intent_extra_data_key"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, extraData:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 236
    const-string v8, "SearchResultActivity"

    const-string v9, "data key null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 240
    .local v2, extraUri:Landroid/net/Uri;
    const-string v8, "searchKey"

    invoke-virtual {v2, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, searchKey:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    const-string v8, "SearchResultActivity"

    const-string v9, "search key null"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 247
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_2

    .line 248
    const-string v8, "SearchResultActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "account null: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    .line 252
    .local v4, mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v4, :cond_3

    .line 253
    const-string v8, "SearchResultActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailboxs null: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    iget-wide v10, v4, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/MailCommon;->getMessagesUri(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 258
    .local v5, searchBaseUri:Landroid/net/Uri;
    const-string v8, "default"

    invoke-static {v5, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 260
    .local v7, searchUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const-class v9, Lcom/htc/android/mail/MailSearch;

    invoke-direct {v3, v8, v7, p0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v3, intent:Landroid/content/Intent;
    const/high16 v8, 0x400

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    const-string v8, "searchSvrMailImmediately"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string v8, "searchKey"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v3}, Lcom/htc/android/mail/SearchResultActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 122
    sget-boolean v0, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SearchResultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    .line 133
    :cond_2
    return-void

    .line 125
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 126
    if-eqz p3, :cond_2

    .line 127
    const-string v0, "accountId"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    .line 128
    iget-wide v0, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/SearchResultActivity;->searchServerMail(J)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super/range {p0 .. p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-boolean v11, Lcom/htc/android/mail/SearchResultActivity;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "SearchResultActivity"

    const-string v12, "SearchResult on Create>"

    invoke-static {v11, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/SearchResultActivity;->requestWindowFeature(I)Z

    .line 47
    const v11, 0x7f03002d

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/SearchResultActivity;->setContentView(I)V

    .line 48
    const v11, 0x20201c0

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 49
    .local v9, searchLayout:Landroid/view/View;
    if-eqz v9, :cond_1

    .line 50
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_1
    const v11, 0x20201ba

    invoke-virtual {p0, v11}, Lcom/htc/android/mail/SearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/Title1;

    .line 53
    .local v10, title:Lcom/htc/widget/Title1;
    if-eqz v10, :cond_2

    .line 54
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/Title1;->setVisibility(I)V

    .line 55
    const v11, 0x7f0b02b2

    invoke-virtual {v10, v11}, Lcom/htc/widget/Title1;->setTitle1(I)V

    .line 58
    :cond_2
    iput-object p0, p0, Lcom/htc/android/mail/SearchResultActivity;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    .line 60
    iget-object v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, queryAction:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 62
    .local v8, queryUri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mQueryIntent:Landroid/content/Intent;

    const-string v12, "app_data"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, appData:Landroid/os/Bundle;
    if-nez v1, :cond_4

    .line 65
    const-wide/16 v11, -0x1

    iput-wide v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    .line 70
    :goto_0
    const-string v11, "android.intent.action.mail.search_server_mail"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 71
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/SearchResultActivity;->mContext:Landroid/content/Context;

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/AccountPool;->getAccountCount(Landroid/content/Context;I)I

    move-result v2

    .line 72
    .local v2, count:I
    if-gtz v2, :cond_5

    .line 73
    invoke-direct {p0}, Lcom/htc/android/mail/SearchResultActivity;->createExchangeAccount()V

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    .line 118
    .end local v2           #count:I
    :cond_3
    :goto_1
    return-void

    .line 67
    :cond_4
    const-string v11, "accountID"

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    goto :goto_0

    .line 78
    :cond_5
    iget-wide v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 79
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v11

    if-nez v11, :cond_6

    .line 80
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    goto :goto_1

    .line 86
    :cond_6
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 87
    const-wide/16 v4, -0x1

    .line 90
    .local v4, id:J
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 96
    const/4 v6, 0x0

    .line 97
    .local v6, isGlobalSearch:Z
    iget-wide v11, p0, Lcom/htc/android/mail/SearchResultActivity;->mAccountId:J

    const-wide/16 v13, -0x1

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    .line 99
    const/4 v6, 0x1

    .line 101
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    .line 102
    const/4 v11, 0x0

    invoke-direct {p0, v4, v5, v11, v6}, Lcom/htc/android/mail/SearchResultActivity;->readMail(JIZ)V

    goto :goto_1

    .line 91
    .end local v6           #isGlobalSearch:Z
    :catch_0
    move-exception v3

    .line 92
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    goto :goto_1

    .line 104
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #id:J
    :cond_8
    const-string v11, "android.intent.action.mail.search_server_mail"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 105
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/SearchResultActivity;->mContext:Landroid/content/Context;

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 106
    .local v0, accounts:[Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_9

    array-length v11, v0

    if-nez v11, :cond_a

    .line 107
    :cond_9
    invoke-direct {p0}, Lcom/htc/android/mail/SearchResultActivity;->createExchangeAccount()V

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    goto :goto_1

    .line 110
    :cond_a
    array-length v11, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 111
    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/htc/android/mail/SearchResultActivity;->searchServerMail(J)V

    .line 112
    invoke-virtual {p0}, Lcom/htc/android/mail/SearchResultActivity;->finish()V

    goto :goto_1

    .line 115
    :cond_b
    invoke-direct {p0}, Lcom/htc/android/mail/SearchResultActivity;->lunchAccountList()V

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "SearchResultActivity"

    const-string v1, "onSearchRequested(), doing nothing..."

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return v0
.end method
