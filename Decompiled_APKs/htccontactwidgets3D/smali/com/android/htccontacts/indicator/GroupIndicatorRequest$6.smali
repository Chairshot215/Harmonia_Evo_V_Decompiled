.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;
.super Ljava/lang/Object;
.source "GroupIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 14
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 440
    const-string v0, "EVENT"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 468
    :goto_0
    return-object p1

    .line 443
    :cond_0
    const/4 v6, 0x0

    .line 445
    .local v6, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 446
    .local v12, startTime:J
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mContext:Landroid/content/Context;

    invoke-static {v0, v12, v13}, Lcom/android/htccontacts/util/SNUtils;->getEventDaysTimeBySettings(Landroid/content/Context;J)J

    move-result-wide v8

    .line 447
    .local v8, endTime:J
    sget-object v0, Landroid/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "e_start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "e_end"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 448
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #getter for: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$900(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 449
    .local v11, selection:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify_location=1 AND is_read=0 AND contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 457
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 459
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v6, v0

    .line 462
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 467
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v11           #selection:Ljava/lang/String;
    :cond_2
    const-string v0, "EVENT"

    invoke-virtual {p1, v0, v6}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method
