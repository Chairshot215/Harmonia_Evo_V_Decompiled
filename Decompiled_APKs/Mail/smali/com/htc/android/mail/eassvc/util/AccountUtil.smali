.class public Lcom/htc/android/mail/eassvc/util/AccountUtil;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "EAS_AccountUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExcahngeCalendar(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 6
    .parameter "context"
    .parameter "exAccount"

    .prologue
    .line 134
    iget-wide v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {p0, v4, v5}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountColorIdx(Landroid/content/Context;J)I

    move-result v1

    .line 135
    .local v1, colorIdx:I
    invoke-static {v1}, Lcom/htc/android/mail/Account;->getDecodedColorIdx(I)[I

    move-result-object v0

    .line 136
    .local v0, colorArr:[I
    sget-object v4, Lcom/htc/android/mail/MailCommon;->account_drawable:[[I

    const/4 v5, 0x0

    aget v5, v0, v5

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    aget v3, v4, v5

    .line 138
    .local v3, getColor:I
    :try_start_0
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-static {p0, v4, v5, v3}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->insertNewCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addExcahngeTask(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 3
    .parameter "context"
    .parameter "exAccount"

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->insertNewTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static checkIfAccount(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 570
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 571
    .local v6, accountCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 581
    :goto_0
    return v0

    .line 573
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 575
    .local v7, count:I
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_1
    if-lez v7, :cond_2

    .line 579
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    .line 581
    goto :goto_0
.end method

.method public static final combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "seperator"
    .parameter "escape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v0, fetchStr:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 587
    const-string v3, ""

    .line 613
    :goto_0
    return-object v3

    .line 590
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 591
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 593
    if-eqz p2, :cond_3

    .line 594
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 602
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 603
    .restart local v2       #value:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 604
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    if-eqz p2, :cond_4

    .line 606
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    .end local v1           #i:I
    :cond_3
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 608
    .restart local v1       #i:I
    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 613
    .end local v2           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static createAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z
    .locals 11
    .parameter "context"
    .parameter "exAccount"

    .prologue
    const/4 v6, 0x0

    .line 103
    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "EAS_AccountUtil"

    const-string v8, "- createAccount()"

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->deleteAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z

    .line 109
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->insertDefaultMailbox(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, mailboxId:[Ljava/lang/String;
    invoke-static {p0, p1, v4}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->insertAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;[Ljava/lang/String;)J

    move-result-wide v0

    .line 112
    .local v0, accountId:J
    iput-wide v0, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 114
    invoke-static {p0, v4, v0, v1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->updateDefaultMailboxAccount(Landroid/content/Context;[Ljava/lang/String;J)V

    .line 115
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v5, values:Landroid/content/ContentValues;
    invoke-static {v5, p0}, Lcom/htc/android/mail/MailCommon;->loadMailCommonSettings(Landroid/content/ContentValues;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v5

    .line 117
    sget-object v7, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 118
    .local v2, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 126
    const/4 v6, 0x1

    .line 129
    .end local v0           #accountId:J
    .end local v2           #builder:Landroid/net/Uri$Builder;
    .end local v4           #mailboxId:[Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_0
    return v6

    .line 120
    :catch_0
    move-exception v3

    .line 121
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #accountId:J
    .restart local v2       #builder:Landroid/net/Uri$Builder;
    .restart local v4       #mailboxId:[Ljava/lang/String;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v7, "EAS_AccountUtil"

    const-string v8, "createAccount(): fail"

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static decodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 749
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EAS_AccountUtil"

    const-string v2, "decodePassword: fail"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 753
    const-string v1, ""

    goto :goto_0
.end method

.method public static deleteAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)Z
    .locals 13
    .parameter "context"
    .parameter "exAccount"

    .prologue
    const/4 v12, 0x0

    .line 179
    const-string v1, "EAS_AccountUtil"

    const-string v5, "- delete exchange account start"

    invoke-static {v1, p1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 180
    if-nez p0, :cond_0

    .line 181
    const-string v1, "EAS_AccountUtil"

    const-string v5, "delete account failed: context is null"

    invoke-static {v1, p1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move v6, v12

    .line 232
    :goto_0
    return v6

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/htc/android/mail/eassvc/calendar/CalendarManager;->deleteCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    .line 197
    .local v6, bRet:Z
    const/4 v11, 0x0

    .line 198
    .local v11, strId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 200
    .local v8, curAccount:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 201
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_provider = ? AND _emailaddress=?"

    .line 202
    .local v3, whereClause:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Exchange"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 203
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 204
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    :cond_1
    const-string v1, "EAS_AccountUtil"

    const-string v5, "delete account failed: Can\'t find exchange mail account"

    invoke-static {v1, p1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v6, v12

    .line 206
    goto :goto_0

    .line 188
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #bRet:Z
    .end local v8           #curAccount:Landroid/database/Cursor;
    .end local v11           #strId:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 189
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "EAS_AccountUtil"

    invoke-static {v1, p1, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V

    goto :goto_1

    .line 210
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v6       #bRet:Z
    .restart local v8       #curAccount:Landroid/database/Cursor;
    .restart local v11       #strId:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 212
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 213
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v7, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 214
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v5, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 215
    .local v10, nAccountId:I
    if-gtz v10, :cond_4

    .line 216
    const-string v1, "EAS_AccountUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete exchange mail account fail: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 217
    const/4 v6, 0x0

    .line 219
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcaseForceDefaultAccount(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 227
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 228
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    .end local v10           #nAccountId:I
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_5
    const-string v1, "EAS_AccountUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- delete exchange account finish: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :catch_1
    move-exception v9

    .line 224
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "EAS_AccountUtil"

    invoke-static {v1, p1, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    const/4 v6, 0x0

    .line 227
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_6
    throw v1
.end method

.method public static deleteAccountInfo(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 768
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.htc.android.mail/NotDeleteLoginInfoV2"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 770
    sget-boolean v3, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "EAS_AccountUtil"

    const-string v4, "deleteAccountInfo: Clear and delete EASSetupWizard Shared Preference"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_0
    const-string v3, "EASSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 772
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public static enableAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Z)V
    .locals 11
    .parameter "context"
    .parameter "exAccount"
    .parameter "enableAccount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 266
    sget-boolean v5, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "EAS_AccountUtil"

    const-string v7, "- enableAccount"

    invoke-static {v5, p1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_3

    .line 268
    :cond_1
    const-string v5, "EAS_AccountUtil"

    const-string v6, "enableAccount failed: parameter is null"

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 288
    :cond_2
    :goto_0
    return-void

    .line 271
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 273
    .local v4, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "_del"

    if-eqz p2, :cond_4

    const/4 v5, -0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_5

    .line 276
    const-string v5, "EAS_AccountUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableAccount() failed: Can\'t retrieve exchange account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v1           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 285
    .local v2, e:Ljava/lang/Exception;
    throw v2

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cv:Landroid/content/ContentValues;
    :cond_4
    move v5, v6

    .line 274
    goto :goto_1

    .line 279
    :cond_5
    :try_start_1
    sget-object v5, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 280
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 282
    .local v3, nRet:I
    if-ge v3, v6, :cond_2

    .line 283
    sget-boolean v5, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "EAS_AccountUtil"

    const-string v6, "enableAccount fail"

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static encodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 759
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 763
    :goto_0
    return-object v1

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EAS_AccountUtil"

    const-string v2, "encodePassword: fail"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 763
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAccountColorIdx(Landroid/content/Context;J)I
    .locals 10
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, colorIdx:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 157
    .local v8, curAccount:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 158
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 159
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_colorIdx"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 164
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 170
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return v7

    .line 167
    :catch_0
    move-exception v9

    .line 168
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_2
    throw v1
.end method

.method public static getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 51
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 52
    const-string v2, "EAS_AccountUtil"

    const-string v3, "- getAccountConfigPath(): accountId < 0"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 55
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 60
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getAccountCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 688
    const/4 v6, 0x0

    .line 690
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_provider = ?"

    .line 691
    .local v3, whereClause:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Exchange"

    aput-object v1, v4, v0

    .line 692
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 698
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 702
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 702
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 702
    :cond_1
    throw v0

    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 703
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 706
    goto :goto_0
.end method

.method public static getCalendarLogPath(Landroid/content/Context;J)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 77
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 78
    const-string v2, "EAS_AccountUtil"

    const-string v3, "- getCalendarLogPath(): accountId < 0"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calsynclog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 86
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getCalenderIdByAccountId(Landroid/content/Context;J)J
    .locals 20
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 710
    const-wide/16 v15, -0x1

    .line 711
    .local v15, calendarId:J
    const/4 v13, 0x0

    .line 712
    .local v13, account:Landroid/accounts/Account;
    const/16 v19, 0x0

    .line 713
    .local v19, emailAddr:Ljava/lang/String;
    const/16 v17, 0x0

    .line 715
    .local v17, cur:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, whereClause:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_emailaddress"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 720
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 721
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 725
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 728
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 729
    .local v14, builder:Landroid/net/Uri$Builder;
    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v14, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 730
    const-string v3, "account_name"

    move-object/from16 v0, v19

    invoke-virtual {v14, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 731
    const-string v3, "account_type"

    const-string v4, "com.htc.android.mail.eas"

    invoke-virtual {v14, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 734
    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 735
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    .line 740
    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 741
    .end local v6           #whereClause:Ljava/lang/String;
    .end local v14           #builder:Landroid/net/Uri$Builder;
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v3, v15

    .line 744
    :cond_2
    :goto_1
    return-wide v3

    .line 723
    .restart local v6       #whereClause:Ljava/lang/String;
    :cond_3
    const-wide/16 v3, -0x1

    .line 740
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 741
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 737
    .end local v6           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 738
    .local v18, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "EAS_AccountUtil"

    move-wide/from16 v0, p1

    move-object/from16 v2, v18

    invoke-static {v3, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 741
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_4
    throw v3
.end method

.method public static getContactsLogPath(Landroid/content/Context;J)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 64
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 65
    const-string v2, "EAS_AccountUtil"

    const-string v3, "- getContactsLogPath(): accountId < 0"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 68
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "consynclog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 73
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static getEASOptionValues(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 836
    invoke-virtual {p1, p0}, Lcom/htc/android/mail/Account;->getEasOptions(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v0

    .line 837
    .local v0, easOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    new-instance v1, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;-><init>()V

    .line 838
    .local v1, easOptionsForUI:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    iget v2, v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailBodyType:I

    iput v2, v1, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I

    .line 839
    iget v2, v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    iput v2, v1, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    .line 840
    return-object v1
.end method

.method public static getEASOptionValuesForUI(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .locals 12
    .parameter "context"
    .parameter "account"

    .prologue
    .line 789
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    .line 790
    .local v0, accountId:J
    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v4

    .line 791
    .local v4, dataFilePath:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/easOptionsForUI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v7, easOptionsForUI:Ljava/io/File;
    const/4 v8, 0x0

    .line 793
    .local v8, fileContent:[Ljava/lang/String;
    new-instance v6, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;-><init>()V

    .line 794
    .local v6, easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    const/4 v2, 0x0

    .line 796
    .local v2, bufReader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 797
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 798
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    .local v3, bufReader:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 799
    .local v9, line:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 801
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 803
    :cond_0
    if-eqz v8, :cond_3

    array-length v10, v8

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 804
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    .line 805
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v6, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 824
    if-eqz v3, :cond_1

    .line 826
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    move-object v2, v3

    .line 822
    .end local v3           #bufReader:Ljava/io/BufferedReader;
    .end local v6           #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .end local v9           #line:Ljava/lang/String;
    .restart local v2       #bufReader:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return-object v6

    .line 807
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #bufReader:Ljava/io/BufferedReader;
    .restart local v6       #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    .restart local v9       #line:Ljava/lang/String;
    :cond_3
    :try_start_3
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "EAS_AccountUtil"

    const-string v11, "EASOptionUI file is broken."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 809
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "EAS_AccountUtil"

    const-string v11, "Delete EASOptionUI file."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_5
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "EAS_AccountUtil"

    const-string v11, "Failed to get easOptionsForUI, access EASOption in old way instead."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_6
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getEASOptionValues(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v6

    .line 824
    .end local v6           #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    if-eqz v3, :cond_7

    .line 826
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_7
    :goto_2
    move-object v2, v3

    .line 812
    .end local v3           #bufReader:Ljava/io/BufferedReader;
    .restart local v2       #bufReader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 815
    .end local v9           #line:Ljava/lang/String;
    .restart local v6       #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :cond_8
    :try_start_5
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_9

    const-string v10, "EAS_AccountUtil"

    const-string v11, "Failed to get easOptionsForUI, access EASOption in old way instead."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_9
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getEASOptionValues(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v6

    .line 824
    .end local v6           #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    if-eqz v2, :cond_2

    .line 826
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 827
    :catch_0
    move-exception v5

    .line 828
    .local v5, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 819
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :catch_1
    move-exception v5

    .line 820
    .restart local v5       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 821
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "EAS_AccountUtil"

    const-string v11, "Failed to get easOptionsForUI, access EASOption in old way instead."

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_a
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getEASOptionValues(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    .line 824
    .end local v6           #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    if-eqz v2, :cond_2

    .line 826
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 827
    :catch_2
    move-exception v5

    goto :goto_3

    .line 824
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v2, :cond_b

    .line 826
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 824
    :cond_b
    :goto_6
    throw v10

    .line 827
    :catch_3
    move-exception v5

    .line 828
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 827
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    .end local v5           #e:Ljava/io/IOException;
    .restart local v3       #bufReader:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 828
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 827
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :catch_5
    move-exception v5

    .line 828
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 824
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #easOption:Lcom/htc/android/mail/eassvc/util/EASOptionForUI;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #bufReader:Ljava/io/BufferedReader;
    .restart local v2       #bufReader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 819
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    .restart local v3       #bufReader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3           #bufReader:Ljava/io/BufferedReader;
    .restart local v2       #bufReader:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public static getTaskLogPath(Landroid/content/Context;J)Ljava/io/File;
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 90
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 91
    const-string v2, "EAS_AccountUtil"

    const-string v3, "- getTaskLogPath(): accountId < 0"

    invoke-static {v2, p1, p2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tasksynclog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 99
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static insertAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;[Ljava/lang/String;)J
    .locals 13
    .parameter "context"
    .parameter "exAccount"
    .parameter "Id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 437
    sget-boolean v10, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "EAS_AccountUtil"

    const-string v11, "- createAccount_insert_account()"

    invoke-static {v10, p1, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 438
    :cond_0
    const-wide/16 v0, -0x1

    .line 439
    .local v0, accountId:J
    const/4 v6, 0x0

    .line 441
    .local v6, encPassword:Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v10, p2

    const/4 v11, 0x5

    if-ge v10, v11, :cond_2

    .line 442
    :cond_1
    const-string v10, "EAS_AccountUtil"

    const-string v11, "parameter are null, can\'t create exchange account"

    invoke-static {v10, p1, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 443
    new-instance v5, Ljava/lang/Exception;

    const-string v10, "parameter are null, can\'t create exchange account"

    invoke-direct {v5, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 444
    .local v5, e:Ljava/lang/Exception;
    throw v5

    .line 448
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_0
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 450
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v10}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 460
    :cond_3
    const/4 v7, 0x0

    .line 461
    .local v7, refreshMailWhenOpenFolder:Ljava/lang/String;
    const/4 v4, 0x0

    .line 462
    .local v4, downloadMessageWhenScroll:Ljava/lang/String;
    const/4 v2, 0x0

    .line 463
    .local v2, bundle:Landroid/os/Bundle;
    iget-wide v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11, p0}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getMailCommonSettingFromCustomization(JLandroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    .line 464
    if-eqz v2, :cond_4

    .line 465
    const-string v10, "refreshMailWhenOpenFolder"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    const-string v10, "downloadMessageWhenScroll"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 469
    sget-object v7, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    .line 471
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 472
    sget-object v4, Lcom/htc/android/mail/MailProvider;->downloadMessageWhenScroll:Ljava/lang/String;

    .line 476
    :cond_6
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v3, cv:Landroid/content/ContentValues;
    const-string v10, "_desc"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v10, "_name"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v10, "_emailaddress"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v10, "_username"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v10, "_outusername"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v10, "_password"

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v10, "_outpassword"

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v10, "_del"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string v10, "_provider"

    const-string v11, "Exchange"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v10, "_providerGroup"

    const-string v11, "Exchange"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v10, "_deleteFromServer"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v11, "_useSSLin"

    iget-boolean v10, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v10, v12, :cond_9

    const-string v10, "1"

    :goto_0
    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v10, "_inserver"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v10, "_easDomain"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v10, "_easSvrProtocol"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v10, "_easHeartBeatInternal"

    iget v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v10, "_easDeviceID"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v10, "_easDeviceType"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v10, "_refreshMailWhenOpenFolder"

    invoke-virtual {v3, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v10, "_downloadMessageWhenScroll"

    invoke-virtual {v3, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v10, "_protocol"

    const-string v11, "4"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v10, "_providerid"

    const-string v11, "5"

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v10, "_defaultfolderId"

    const/4 v11, 0x0

    aget-object v11, p2, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v10, "_trashfolderId"

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v10, "_sentfolderId"

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v10, "_draftfolderId"

    const/4 v11, 0x3

    aget-object v11, p2, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v10, "_outfolderId"

    const/4 v11, 0x4

    aget-object v11, p2, v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->checkIfAccount(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 517
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcaseResetDefaultAccount(Landroid/content/Context;)V

    .line 518
    const-string v10, "_defaultaccount"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 521
    .local v8, rowId:Landroid/net/Uri;
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 522
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-gtz v10, :cond_8

    .line 523
    const-string v10, "EAS_AccountUtil"

    const-string v11, "Insert exchange account failed"

    invoke-static {v10, p1, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 530
    :cond_8
    return-wide v0

    .line 452
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v4           #downloadMessageWhenScroll:Ljava/lang/String;
    .end local v7           #refreshMailWhenOpenFolder:Ljava/lang/String;
    .end local v8           #rowId:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 453
    .local v9, uee:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    throw v9

    .line 495
    .end local v9           #uee:Ljava/lang/Exception;
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v4       #downloadMessageWhenScroll:Ljava/lang/String;
    .restart local v7       #refreshMailWhenOpenFolder:Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v10, "0"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 526
    .end local v3           #cv:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 527
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    throw v5
.end method

.method private static insertDefaultMailbox(Landroid/content/Context;)[Ljava/lang/String;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    sget-boolean v19, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string v19, "EAS_AccountUtil"

    const-string v20, "- createAccount_insert_defaultMailbox()"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_0
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v2, v0, [Ljava/lang/String;

    .line 357
    .local v2, Id:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v8, v0, :cond_3

    .line 359
    :try_start_0
    const-string v12, ""

    .line 360
    .local v12, name:Ljava/lang/String;
    const-string v15, "1"

    .line 361
    .local v15, serverfolder:Ljava/lang/String;
    const-string v3, "-1"

    .line 362
    .local v3, account:Ljava/lang/String;
    const-string v16, "-1"

    .line 363
    .local v16, serverid:Ljava/lang/String;
    const-string v13, "-1"

    .line 364
    .local v13, parentid:Ljava/lang/String;
    const-string v18, "-1"

    .line 365
    .local v18, type:Ljava/lang/String;
    const-string v11, "1"

    .line 366
    .local v11, moveGroup:Ljava/lang/String;
    const-string v17, "1"

    .line 367
    .local v17, showSender:Ljava/lang/String;
    const/4 v5, 0x0

    .line 368
    .local v5, defaultFolder:I
    const/4 v6, 0x0

    .line 370
    .local v6, defaultSync:Z
    packed-switch v8, :pswitch_data_0

    .line 405
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v4, cvMailbox:Landroid/content/ContentValues;
    const-string v19, "_undecodename"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v19, "_decodename"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v19, "_shortname"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v19, "_serverfolder"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v19, "_account"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v19, "_serverid"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v19, "_parentid"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v19, "_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v19, "_movegroup"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v19, "_showsender"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v19, "_defaultfolder"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v19, "_default_sync"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 420
    .local v14, rowId:Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 421
    .local v9, id:J
    const-wide/16 v19, 0x0

    cmp-long v19, v9, v19

    if-gtz v19, :cond_2

    .line 422
    sget-boolean v19, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v19, :cond_1

    const-string v19, "EAS_AccountUtil"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Insert default Mailbox table: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 372
    .end local v4           #cvMailbox:Landroid/content/ContentValues;
    .end local v9           #id:J
    .end local v14           #rowId:Landroid/net/Uri;
    :pswitch_0
    const-string v12, "Inbox"

    .line 373
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 374
    const v5, 0x7fffffff

    .line 375
    const/4 v6, 0x1

    .line 376
    goto/16 :goto_1

    .line 378
    :pswitch_1
    const-string v12, "Trash"

    .line 379
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 380
    const v5, 0x7ffffffe

    .line 381
    goto/16 :goto_1

    .line 383
    :pswitch_2
    const-string v12, "Sent"

    .line 384
    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 385
    const v5, 0x7ffffffd

    .line 386
    const-string v11, "2"

    .line 387
    const-string v17, "0"

    .line 388
    goto/16 :goto_1

    .line 390
    :pswitch_3
    const-string v12, "Draft"

    .line 391
    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 392
    const v5, 0x7ffffffc

    .line 393
    const-string v11, "2"

    .line 394
    const-string v17, "0"

    .line 395
    goto/16 :goto_1

    .line 397
    :pswitch_4
    const-string v12, "Out"

    .line 398
    const/16 v19, 0x6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 399
    const v5, 0x7ffffffb

    .line 400
    const-string v11, "2"

    .line 401
    const-string v17, "0"

    goto/16 :goto_1

    .line 424
    .restart local v4       #cvMailbox:Landroid/content/ContentValues;
    .restart local v9       #id:J
    .restart local v14       #rowId:Landroid/net/Uri;
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 428
    .end local v3           #account:Ljava/lang/String;
    .end local v4           #cvMailbox:Landroid/content/ContentValues;
    .end local v5           #defaultFolder:I
    .end local v6           #defaultSync:Z
    .end local v9           #id:J
    .end local v11           #moveGroup:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #parentid:Ljava/lang/String;
    .end local v14           #rowId:Landroid/net/Uri;
    .end local v15           #serverfolder:Ljava/lang/String;
    .end local v16           #serverid:Ljava/lang/String;
    .end local v17           #showSender:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 429
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    throw v7

    .line 432
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    return-object v2

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isAccountDeleted(Landroid/content/Context;J)Z
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 628
    const/4 v8, 0x0

    .line 629
    .local v8, isDelete:Z
    const/4 v6, 0x0

    .line 631
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_del"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 636
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 637
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    .line 645
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    .end local v3           #whereClause:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v9, v8

    .line 649
    :cond_1
    :goto_2
    return v9

    .restart local v3       #whereClause:Ljava/lang/String;
    :cond_2
    move v8, v10

    .line 637
    goto :goto_0

    .line 642
    .end local v3           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 643
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 646
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_3
    throw v0

    .restart local v3       #whereClause:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static isDuplicateAccountName(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 11
    .parameter "displayName"
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 653
    if-nez p0, :cond_0

    move v0, v9

    .line 684
    :goto_0
    return v0

    .line 657
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 658
    const/4 v6, 0x0

    .line 660
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_desc"

    aput-object v4, v2, v3

    const-string v3, "_del <> 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 664
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 675
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 680
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 681
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    .line 684
    goto :goto_0

    .line 670
    .restart local v8       #name:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 671
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    sget-boolean v0, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "EAS_AccountUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate account name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v10

    .line 673
    goto :goto_0

    .line 677
    .end local v8           #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 678
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_8
    throw v0
.end method

.method public static markAsDelete(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 618
    :try_start_0
    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " _id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 619
    .local v2, whereClause:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .local v0, cvs:Landroid/content/ContentValues;
    const-string v3, "_del"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v0           #cvs:Landroid/content/ContentValues;
    .end local v2           #whereClause:Ljava/lang/String;
    :goto_0
    return-void

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeDeletedAccount(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 237
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v11, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 240
    .local v7, curAccount:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 241
    .local v2, proj:[Ljava/lang/String;
    const-string v3, "_provider = ? AND _del=1"

    .line 242
    .local v3, whereClause:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "Exchange"

    aput-object v5, v4, v1

    .line 243
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 244
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 251
    .local v10, id:Ljava/lang/Long;
    sget-object v1, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 252
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v5, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v6           #builder:Landroid/net/Uri$Builder;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #id:Ljava/lang/Long;
    :catch_0
    move-exception v8

    .line 256
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_2
    return-void

    .line 258
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_3
    throw v1

    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1
.end method

.method public static updateAccount(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Z)V
    .locals 12
    .parameter "context"
    .parameter "exAccount"
    .parameter "enableAccount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 293
    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "EAS_AccountUtil"

    const-string v8, "- updateAccount"

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 294
    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_3

    .line 295
    :cond_1
    const-string v7, "EAS_AccountUtil"

    const-string v8, "updateAccount failed: parameter is null"

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 349
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    const/4 v3, 0x0

    .line 304
    .local v3, encPassword:Ljava/lang/String;
    :try_start_0
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 306
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/mail/Account;->encodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 312
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 314
    .local v5, resolver:Landroid/content/ContentResolver;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "_name"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v7, "_emailaddress"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v7, "_username"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v7, "_password"

    invoke-virtual {v1, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v8, "_useSSLin"

    iget-boolean v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->requireSSL:Z

    if-ne v7, v11, :cond_6

    const-string v7, "1"

    :goto_1
    invoke-virtual {v1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v7, "_inserver"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v7, "_easDomain"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->domainName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v7, "_easSvrProtocol"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVer:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v7, "_easHeartBeatInternal"

    iget v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v7, "_easDeviceID"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceID:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v7, "_easDeviceType"

    iget-object v8, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deviceType:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    if-eqz p2, :cond_5

    .line 327
    const-string v7, "_del"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    :cond_5
    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_7

    .line 331
    const-string v7, "EAS_AccountUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAccount() failed: Can\'t retrieve exchange account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 346
    .end local v1           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 347
    .local v2, e:Ljava/lang/Exception;
    throw v2

    .line 308
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 309
    .local v6, uee:Ljava/lang/Exception;
    throw v6

    .line 319
    .end local v6           #uee:Ljava/lang/Exception;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    :cond_6
    :try_start_2
    const-string v7, "0"

    goto :goto_1

    .line 336
    :cond_7
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "EAS_AccountUtil"

    const-string v8, "!!Attention, email address empty"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_8
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "EAS_AccountUtil"

    const-string v8, "!!Attentiln, serverName empty"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_9
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->userName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "EAS_AccountUtil"

    const-string v8, "!!Attention, userName empty"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_a
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->password:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "EAS_AccountUtil"

    const-string v8, "!!Attention, password empty"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_b
    sget-object v7, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 342
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v1, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 344
    .local v4, nRet:I
    if-ge v4, v11, :cond_2

    .line 345
    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "EAS_AccountUtil"

    const-string v8, "updateAccount fail"

    invoke-static {v7, p1, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static updateDefaultMailboxAccount(Landroid/content/Context;[Ljava/lang/String;J)V
    .locals 11
    .parameter "context"
    .parameter "mailboxId"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 534
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gtz v7, :cond_0

    .line 535
    const-string v7, "EAS_AccountUtil"

    const-string v8, "error!! updateDefaultMailboxAccount, accountId <=0"

    invoke-static {v7, p2, p3, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 536
    new-instance v2, Ljava/lang/Exception;

    const-string v7, "updateDefaultMailboxAccount, accountId <=0"

    invoke-direct {v2, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 537
    .local v2, e:Ljava/lang/Exception;
    throw v2

    .line 539
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    if-nez p1, :cond_1

    .line 540
    const-string v7, "EAS_AccountUtil"

    const-string v8, "error!! updateDefaultMailboxAccount, parameter is null"

    invoke-static {v7, p2, p3, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 541
    new-instance v2, Ljava/lang/Exception;

    const-string v7, "updateDefaultMailboxAccount, parameter is null"

    invoke-direct {v2, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 542
    .restart local v2       #e:Ljava/lang/Exception;
    throw v2

    .line 545
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "EAS_AccountUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDefaultMailboxAccount(), length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p2, p3, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 546
    :cond_2
    const/4 v0, 0x0

    .line 548
    .local v0, count:I
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 549
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "_account"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_3

    .line 553
    aget-object v7, p1, v3

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_3
    const-string v7, ","

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, where:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "_id in (%s)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, whereId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v1, v6, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 563
    sget-boolean v7, Lcom/htc/android/mail/eassvc/util/AccountUtil;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "EAS_AccountUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDefaultmailboxAccount, update number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p2, p3, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 564
    :cond_4
    return-void

    .line 559
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #where:Ljava/lang/String;
    .end local v6           #whereId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 560
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    throw v2
.end method

.method public static updateEASOptionValuesForUI(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASOptionForUI;)Z
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "subOptions"

    .prologue
    const/4 v6, 0x1

    .line 852
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v2

    .line 853
    .local v2, dataFilePath:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/easOptionsForUI"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    .local v4, easOptionsForUI:Ljava/io/File;
    const/4 v0, 0x0

    .line 856
    .local v0, bufWriter:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 857
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 859
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v8, 0x28

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .local v1, bufWriter:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 863
    .local v5, strBuffer:Ljava/lang/StringBuffer;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p3, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailTruncationSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p3, Lcom/htc/android/mail/eassvc/util/EASOptionForUI;->mailBodyType:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 874
    if-eqz v1, :cond_1

    .line 875
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    .line 871
    .end local v1           #bufWriter:Ljava/io/BufferedWriter;
    .end local v5           #strBuffer:Ljava/lang/StringBuffer;
    .restart local v0       #bufWriter:Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    return v6

    .line 869
    :catch_0
    move-exception v3

    .line 870
    .local v3, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 871
    const/4 v6, 0x0

    .line 874
    if-eqz v0, :cond_2

    .line 875
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 877
    :catch_1
    move-exception v3

    .line 878
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 873
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 874
    :goto_3
    if-eqz v0, :cond_3

    .line 875
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 873
    :cond_3
    :goto_4
    throw v6

    .line 877
    :catch_2
    move-exception v3

    .line 878
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 877
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bufWriter:Ljava/io/BufferedWriter;
    .restart local v5       #strBuffer:Ljava/lang/StringBuffer;
    :catch_3
    move-exception v3

    .line 878
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 873
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #strBuffer:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #bufWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufWriter:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 869
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .restart local v1       #bufWriter:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #bufWriter:Ljava/io/BufferedWriter;
    .restart local v0       #bufWriter:Ljava/io/BufferedWriter;
    goto :goto_2
.end method
