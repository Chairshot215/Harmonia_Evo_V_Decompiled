.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;
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
    .line 386
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 12
    .parameter "result"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 388
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 389
    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0, v10}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 428
    :goto_0
    return-object p1

    .line 392
    :cond_0
    const/4 v6, 0x0

    .line 394
    .local v6, count:I
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #getter for: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$600(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 396
    .local v9, selection:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read=0 AND msg_type=0 AND (mms_type=130 OR mms_type=132) AND address IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 399
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 401
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v6, v0

    .line 404
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 410
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #selection:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #getter for: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$800(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 412
    .restart local v9       #selection:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read=0 AND (sms_type=1 OR mms_type=130 OR mms_type=132) AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    .restart local v7       #cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 418
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v6, v0

    .line 421
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 427
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #selection:Ljava/lang/String;
    :cond_4
    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0, v6}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method
