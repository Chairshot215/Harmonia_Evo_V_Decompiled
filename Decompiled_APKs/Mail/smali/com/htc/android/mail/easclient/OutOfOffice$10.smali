.class Lcom/htc/android/mail/easclient/OutOfOffice$10;
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
    .line 982
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 10
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v9, 0x1

    .line 984
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OutOfOffice"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endTimeListener: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 986
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 987
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iput p2, v4, Landroid/text/format/Time;->hour:I

    .line 988
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iput p3, v4, Landroid/text/format/Time;->minute:I

    .line 989
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 992
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 993
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEndTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1600(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mStartTime:Landroid/text/format/Time;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1300(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 994
    move-wide v0, v2

    .line 997
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndDate:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1500(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/MailCommon;->setDate(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 998
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnStartTime:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v2, v3, v5}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 999
    iget-object v4, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mBtnEndTime:Landroid/widget/Button;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/OutOfOffice$10;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$1400(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v0, v1, v5}, Lcom/htc/android/mail/MailCommon;->setTime(Landroid/widget/Button;JLandroid/content/Context;)V

    .line 1000
    return-void
.end method
