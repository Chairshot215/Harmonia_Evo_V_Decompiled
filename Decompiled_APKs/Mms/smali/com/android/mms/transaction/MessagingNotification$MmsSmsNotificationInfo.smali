.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsNotificationInfo"
.end annotation


# instance fields
.field public mClickIntent:Landroid/content/Intent;

.field public mContactId:J

.field public mCount:I

.field public mDescription:Ljava/lang/String;

.field public mIconResourceId:I

.field public mThreadId:J

.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V
    .locals 2
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconResourceId"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"

    .prologue
    const-wide/16 v0, 0x0

    .line 578
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mContactId:J

    .line 573
    iput-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mThreadId:J

    .line 579
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 580
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    .line 581
    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    .line 582
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 583
    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    .line 584
    iput-object p7, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    .line 585
    iput p8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 586
    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;ZIIZLandroid/net/Uri;)V
    .locals 12
    .parameter "context"
    .parameter "isNew"
    .parameter "count"
    .parameter "newMsgCnt"
    .parameter "bcmas"
    .parameter "MsgUri"

    .prologue
    .line 591
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 592
    .local v11, nInfo:Landroid/content/Intent;
    const-string v0, "notify_thread_id"

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mThreadId:J

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 593
    const-string v0, "notify_contact_id"

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mContactId:J

    invoke-virtual {v11, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    const-string v0, "notify_is_new_incoming"

    invoke-virtual {v11, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    if-eqz p6, :cond_0

    .line 597
    const-string v0, "notify_MsgURI"

    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_0
    if-eqz p5, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move/from16 v10, p4

    #calls: Lcom/android/mms/transaction/MessagingNotification;->updateCmasNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    invoke-static/range {v0 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mClickIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mDescription:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mIconResourceId:I

    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v6, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    iget-object v8, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    move-object v0, p1

    move v4, p2

    move v9, p3

    move/from16 v10, p4

    #calls: Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    invoke-static/range {v0 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 614
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
