.class Lcom/htc/android/mail/easclient/OutOfOffice$8;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


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
    .line 938
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 8
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v7, 0x1

    .line 940
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OutOfOffice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endDateListner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 943
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iput p2, v4, Landroid/text/format/Time;->year:I

    .line 944
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iput p3, v4, Landroid/text/format/Time;->month:I

    .line 945
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iput p4, v4, Landroid/text/format/Time;->monthDay:I

    .line 946
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 949
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 950
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 951
    move-wide v0, v2

    .line 954
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1200(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 955
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 956
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$8;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 957
    return-void
.end method
