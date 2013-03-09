.class Lcom/htc/android/mail/easclient/OutOfOffice$9;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


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
    .line 960
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 11
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 962
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "OutOfOffice"

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startTimeListener: "

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

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 964
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget v6, v6, Landroid/text/format/Time;->hour:I

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->hour:I

    sub-int v2, v6, v7

    .line 965
    .local v2, hourDuration:I
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget v6, v6, Landroid/text/format/Time;->minute:I

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->minute:I

    sub-int v3, v6, v7

    .line 967
    .local v3, minuteDuration:I
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iput p2, v6, Landroid/text/format/Time;->hour:I

    .line 968
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iput p3, v6, Landroid/text/format/Time;->minute:I

    .line 969
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 972
    .local v4, startMillis:J
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->hour:I

    add-int/2addr v7, v2

    iput v7, v6, Landroid/text/format/Time;->hour:I

    .line 973
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->minute:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/text/format/Time;->minute:I

    .line 974
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 976
    .local v0, endMillis:J
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v0, v1, v7}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 977
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v4, v5, v7}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 978
    iget-object v6, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;
    invoke-static {v6}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/mail/easclient/OutOfOffice$9;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v0, v1, v7}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 979
    return-void
.end method
