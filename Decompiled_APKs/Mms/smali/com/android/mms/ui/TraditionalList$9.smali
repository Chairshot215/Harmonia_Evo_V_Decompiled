.class Lcom/android/mms/ui/TraditionalList$9;
.super Ljava/lang/Object;
.source "TraditionalList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TraditionalList;->RestoreMessageById(JZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TraditionalList;

.field final synthetic val$bSms:Z

.field final synthetic val$category:I

.field final synthetic val$msgId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TraditionalList;ZJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/android/mms/ui/TraditionalList$9;->this$0:Lcom/android/mms/ui/TraditionalList;

    iput-boolean p2, p0, Lcom/android/mms/ui/TraditionalList$9;->val$bSms:Z

    iput-wide p3, p0, Lcom/android/mms/ui/TraditionalList$9;->val$msgId:J

    iput p5, p0, Lcom/android/mms/ui/TraditionalList$9;->val$category:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1510
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1511
    .local v3, values:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 1512
    .local v2, resUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1513
    .local v4, where:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/mms/ui/TraditionalList$9;->val$bSms:Z

    if-eqz v5, :cond_2

    .line 1516
    const-string v5, "type"

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1517
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1518
    const-string v4, "type < 0"

    .line 1527
    :goto_0
    iget-wide v5, p0, Lcom/android/mms/ui/TraditionalList$9;->val$msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1528
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1530
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1531
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "category"

    iget v6, p0, Lcom/android/mms/ui/TraditionalList$9;->val$category:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1532
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1534
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$9;->this$0:Lcom/android/mms/ui/TraditionalList;

    invoke-virtual {v5}, Lcom/android/mms/ui/TraditionalList;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    .end local v2           #resUri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$9;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v5, v5, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    if-eqz v5, :cond_1

    .line 1543
    iget-object v5, p0, Lcom/android/mms/ui/TraditionalList$9;->this$0:Lcom/android/mms/ui/TraditionalList;

    iget-object v5, v5, Lcom/android/mms/ui/ConversationListBaseActivity;->mUIHandler:Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationUIHandler;->sendEmptyMessage(I)Z

    .line 1545
    :cond_1
    return-void

    .line 1523
    .restart local v2       #resUri:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    .restart local v4       #where:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "msg_box"

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1525
    const-string v4, "msg_box < 0"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1536
    .end local v2           #resUri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v4           #where:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1538
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "TraditionalList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RestoreMessageById] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
