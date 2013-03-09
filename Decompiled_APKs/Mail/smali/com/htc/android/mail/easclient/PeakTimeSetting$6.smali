.class Lcom/htc/android/mail/easclient/PeakTimeSetting$6;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/PeakTimeSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isRepeatSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaySelectError:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$802(Lcom/htc/android/mail/easclient/PeakTimeSetting;Z)Z

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V

    .line 408
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$6;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->updatePeakDays()V

    goto :goto_0
.end method
