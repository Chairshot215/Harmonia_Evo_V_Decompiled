.class Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;
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
    .line 345
    iput-object p1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 11
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 348
    const-string v0, "SOCIAL_NETWORK"

    invoke-virtual {p1, v0, v3}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 378
    :goto_0
    return-object p1

    .line 351
    :cond_0
    const/4 v7, 0x0

    .line 353
    .local v7, count:I
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    #getter for: Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->access$700(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 354
    .local v10, selection:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT count(*) FROM (SELECT profile_update._id FROM profile_update INNER JOIN user ON profile_update.uid=user._id AND profile_update.is_read=0 AND profile_update.type=\'status\' AND user.contact_id in ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") GROUP BY user.contact_id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UNION ALL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SELECT profile_update._id FROM profile_update INNER JOIN user ON profile_update.uid=user._id AND profile_update.is_read=0 AND profile_update.type=\'profile\' AND user.contact_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UNION ALL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SELECT photo_update._id FROM photo_update INNER JOIN user ON photo_update.uid=user._id AND photo_update.is_read=0 AND user.contact_id IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") GROUP BY user.contact_id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, QUERY_STATEMENT:Ljava/lang/String;
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->RAW_QUERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 364
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/GroupIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 365
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 367
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v7, v0

    .line 372
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 377
    .end local v1           #queryUri:Landroid/net/Uri;
    .end local v6           #QUERY_STATEMENT:Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #selection:Ljava/lang/String;
    :cond_3
    const-string v0, "SOCIAL_NETWORK"

    invoke-virtual {p1, v0, v7}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method
