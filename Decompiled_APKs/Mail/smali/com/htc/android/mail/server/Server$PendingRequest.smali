.class public Lcom/htc/android/mail/server/Server$PendingRequest;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingRequest"
.end annotation


# instance fields
.field public accountId:J

.field public fromMailboxId:J

.field public id:J

.field private idSeq:Ljava/lang/StringBuilder;

.field public messageId:J

.field public msgIdInHeader:Ljava/lang/String;

.field public requestId:I

.field public toMailboxId:J

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJIJLjava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .parameter "_id"
    .parameter "_accountId"
    .parameter "_requestId"
    .parameter "_messageId"
    .parameter "_uid"
    .parameter "_msgIdInHeader"
    .parameter "_fromMailboxId"

    .prologue
    .line 319
    const-wide/16 v12, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Lcom/htc/android/mail/server/Server$PendingRequest;-><init>(JJIJLjava/lang/String;Ljava/lang/String;JJ)V

    .line 320
    return-void
.end method

.method public constructor <init>(JJIJLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .parameter "_id"
    .parameter "_accountId"
    .parameter "_requestId"
    .parameter "_messageId"
    .parameter "_uid"
    .parameter "_msgIdInHeader"
    .parameter "_fromMailboxId"
    .parameter "_toMailboxId"

    .prologue
    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->idSeq:Ljava/lang/StringBuilder;

    .line 333
    iput-wide p1, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->id:J

    .line 334
    iput-wide p3, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->accountId:J

    .line 335
    iput p5, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->requestId:I

    .line 336
    iput-wide p6, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->messageId:J

    .line 337
    iput-object p8, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    .line 338
    iput-object p9, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->msgIdInHeader:Ljava/lang/String;

    .line 339
    iput-wide p10, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->fromMailboxId:J

    .line 340
    iput-wide p12, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->toMailboxId:J

    .line 341
    iget-wide v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/mail/server/Server$PendingRequest;->add(J)V

    .line 342
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 14
    .parameter "_id"
    .parameter "_accountId"
    .parameter "mailbox_id"

    .prologue
    .line 329
    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Lcom/htc/android/mail/server/Server$PendingRequest;-><init>(JJIJLjava/lang/String;Ljava/lang/String;JJ)V

    .line 330
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .parameter "_id"
    .parameter "_accountId"
    .parameter "_messageId"
    .parameter "_uid"
    .parameter "_msgIdInHeader"
    .parameter "_fromMailboxId"

    .prologue
    .line 314
    const-wide/16 v11, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/mail/server/Server$PendingRequest;-><init>(JJJLjava/lang/String;Ljava/lang/String;JJ)V

    .line 315
    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 14
    .parameter "_id"
    .parameter "_accountId"
    .parameter "_messageId"
    .parameter "_uid"
    .parameter "_msgIdInHeader"
    .parameter "_fromMailboxId"
    .parameter "_toMailboxId"

    .prologue
    .line 324
    const/4 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/htc/android/mail/server/Server$PendingRequest;-><init>(JJIJLjava/lang/String;Ljava/lang/String;JJ)V

    .line 325
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 2
    .parameter "_id"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->idSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->idSeq:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->idSeq:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public delete()I
    .locals 8

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 375
    .local v1, result:I
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id in (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/htc/android/mail/server/Server$PendingRequest;->getIdSeq()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sPendingRequestURI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 380
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, re:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/server/Server;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete request fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIdSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->idSeq:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromMailboxId(J)V
    .locals 0
    .parameter "_fromMailboxId"

    .prologue
    .line 353
    iput-wide p1, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->fromMailboxId:J

    .line 354
    return-void
.end method

.method public updateRequestId(I)V
    .locals 0
    .parameter "_requestId"

    .prologue
    .line 345
    iput p1, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->requestId:I

    .line 346
    return-void
.end method

.method public updateToMailboxId(J)V
    .locals 0
    .parameter "_toMailboxId"

    .prologue
    .line 357
    iput-wide p1, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->toMailboxId:J

    .line 358
    return-void
.end method

.method public updateUid(Ljava/lang/String;)V
    .locals 0
    .parameter "_uid"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/android/mail/server/Server$PendingRequest;->uid:Ljava/lang/String;

    .line 350
    return-void
.end method
