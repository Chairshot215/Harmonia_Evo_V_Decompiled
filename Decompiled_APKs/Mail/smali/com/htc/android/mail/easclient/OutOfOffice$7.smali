.class Lcom/htc/android/mail/easclient/OutOfOffice$7;
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
    .line 899
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 11
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 901
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "OutOfOffice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startDateListner: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget v8, v8, Landroid/text/format/Time;->year:I

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->year:I

    sub-int v7, v8, v9

    .line 904
    .local v7, yearDuration:I
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget v8, v8, Landroid/text/format/Time;->month:I

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->month:I

    sub-int v4, v8, v9

    .line 905
    .local v4, monthDuration:I
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    sub-int v3, v8, v9

    .line 907
    .local v3, monthDayDuration:I
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iput p2, v8, Landroid/text/format/Time;->year:I

    .line 908
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iput p3, v8, Landroid/text/format/Time;->month:I

    .line 909
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iput p4, v8, Landroid/text/format/Time;->monthDay:I

    .line 910
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 912
    .local v5, startMillis:J
    const-wide/16 v0, 0x0

    .line 913
    .local v0, endMillis:J
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->getLastDate(Landroid/text/format/Time;)Landroid/text/format/Time;
    invoke-static {v8, v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$3100(Lcom/htc/android/mail/easclient/OutOfOffice;Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v2

    .line 914
    .local v2, lastDate:Landroid/text/format/Time;
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 916
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->year:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/text/format/Time;->year:I

    .line 917
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->month:I

    add-int/2addr v9, v4

    iput v9, v8, Landroid/text/format/Time;->month:I

    .line 918
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v9, v3

    iput v9, v8, Landroid/text/format/Time;->monthDay:I

    .line 920
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 921
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    const-wide/32 v9, 0x5265c00

    add-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 924
    :cond_1
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 932
    :goto_0
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartDate:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1200(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v5, v6, v9}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 933
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v0, v1, v9}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 934
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v0, v1, v9}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 935
    return-void

    .line 926
    :cond_2
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->year:I

    iput v9, v8, Landroid/text/format/Time;->year:I

    .line 927
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->month:I

    iput v9, v8, Landroid/text/format/Time;->month:I

    .line 928
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v9}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v9

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    iput v9, v8, Landroid/text/format/Time;->monthDay:I

    .line 929
    iget-object v8, p0, Lcom/htc/android/mail/easclient/OutOfOffice$7;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    goto :goto_0
.end method
