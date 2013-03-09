.class Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

.field final synthetic val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;Lcom/htc/android/mail/eassvc/pim/EASOofResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iput-object p2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 528
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;

    .line 529
    .local v1, message:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    iget v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 532
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "OutOfOffice"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reply external recipient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 533
    :cond_1
    iget v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    if-ne v2, v8, :cond_2

    .line 534
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 540
    .end local v1           #message:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;

    .line 541
    .restart local v1       #message:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 544
    iget-object v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    const-string v3, "\r\n"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    .line 545
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    iget v2, v2, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->oofState:I

    packed-switch v2, :pswitch_data_0

    .line 564
    :goto_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->startTime:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->decodingDateTimeFormat(ZLjava/lang/String;)V
    invoke-static {v2, v8, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1100(Lcom/htc/android/mail/easclient/OutOfOffice;ZLjava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->val$oofResult:Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/pim/EASOofResult;->endTime:Ljava/lang/String;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->decodingDateTimeFormat(ZLjava/lang/String;)V
    invoke-static {v2, v7, v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1100(Lcom/htc/android/mail/easclient/OutOfOffice;ZLjava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1200(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 567
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 568
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 569
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v5, v5, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 574
    .end local v1           #message:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v2, v3, v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 575
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v3, v3, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v3

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v2, v3, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 576
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z
    invoke-static {v2, v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2202(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 577
    return-void

    .line 550
    .restart local v1       #message:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 551
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I
    invoke-static {v2, v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1002(Lcom/htc/android/mail/easclient/OutOfOffice;I)I

    goto/16 :goto_1

    .line 557
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 558
    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable$1;->this$1:Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/OutOfOffice$getOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I
    invoke-static {v2, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1002(Lcom/htc/android/mail/easclient/OutOfOffice;I)I

    goto/16 :goto_1

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
