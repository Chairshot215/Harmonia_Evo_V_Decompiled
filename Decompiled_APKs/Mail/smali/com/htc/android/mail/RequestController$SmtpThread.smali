.class Lcom/htc/android/mail/RequestController$SmtpThread;
.super Ljava/lang/Thread;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmtpThread"
.end annotation


# static fields
.field private static final mWaitTime:J = 0x2710L


# instance fields
.field private mIsStop:Z

.field private mMailMessage:Lcom/htc/android/mail/MailMessage;

.field private mMailMessageLock:Ljava/lang/Object;

.field private mMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSmtpServer:Lcom/htc/android/mail/server/Server;

.field private mUnknowHostLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/RequestController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1786
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1787
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mUnknowHostLock:Ljava/lang/Object;

    .line 1788
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    .line 1790
    iput-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    .line 1791
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mIsStop:Z

    .line 1793
    iput-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    .line 1794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    return-void
.end method

.method private SetMailActFlag(Lcom/htc/android/mail/Account;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 11
    .parameter "account"
    .parameter "uri"
    .parameter "b"

    .prologue
    const v10, 0xffff

    const/high16 v9, 0x1

    const/4 v8, 0x0

    .line 2239
    const-string v5, "mailAct"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2240
    .local v2, actflag:I
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "RequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actflag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    :cond_0
    if-lt v2, v9, :cond_1

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 2321
    :cond_1
    :goto_0
    return-void

    .line 2243
    :cond_2
    const/4 v0, 0x0

    .line 2244
    .local v0, Match:I
    const/4 v1, -0x1

    .line 2248
    .local v1, SentMailID:I
    shr-int/lit8 v5, v2, 0x10

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_8

    .line 2249
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "RequestController"

    const-string v6, "Reply Mail!!!!!"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    :cond_3
    sub-int/2addr v2, v9

    .line 2252
    and-int v1, v2, v10

    .line 2253
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "RequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SentMailID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :cond_4
    const/4 v0, 0x1

    .line 2265
    :cond_5
    :goto_1
    if-ge v2, v9, :cond_6

    const/4 v2, 0x0

    .line 2267
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "RequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actflag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    :cond_7
    if-lez v0, :cond_1

    .line 2271
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2272
    .local v3, flag:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 2273
    const-string v5, "_mailAct"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/MailFlag/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2284
    .local v4, url:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2288
    const/4 v4, 0x0

    .line 2297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/MailFlag/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2314
    new-instance v3, Landroid/content/ContentValues;

    .end local v3           #flag:Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2315
    .restart local v3       #flag:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 2316
    const-string v5, "_mailAct"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2318
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2255
    .end local v3           #flag:Landroid/content/ContentValues;
    .end local v4           #url:Landroid/net/Uri;
    :cond_8
    shr-int/lit8 v5, v2, 0x11

    and-int/lit8 v5, v5, 0x1

    if-lez v5, :cond_5

    .line 2256
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "RequestController"

    const-string v6, "Forward Mail!!!!!"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    :cond_9
    const/high16 v5, 0x2

    sub-int/2addr v2, v5

    .line 2259
    and-int v1, v2, v10

    .line 2260
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "RequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SentMailID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :cond_a
    const/4 v0, 0x2

    goto/16 :goto_1
.end method

.method private getMailBundle(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 23
    .parameter "messageCursor"
    .parameter "partsUri"

    .prologue
    .line 2151
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2153
    .local v10, b:Landroid/os/Bundle;
    const-string v3, "account"

    const-string v4, "_account"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v10, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2154
    const-string v3, "to"

    const-string v4, "_to"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    const-string v3, "cc"

    const-string v4, "_cc"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const-string v3, "bcc"

    const-string v4, "_bcc"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string v3, "subject"

    const-string v4, "_subject"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v3, "importance"

    const-string v4, "_importance"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2160
    const-string v3, "mailboxId"

    const-string v4, "_mailboxId"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v10, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2161
    const-string v3, "messageid"

    const-string v4, "_messageid"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    const-string v3, "refMsgId"

    const-string v4, "_refMsgId"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v10, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2163
    const-string v3, "smartCommand"

    const-string v4, "_smartCommand"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v10, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2164
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 2166
    .local v2, cp:Landroid/content/IContentProvider;
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2167
    .local v16, messageId:J
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_message = \'%d\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2169
    .local v5, where:Ljava/lang/String;
    const-string v3, "id"

    move-wide/from16 v0, v16

    invoke-virtual {v10, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2171
    const-string v18, ""

    .line 2172
    .local v18, mimeType:Ljava/lang/String;
    const-string v14, ""

    .line 2173
    .local v14, fileName:Ljava/lang/String;
    const-string v15, ""

    .line 2174
    .local v15, filePath:Ljava/lang/String;
    const-string v21, ""

    .line 2175
    .local v21, text:Ljava/lang/String;
    sget v12, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    .line 2176
    .local v12, contenttype:I
    const-string v11, ""

    .line 2177
    .local v11, cid:Ljava/lang/String;
    const/16 v19, 0x0

    .line 2179
    .local v19, partCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2181
    .local v9, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2184
    .local v20, relatedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    :try_start_0
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2185
    if-eqz v19, :cond_2

    .line 2186
    const/4 v8, 0x0

    .line 2187
    .local v8, attachment:Lcom/htc/android/mail/Attachment;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2188
    const-string v3, "_mimetype"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2190
    const-string v3, "_filename"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2192
    const-string v3, "_filepath"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2194
    const-string v3, "_text"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2195
    const-string v3, "_contenttype"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2197
    const-string v3, "_cid"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2199
    const-string v3, "text/html"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 2201
    :cond_1
    const-string v3, "htmlBody"

    move-object/from16 v0, v21

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2228
    .end local v8           #attachment:Lcom/htc/android/mail/Attachment;
    :catch_0
    move-exception v13

    .line 2229
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "RequestController"

    const-string v4, "query parts fail"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2230
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2232
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v10, 0x0

    .end local v10           #b:Landroid/os/Bundle;
    :goto_1
    return-object v10

    .line 2202
    .restart local v8       #attachment:Lcom/htc/android/mail/Attachment;
    .restart local v10       #b:Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string v3, "text/plain"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 2204
    :cond_4
    const-string v3, "plainBody"

    move-object/from16 v0, v21

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2205
    :cond_5
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_MIXED:I

    if-ne v12, v3, :cond_6

    .line 2206
    new-instance v8, Lcom/htc/android/mail/Attachment;

    .end local v8           #attachment:Lcom/htc/android/mail/Attachment;
    invoke-direct {v8}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 2207
    .restart local v8       #attachment:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 2208
    iput-object v14, v8, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 2209
    iput-object v15, v8, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 2210
    iput v12, v8, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 2211
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2212
    :cond_6
    sget v3, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    if-ne v12, v3, :cond_0

    .line 2213
    new-instance v8, Lcom/htc/android/mail/Attachment;

    .end local v8           #attachment:Lcom/htc/android/mail/Attachment;
    invoke-direct {v8}, Lcom/htc/android/mail/Attachment;-><init>()V

    .line 2214
    .restart local v8       #attachment:Lcom/htc/android/mail/Attachment;
    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    .line 2215
    iput-object v14, v8, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 2216
    iput-object v15, v8, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 2217
    iput v12, v8, Lcom/htc/android/mail/Attachment;->contenttype:I

    .line 2218
    iput-object v11, v8, Lcom/htc/android/mail/Attachment;->cid:Ljava/lang/String;

    .line 2219
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2222
    :cond_7
    const-string v3, "attachment"

    invoke-virtual {v10, v3, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2223
    const-string v3, "related"

    move-object/from16 v0, v20

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2224
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2225
    const/16 v19, 0x0

    .line 2226
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addMessage(Lcom/htc/android/mail/MailMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 1825
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mIsStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1835
    :goto_0
    monitor-exit p0

    return-void

    .line 1826
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$SmtpThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$SmtpThread;->start()V

    .line 1827
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1828
    :try_start_2
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v0, :cond_2

    iget-wide v2, p1, Lcom/htc/android/mail/MailMessage;->id:J

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v4, v0, Lcom/htc/android/mail/MailMessage;->id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1830
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RequestController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert smtp queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1834
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1825
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1797
    const/4 v0, 0x1

    .line 1799
    .local v0, bEmpty:Z
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1800
    const/4 v0, 0x0

    .line 1807
    :goto_0
    return v0

    .line 1802
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v1, :cond_1

    .line 1803
    const/4 v0, 0x0

    goto :goto_0

    .line 1804
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeMailMessage(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const/4 v6, 0x0

    .line 1838
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v5, :cond_3

    .line 1839
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    new-array v6, v6, [Lcom/htc/android/mail/MailMessage;

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/htc/android/mail/MailMessage;

    .line 1840
    .local v3, mailMessages:[Lcom/htc/android/mail/MailMessage;
    move-object v0, v3

    .local v0, arr$:[Lcom/htc/android/mail/MailMessage;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 1841
    .local v4, msg:Lcom/htc/android/mail/MailMessage;
    if-nez v4, :cond_1

    .line 1840
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1842
    :cond_1
    iget-wide v5, v4, Lcom/htc/android/mail/MailMessage;->accountId:J

    cmp-long v5, v5, p1

    if-eqz v5, :cond_2

    cmp-long v5, p1, v9

    if-nez v5, :cond_0

    .line 1843
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1844
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    iget-wide v6, v4, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1849
    .end local v0           #arr$:[Lcom/htc/android/mail/MailMessage;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #mailMessages:[Lcom/htc/android/mail/MailMessage;
    .end local v4           #msg:Lcom/htc/android/mail/MailMessage;
    :cond_3
    iget-object v6, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1850
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v5, Lcom/htc/android/mail/MailMessage;->accountId:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_4

    cmp-long v5, p1, v9

    if-nez v5, :cond_5

    .line 1852
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_5

    .line 1854
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 1856
    iget-object v5, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    const/4 v7, 0x0

    iput v7, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 1859
    :cond_5
    monitor-exit v6

    .line 1860
    return-void

    .line 1859
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeMessage(Lcom/htc/android/mail/MailMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1864
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    iget-wide v1, p1, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    iget-object v1, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1866
    :try_start_0
    iget-wide v2, p1, Lcom/htc/android/mail/MailMessage;->id:J

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v4, v0, Lcom/htc/android/mail/MailMessage;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 1869
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/android/mail/server/Server;->state:I

    .line 1872
    :cond_0
    monitor-exit v1

    .line 1873
    return-void

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 1920
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1921
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 1922
    .local v36, values:Landroid/content/ContentValues;
    const/16 v21, 0x2

    .line 1923
    .local v21, ioRetryTime:I
    const/16 v29, 0x0

    .line 1925
    .local v29, redo:Z
    const/16 v24, 0x0

    .line 1926
    .local v24, messagesCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1927
    .local v15, account:Lcom/htc/android/mail/Account;
    const/16 v30, 0x0

    .line 1929
    .local v30, retryCountToUpdate:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mIsStop:Z

    if-nez v5, :cond_18

    .line 1931
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    .line 1932
    .local v3, cp:Landroid/content/IContentProvider;
    if-nez v29, :cond_7

    .line 1933
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_2

    if-eqz v15, :cond_2

    .line 1934
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 1936
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v0, v5, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v26, v0

    .line 1937
    .local v26, outMailboxId:J
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_mailboxId = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1938
    .local v6, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "count(_id) as total"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1939
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    .line 1940
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1941
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1942
    .local v35, total:I
    if-nez v35, :cond_1

    .line 1943
    new-instance v31, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 1944
    .local v31, sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    .line 1947
    .end local v31           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    .end local v35           #total:I
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1951
    .end local v6           #where:Ljava/lang/String;
    .end local v17           #c:Landroid/database/Cursor;
    .end local v26           #outMailboxId:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1952
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    .line 1953
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    const/4 v15, 0x0

    .line 1956
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/android/mail/MailMessage;

    .line 1957
    .local v23, mailMessage:Lcom/htc/android/mail/MailMessage;
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "RequestController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "take smtp messageId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessageLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1960
    :try_start_3
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    .line 1961
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    invoke-virtual {v5}, Lcom/htc/android/mail/MailMessage;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v15

    .line 1962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget v5, v5, Lcom/htc/android/mail/MailMessage;->retryCount:I

    add-int/lit8 v30, v5, -0x1

    .line 1963
    if-nez v15, :cond_6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2137
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_4
    const/16 v24, 0x0

    .line 2140
    if-nez v29, :cond_0

    .line 2141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v5, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .end local v3           #cp:Landroid/content/IContentProvider;
    .end local v23           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :goto_1
    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1953
    .restart local v3       #cp:Landroid/content/IContentProvider;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2129
    .end local v3           #cp:Landroid/content/IContentProvider;
    :catch_0
    move-exception v18

    .line 2130
    .local v18, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "RequestController"

    const-string v7, "query message fail"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2137
    if-eqz v24, :cond_5

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_5
    const/16 v24, 0x0

    .line 2140
    if-nez v29, :cond_0

    .line 2141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v5, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1

    .line 1964
    .end local v18           #e:Landroid/os/RemoteException;
    .restart local v3       #cp:Landroid/content/IContentProvider;
    .restart local v23       #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1965
    const/16 v21, 0x2

    .line 1967
    .end local v23           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_7
    const/16 v29, 0x0

    .line 1969
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiLock()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$600(Lcom/htc/android/mail/RequestController;)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerLock()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$700(Lcom/htc/android/mail/RequestController;)V

    .line 1973
    const/4 v4, 0x0

    .line 1974
    .local v4, messagesUri:Landroid/net/Uri;
    const/16 v28, 0x0

    .line 1975
    .local v28, partsUri:Landroid/net/Uri;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v0, v5, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v26, v0

    .line 1976
    .restart local v26       #outMailboxId:J
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_account = \'%d\' AND _mailboxId = \'%d\' AND _id = \'%d\'"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v10, v10, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1979
    .restart local v6       #where:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1996
    :cond_8
    :goto_2
    :pswitch_0
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getSentMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-wide v0, v5, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v32, v0

    .line 1997
    .local v32, sentMailboxId:J
    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentValues;->clear()V

    .line 1998
    const-string v5, "_mailboxId"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1999
    const-string v5, "_read"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2000
    const-string v5, "_retryCount"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 2003
    if-eqz v24, :cond_d

    .line 2005
    const/16 v22, 0x0

    .line 2006
    .local v22, isSendMailSuccess:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/server/ServerPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/server/ServerPool;

    move-result-object v34

    .line 2007
    .local v34, serverPool:Lcom/htc/android/mail/server/ServerPool;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v5

    if-eqz v5, :cond_b

    .line 2009
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/RequestController$SmtpThread;->getMailBundle(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v16

    .line 2010
    .local v16, b:Landroid/os/Bundle;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_12

    .line 2011
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "RequestController"

    const-string v7, "OK, Exchange start to sendMail"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    :cond_9
    new-instance v19, Lcom/htc/android/mail/server/ExchangeServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v15}, Lcom/htc/android/mail/server/ExchangeServer;-><init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V

    .line 2013
    .local v19, exchgSvr:Lcom/htc/android/mail/server/ExchangeServer;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/server/ExchangeServer;->sendMail(Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 2115
    .end local v19           #exchgSvr:Lcom/htc/android/mail/server/ExchangeServer;
    :cond_a
    :goto_3
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2120
    .end local v16           #b:Landroid/os/Bundle;
    :cond_b
    :goto_4
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_c

    .line 2121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_c

    .line 2122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    const/4 v7, 0x0

    iput v7, v5, Lcom/htc/android/mail/server/Server;->state:I

    .line 2123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v15, v7}, Lcom/htc/android/mail/server/ServerPool;->putServerBack(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/server/Server;)V

    .line 2126
    :cond_c
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 2127
    const/16 v24, 0x0

    .line 2135
    .end local v22           #isSendMailSuccess:Z
    .end local v34           #serverPool:Lcom/htc/android/mail/server/ServerPool;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2137
    if-eqz v24, :cond_e

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_e
    const/16 v24, 0x0

    .line 2140
    if-nez v29, :cond_0

    .line 2141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v5, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_1

    .line 1964
    .end local v4           #messagesUri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v26           #outMailboxId:J
    .end local v28           #partsUri:Landroid/net/Uri;
    .end local v32           #sentMailboxId:J
    .restart local v23       #mailMessage:Lcom/htc/android/mail/MailMessage;
    :catchall_1
    move-exception v5

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    .line 2131
    .end local v3           #cp:Landroid/content/IContentProvider;
    .end local v23           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :catch_1
    move-exception v18

    .line 2132
    .local v18, e:Ljava/lang/InterruptedException;
    :try_start_d
    const-string v5, "RequestController"

    const-string v7, "catch interrupted exception"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2137
    if-eqz v24, :cond_f

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_f
    const/16 v24, 0x0

    .line 2140
    if-nez v29, :cond_0

    .line 2141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v5, :cond_0

    .line 2142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_1

    .line 1984
    .end local v18           #e:Ljava/lang/InterruptedException;
    .restart local v3       #cp:Landroid/content/IContentProvider;
    .restart local v4       #messagesUri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v26       #outMailboxId:J
    .restart local v28       #partsUri:Landroid/net/Uri;
    :pswitch_1
    :try_start_e
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    .line 1985
    sget-object v28, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 1986
    goto/16 :goto_2

    .line 1989
    :pswitch_2
    sget-object v4, Lcom/htc/android/mail/MailProvider;->sEASMessagesURI:Landroid/net/Uri;

    .line 1990
    sget-object v28, Lcom/htc/android/mail/MailProvider;->sEASPartsURI:Landroid/net/Uri;

    .line 1991
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "RequestController"

    const-string v7, "case Server Exchange"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_2

    .line 2135
    .end local v3           #cp:Landroid/content/IContentProvider;
    .end local v4           #messagesUri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v26           #outMailboxId:J
    .end local v28           #partsUri:Landroid/net/Uri;
    :catchall_2
    move-exception v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setWifiRelease()V
    invoke-static {v7}, Lcom/htc/android/mail/RequestController;->access$1700(Lcom/htc/android/mail/RequestController;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->setPowerRelease()V
    invoke-static {v7}, Lcom/htc/android/mail/RequestController;->access$1800(Lcom/htc/android/mail/RequestController;)V

    .line 2137
    if-eqz v24, :cond_10

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_10
    const/16 v24, 0x0

    .line 2140
    if-nez v29, :cond_11

    .line 2141
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    if-eqz v7, :cond_11

    .line 2142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v8, v8, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    :cond_11
    throw v5

    .line 2015
    .restart local v3       #cp:Landroid/content/IContentProvider;
    .restart local v4       #messagesUri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v16       #b:Landroid/os/Bundle;
    .restart local v22       #isSendMailSuccess:Z
    .restart local v26       #outMailboxId:J
    .restart local v28       #partsUri:Landroid/net/Uri;
    .restart local v32       #sentMailboxId:J
    .restart local v34       #serverPool:Lcom/htc/android/mail/server/ServerPool;
    :cond_12
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #calls: Lcom/htc/android/mail/RequestController;->getContext()Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1600(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v15}, Lcom/htc/android/mail/server/ServerPool;->getSmtpServer(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/server/Server;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    .line 2016
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/htc/android/mail/server/Server;->sendMail(Landroid/os/Bundle;)V

    .line 2017
    new-instance v7, Lcom/htc/android/mail/ulog/MULogMgr;

    invoke-direct {v7}, Lcom/htc/android/mail/ulog/MULogMgr;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x1

    invoke-virtual/range {v7 .. v14}, Lcom/htc/android/mail/ulog/MULogMgr;->updateMailCountRecord(Landroid/content/Context;JJJ)V

    .line 2018
    const/16 v22, 0x1

    .line 2019
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_id = \'%d\'"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v10, v10, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2020
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->syncSentMailToServer()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2021
    const/4 v5, 0x0

    move-object/from16 v0, v36

    invoke-interface {v3, v4, v0, v6, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2022
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/htc/android/mail/RequestController;->syncMailToServer(J)V

    .line 2028
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v7

    #calls: Lcom/htc/android/mail/RequestController;->checkSendErrorNotification(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    invoke-static {v5, v7, v15}, Lcom/htc/android/mail/RequestController;->access$2600(Lcom/htc/android/mail/RequestController;Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_f .. :try_end_f} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 2033
    :try_start_10
    const-string v5, "mailAct"

    const-string v7, "_mailAct"

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2036
    const-string v5, "_id"

    const-string v7, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 2043
    :goto_6
    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v4, v1}, Lcom/htc/android/mail/RequestController$SmtpThread;->SetMailActFlag(Lcom/htc/android/mail/Account;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2045
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 2046
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    invoke-static {v5, v15, v7}, Lcom/htc/android/mail/MailCommon;->syncMailViaMailService(Landroid/content/Context;Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_3

    .line 2050
    .end local v16           #b:Landroid/os/Bundle;
    :catch_2
    move-exception v18

    .line 2051
    .local v18, e:Ljava/io/IOException;
    :try_start_12
    const-string v5, "RequestController"

    const-string v7, "IOException"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    if-lez v21, :cond_16

    .line 2053
    const-string v5, "RequestController"

    const-string v7, "try again"

    invoke-static {v5, v7}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2054
    const/16 v29, 0x1

    .line 2055
    add-int/lit8 v21, v21, -0x1

    .line 2057
    :try_start_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mUnknowHostLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_6

    .line 2058
    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mUnknowHostLock:Ljava/lang/Object;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 2059
    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 2115
    :cond_13
    :goto_7
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_4

    .line 2024
    .end local v18           #e:Ljava/io/IOException;
    .restart local v16       #b:Landroid/os/Bundle;
    :cond_14
    const/4 v5, 0x0

    :try_start_16
    invoke-interface {v3, v4, v6, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_16 .. :try_end_16} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_5

    .line 2069
    .end local v16           #b:Landroid/os/Bundle;
    :catch_3
    move-exception v18

    .line 2070
    .local v18, e:Lcom/htc/android/mail/exception/SmtpException;
    :try_start_17
    const-string v5, "RequestController"

    const-string v7, "SmtpException"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2074
    move-object/from16 v0, v18

    instance-of v5, v0, Lcom/htc/android/mail/exception/AolSpamException;

    if-eqz v5, :cond_17

    .line 2075
    new-instance v25, Lcom/htc/android/mail/AolSpamNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/AolSpamNotification;-><init>(Landroid/content/Context;)V

    .line 2079
    .local v25, notify:Lcom/htc/android/mail/MailNotification;
    :goto_8
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 2115
    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_4

    .line 2038
    .end local v18           #e:Lcom/htc/android/mail/exception/SmtpException;
    .end local v25           #notify:Lcom/htc/android/mail/MailNotification;
    .restart local v16       #b:Landroid/os/Bundle;
    :catch_4
    move-exception v18

    .line 2039
    .local v18, e:Ljava/lang/NumberFormatException;
    :try_start_19
    const-string v5, "RequestController"

    const-string v7, "get Interger.valueOf exception in SmtpThread.Run"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Lcom/htc/android/mail/exception/SmtpException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Lcom/htc/android/mail/exception/AuthorizationException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Lcom/htc/android/mail/exception/NoSupportAuthException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Lcom/htc/android/mail/exception/NoTLSSupportException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_6

    .line 2080
    .end local v16           #b:Landroid/os/Bundle;
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v18

    .line 2081
    .local v18, e:Ljava/security/cert/CertificateException;
    :try_start_1a
    const-string v5, "RequestController"

    const-string v7, "CertificateException"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2084
    new-instance v25, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2086
    .local v25, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showNotification(J)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 2115
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_1

    goto/16 :goto_4

    .line 2059
    .end local v25           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    .local v18, e:Ljava/io/IOException;
    :catchall_3
    move-exception v5

    :try_start_1c
    monitor-exit v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    throw v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_6

    .line 2060
    :catch_6
    move-exception v20

    .line 2061
    .local v20, ie:Ljava/lang/InterruptedException;
    :try_start_1e
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "RequestController"

    const-string v7, "catch InterruptedException"

    move-object/from16 v0, v20

    invoke-static {v5, v7, v0}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto/16 :goto_7

    .line 2115
    .end local v18           #e:Ljava/io/IOException;
    .end local v20           #ie:Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v5

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v7, :cond_15

    if-nez v22, :cond_15

    .line 2116
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v7}, Lcom/htc/android/mail/server/Server;->close()V

    .line 2115
    :cond_15
    throw v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_1

    .line 2064
    .restart local v18       #e:Ljava/io/IOException;
    :cond_16
    :try_start_20
    new-instance v31, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2066
    .restart local v31       #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I

    .line 2067
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    move/from16 v0, v30

    invoke-static {v5, v7, v8, v0}, Lcom/htc/android/mail/MailProvider;->updateRetryCountToMessage(Landroid/content/Context;JI)I

    goto/16 :goto_7

    .line 2077
    .end local v31           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    .local v18, e:Lcom/htc/android/mail/exception/SmtpException;
    :cond_17
    new-instance v25, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .local v25, notify:Lcom/htc/android/mail/MailNotification;
    goto/16 :goto_8

    .line 2087
    .end local v18           #e:Lcom/htc/android/mail/exception/SmtpException;
    .end local v25           #notify:Lcom/htc/android/mail/MailNotification;
    :catch_7
    move-exception v18

    .line 2088
    .local v18, e:Lcom/htc/android/mail/exception/AuthorizationException;
    const-string v5, "RequestController"

    const-string v7, "AuthorizationExcepion"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2089
    new-instance v25, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2091
    .local v25, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showNotification(J)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    .line 2115
    :try_start_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_1

    goto/16 :goto_4

    .line 2092
    .end local v18           #e:Lcom/htc/android/mail/exception/AuthorizationException;
    .end local v25           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    :catch_8
    move-exception v18

    .line 2093
    .local v18, e:Lcom/htc/android/mail/exception/NoSupportAuthException;
    :try_start_22
    const-string v5, "RequestController"

    const-string v7, "NoSupportAuthException"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2094
    new-instance v25, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2096
    .restart local v25       #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showNotification(J)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    .line 2115
    :try_start_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_1

    goto/16 :goto_4

    .line 2097
    .end local v18           #e:Lcom/htc/android/mail/exception/NoSupportAuthException;
    .end local v25           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    :catch_9
    move-exception v18

    .line 2098
    .local v18, e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    :try_start_24
    const-string v5, "RequestController"

    const-string v7, "NoTLSSupportException"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    new-instance v25, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2101
    .restart local v25       #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showNotification(J)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    .line 2115
    :try_start_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_1

    goto/16 :goto_4

    .line 2102
    .end local v18           #e:Lcom/htc/android/mail/exception/NoTLSSupportException;
    .end local v25           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    :catch_a
    move-exception v18

    .line 2103
    .local v18, e:Ljava/lang/OutOfMemoryError;
    :try_start_26
    const-string v5, "RequestController"

    const-string v7, "OutOfMemoryError"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2104
    new-instance v31, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2106
    .restart local v31       #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I

    .line 2107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    move/from16 v0, v30

    invoke-static {v5, v7, v8, v0}, Lcom/htc/android/mail/MailProvider;->updateRetryCountToMessage(Landroid/content/Context;JI)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 2115
    :try_start_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_1

    goto/16 :goto_4

    .line 2108
    .end local v18           #e:Ljava/lang/OutOfMemoryError;
    .end local v31           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    :catch_b
    move-exception v18

    .line 2109
    .local v18, e:Ljava/lang/Exception;
    :try_start_28
    const-string v5, "RequestController"

    const-string v7, "sendmail fail"

    move-object/from16 v0, v18

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2110
    new-instance v31, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 2112
    .restart local v31       #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    invoke-virtual {v15}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I

    .line 2113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMailMessage:Lcom/htc/android/mail/MailMessage;

    iget-wide v7, v7, Lcom/htc/android/mail/MailMessage;->id:J

    move/from16 v0, v30

    invoke-static {v5, v7, v8, v0}, Lcom/htc/android/mail/MailProvider;->updateRetryCountToMessage(Landroid/content/Context;JI)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    .line 2115
    :try_start_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v5, :cond_b

    if-nez v22, :cond_b

    .line 2116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v5}, Lcom/htc/android/mail/server/Server;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_1

    goto/16 :goto_4

    .line 2148
    .end local v3           #cp:Landroid/content/IContentProvider;
    .end local v4           #messagesUri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v22           #isSendMailSuccess:Z
    .end local v26           #outMailboxId:J
    .end local v28           #partsUri:Landroid/net/Uri;
    .end local v31           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    .end local v32           #sentMailboxId:J
    .end local v34           #serverPool:Lcom/htc/android/mail/server/ServerPool;
    :cond_18
    return-void

    .line 1979
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendAllMail(Lcom/htc/android/mail/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 1876
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/RequestController$SmtpThread$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/RequestController$SmtpThread$1;-><init>(Lcom/htc/android/mail/RequestController$SmtpThread;Lcom/htc/android/mail/Account;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1917
    return-void
.end method

.method public declared-synchronized stopRunning()V
    .locals 2

    .prologue
    .line 1812
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mIsStop:Z

    .line 1813
    invoke-virtual {p0}, Lcom/htc/android/mail/RequestController$SmtpThread;->interrupt()V

    .line 1814
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    invoke-virtual {v0}, Lcom/htc/android/mail/server/Server;->stop()V

    .line 1816
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpServer:Lcom/htc/android/mail/server/Server;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/mail/server/Server;->state:I

    .line 1818
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 1819
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mSmtpRequestQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1821
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/RequestController$SmtpThread;->mMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    :cond_2
    monitor-exit p0

    return-void

    .line 1812
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
