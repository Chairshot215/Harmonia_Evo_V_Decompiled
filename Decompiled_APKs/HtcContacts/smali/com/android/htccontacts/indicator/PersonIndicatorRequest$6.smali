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
    .line 501
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 10
    .parameter "result"

    .prologue
    .line 503
    const/4 v8, 0x0

    .line 504
    .local v8, count:I
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 505
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v1, "true"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 507
    const/4 v7, 0x0

    .line 510
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://mms-sms-v2/get-UnreadCount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 512
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-wide v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 515
    if-eqz v7, :cond_0

    .line 516
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 524
    :cond_0
    if-eqz v7, :cond_1

    .line 525
    .end local v9           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1, v8}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 530
    return-object p1

    .line 524
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 525
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 524
    :cond_2
    throw v0

    .line 520
    :catch_0
    move-exception v0

    .line 524
    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method
