.class Lcom/htc/android/mail/easclient/OutOfOffice$5;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 826
    packed-switch p3, :pswitch_data_0

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1000(Lcom/htc/android/mail/easclient/OutOfOffice;)I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 843
    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    const-string v3, "spinner"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 845
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 846
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mModified:Z
    invoke-static {v0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2202(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpinnerPos:I
    invoke-static {v0, p3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1002(Lcom/htc/android/mail/easclient/OutOfOffice;I)I

    .line 849
    return-void

    .line 829
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->expandDateTimePicker(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2500(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V

    .line 830
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->expandReplyEditor(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2600(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V

    goto :goto_0

    .line 836
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->expandDateTimePicker(Z)V
    invoke-static {v0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2500(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V

    .line 837
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$5;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->expandReplyEditor(Z)V
    invoke-static {v0, v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2600(Lcom/htc/android/mail/easclient/OutOfOffice;Z)V

    goto :goto_0

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 852
    return-void
.end method
