.class Lcom/htc/android/mail/easclient/OutOfOffice$6;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 855
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/16 v4, 0x7ee

    const/16 v3, 0x7c7

    const/4 v8, 0x1

    .line 858
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 859
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v10, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 861
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 862
    .local v9, id:I
    const v0, 0x7f090122

    if-ne v9, v0, :cond_2

    .line 863
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->startDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2700(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->year:I

    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget v6, v6, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 894
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnSave:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 895
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnDiscard:Lcom/htc/android/mail/widget/MailFooterBarButton;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2100(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->setButtonEnable(Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V
    invoke-static {v0, v1, v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2000(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/widget/MailFooterBarButton;Z)V

    .line 896
    return-void

    .line 873
    :cond_2
    const v0, 0x7f09002b

    if-ne v9, v0, :cond_3

    .line 874
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->startTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2800(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    goto :goto_0

    .line 877
    :cond_3
    const v0, 0x7f090124

    if-ne v9, v0, :cond_4

    .line 878
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->endDateListner:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    iget v5, v5, Landroid/text/format/Time;->year:I

    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget v6, v6, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    goto :goto_0

    .line 888
    :cond_4
    const v0, 0x7f090030

    if-ne v9, v0, :cond_1

    .line 889
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->endTimeListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$3000(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v3

    iget v3, v3, Landroid/text/format/Time;->hour:I

    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget v4, v4, Landroid/text/format/Time;->minute:I

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$6;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    goto/16 :goto_0
.end method
