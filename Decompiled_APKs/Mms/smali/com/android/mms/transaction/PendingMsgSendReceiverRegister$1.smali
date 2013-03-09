.class final Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;
.super Ljava/lang/Object;
.source "PendingMsgSendReceiverRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->forceClearRawTable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mRawUri:Landroid/net/Uri;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;->val$mRawUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 384
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 385
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 387
    .local v6, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;->val$resolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 389
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "count > 0"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .local v7, where:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;->val$resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;->val$mRawUri:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v7           #where:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_2
    return-void

    .line 390
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "count > 10000"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .restart local v7       #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    goto :goto_1
.end method
