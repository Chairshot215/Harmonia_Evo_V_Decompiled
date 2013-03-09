.class Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;
.super Ljava/lang/Object;
.source "TimezoneActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

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

    .line 245
    const-string v3, "OOBE_TimezoneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDateListner: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 247
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 251
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 252
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oobe_set_current_time"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->mbFinalPage:Z
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    iget-object v3, v3, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->btnNext:Landroid/widget/Button;

    const v4, 0x7f0a000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->updateAll()V
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/TimezoneActivity;)V

    .line 260
    return-void
.end method
