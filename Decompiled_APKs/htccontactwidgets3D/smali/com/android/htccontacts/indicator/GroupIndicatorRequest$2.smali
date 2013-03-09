.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;
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
    .line 278
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 11
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 281
    const-string v0, "CALLLOG"

    invoke-virtual {p1, v0, v10}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 303
    :goto_0
    return-object p1

    .line 284
    :cond_0
    const/4 v6, 0x0

    .line 286
    .local v6, count:I
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #getter for: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$500(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;

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

    .line 287
    .local v9, selection:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://call_log/miss_calls_count_by_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_count"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id IN ("

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

    .line 290
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 292
    :goto_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    int-to-long v0, v6

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v6, v0

    goto :goto_2

    .line 297
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 302
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #selection:Ljava/lang/String;
    :cond_2
    const-string v0, "CALLLOG"

    invoke-virtual {p1, v0, v6}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #selection:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method
