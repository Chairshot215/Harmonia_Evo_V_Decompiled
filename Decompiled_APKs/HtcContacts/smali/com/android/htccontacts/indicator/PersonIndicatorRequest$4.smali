.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 12
    .parameter "result"

    .prologue
    const/16 v3, 0x2c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 416
    const/4 v7, 0x0

    .line 419
    .local v7, count:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v6, addr:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 421
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 422
    .local v9, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 423
    .local v11, mailCount:I
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf0

    if-ge v11, v0, :cond_0

    .line 424
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 425
    .local v10, mail:Ljava/lang/String;
    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    add-int/lit8 v11, v11, 0x1

    .line 428
    goto :goto_0

    .line 429
    .end local v10           #mail:Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    .line 431
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 433
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    const-string v0, " _fromEmail in ("

    invoke-virtual {v6, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 438
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 440
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    int-to-long v0, v7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v7, v0

    .line 448
    :cond_3
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 454
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11           #mailCount:I
    :cond_4
    const-string v0, "EMAIL"

    invoke-virtual {p1, v0, v7}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 455
    return-object p1

    .line 448
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11       #mailCount:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 444
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method
