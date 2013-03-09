.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;
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
    .line 680
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 13
    .parameter "result"

    .prologue
    .line 682
    const/4 v6, 0x0

    .line 683
    .local v6, count:I
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstancesIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "EVENT"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 719
    :goto_0
    return-object p1

    .line 688
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 689
    .local v11, startTime:J
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v12}, Lcom/android/htccontacts/util/SNUtils;->getEventDaysTimeBySettings(Landroid/content/Context;J)J

    move-result-wide v9

    .line 690
    .local v9, endTime:J
    sget-object v0, Landroid/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "e_start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "e_end"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 695
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify_location=1 AND is_read=0 AND contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v4, v4, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 710
    :goto_1
    if-eqz v7, :cond_1

    .line 712
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 715
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 718
    :cond_1
    const-string v0, "EVENT"

    invoke-virtual {p1, v0, v6}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 703
    :catch_0
    move-exception v8

    .line 704
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "PersonIndicatorRequest"

    const-string v2, "Query Event failed in PersonIndicatorRequest"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 706
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 707
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 715
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method
