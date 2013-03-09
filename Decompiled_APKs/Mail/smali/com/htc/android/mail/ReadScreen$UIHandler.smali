.class Lcom/htc/android/mail/ReadScreen$UIHandler;
.super Landroid/os/Handler;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# static fields
.field public static final DIALOG_PROGRESS_SHOW:I = 0xa

.field public static final addAttachView:I = 0x1

.field public static final dynamticZoom:I = 0x11

.field public static final enableQuickSelection:I = 0x16

.field public static final loadMailContent:I = 0x8

.field public static final removeUnfinishUI:I = 0x10

.field public static final setFooterBar:I = 0x7

.field public static final showLoadingMail:I = 0xe

.field public static final showMessageTooLargeToast:I = 0xd

.field public static final showUnfinished:I = 0x9

.field public static final showUnfinishedUI:I = 0xf

.field public static final updateAttachButton:I = 0x3

.field public static final updateAttachListFooter:I = 0xb

.field public static final updateAttachView:I = 0x2

.field public static final updateAttachmentProgress:I = 0x14

.field public static final updateAttachmentSwitch:I = 0x5

.field public static final updateMailHeader:I = 0x6

.field public static final updateMeetingDetail:I = 0x13

.field public static final updatePreNextButton:I = 0x4

.field public static final updateReceiverUI:I = 0x12

.field public static final updateSenderContactBtnUI:I = 0x15

.field public static final updateUIByAccountType:I = 0xc


# instance fields
.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ReadScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenId:I


# direct methods
.method public constructor <init>(ILcom/htc/android/mail/ReadScreen;)V
    .locals 1
    .parameter "tokenId"
    .parameter "target"

    .prologue
    .line 5455
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5456
    iput p1, p0, Lcom/htc/android/mail/ReadScreen$UIHandler;->mTokenId:I

    .line 5457
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$UIHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 5458
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 5461
    iget v1, p0, Lcom/htc/android/mail/ReadScreen$UIHandler;->mTokenId:I

    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$3900()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 5546
    :cond_0
    :goto_0
    return-void

    .line 5465
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$UIHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ReadScreen;

    .line 5466
    .local v0, target:Lcom/htc/android/mail/ReadScreen;
    if-eqz v0, :cond_0

    .line 5468
    invoke-virtual {v0}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5470
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 5472
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    #calls: Lcom/htc/android/mail/ReadScreen;->addAttachView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$8500(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;)V

    goto :goto_0

    .line 5475
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/Attachment;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachView(Lcom/htc/android/mail/Attachment;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$8600(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;)V

    goto :goto_0

    .line 5478
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/Attachment;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachButton(Lcom/htc/android/mail/Attachment;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$8700(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;)V

    goto :goto_0

    .line 5481
    :pswitch_3
    #calls: Lcom/htc/android/mail/ReadScreen;->updatePreNextButton()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$8800(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0

    .line 5484
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentSwitch(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$8900(Lcom/htc/android/mail/ReadScreen;I)V

    goto :goto_0

    .line 5487
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/Attachment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/ReadScreen;->updateAttachmentProgress(Lcom/htc/android/mail/Attachment;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen;->access$9000(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Attachment;I)V

    goto :goto_0

    .line 5491
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/ReadScreen$MailHeader;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateMailHeader(Lcom/htc/android/mail/ReadScreen$MailHeader;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$9100(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$MailHeader;)V

    goto :goto_0

    .line 5494
    :pswitch_7
    #calls: Lcom/htc/android/mail/ReadScreen;->setFooterBar()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$9200(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0

    .line 5497
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/htc/android/mail/ReadScreen;->loadMailContent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$9300(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 5500
    :pswitch_9
    #calls: Lcom/htc/android/mail/ReadScreen;->showUnfinished()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$8300(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0

    .line 5503
    :pswitch_a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto :goto_0

    .line 5506
    :pswitch_b
    #getter for: Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$6900(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v1

    #calls: Lcom/htc/android/mail/ReadScreen;->showAttachList(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$9400(Lcom/htc/android/mail/ReadScreen;Z)V

    goto :goto_0

    .line 5510
    :pswitch_c
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5511
    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->isExchange()Z

    move-result v1

    #calls: Lcom/htc/android/mail/ReadScreen;->updateUIByAccountType(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$9500(Lcom/htc/android/mail/ReadScreen;Z)V

    goto :goto_0

    .line 5515
    :pswitch_d
    #calls: Lcom/htc/android/mail/ReadScreen;->showMessageTooLargeToast()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$9600(Lcom/htc/android/mail/ReadScreen;)V

    goto :goto_0

    .line 5518
    :pswitch_e
    #calls: Lcom/htc/android/mail/ReadScreen;->showLoadingMail()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$9700(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 5521
    :pswitch_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/mail/ReadScreen;->showUnfinishedUI(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$9800(Lcom/htc/android/mail/ReadScreen;I)V

    goto/16 :goto_0

    .line 5524
    :pswitch_10
    #calls: Lcom/htc/android/mail/ReadScreen;->removeUnfinishUI()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$9900(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 5527
    :pswitch_11
    #calls: Lcom/htc/android/mail/ReadScreen;->doDynamticZoom()V
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$10000(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 5530
    :pswitch_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/widget/HtcPhotoButton;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateEachContact(Lcom/htc/android/mail/widget/HtcPhotoButton;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$10100(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/widget/HtcPhotoButton;)V

    goto/16 :goto_0

    .line 5533
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/ReadScreen$MeetingDetail;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateMeetingDetail(Lcom/htc/android/mail/ReadScreen$MeetingDetail;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$10200(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReadScreen$MeetingDetail;)V

    goto/16 :goto_0

    .line 5537
    :pswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/android/mail/ReceiverList;

    #calls: Lcom/htc/android/mail/ReadScreen;->updateSenderContactBtnUI(Lcom/htc/android/mail/ReceiverList;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ReadScreen;->access$10300(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)V

    goto/16 :goto_0

    .line 5540
    :pswitch_15
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5541
    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/HtcWebView;->setEnableQuickSelection(Z)V

    .line 5542
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ReadScreen"

    const-string v2, "enableQuickSelection"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_5
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
