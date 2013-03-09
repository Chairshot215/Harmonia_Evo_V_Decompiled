.class Lcom/htc/android/mail/easclient/PeakTimeSetting$8;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 417
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaySelectError:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$800(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    new-instance v1, Lcom/htc/android/mail/easclient/PeakTimeSetting$8$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/PeakTimeSetting$8$1;-><init>(Lcom/htc/android/mail/easclient/PeakTimeSetting$8;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaySelectError:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$802(Lcom/htc/android/mail/easclient/PeakTimeSetting;Z)Z

    .line 431
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V

    .line 428
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 429
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$8;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->removeDialog(I)V

    goto :goto_0
.end method
