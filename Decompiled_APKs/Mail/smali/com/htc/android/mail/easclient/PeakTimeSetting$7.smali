.class Lcom/htc/android/mail/easclient/PeakTimeSetting$7;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 393
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"
    .parameter "isChecked"

    .prologue
    .line 396
    invoke-static {}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$100(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mAccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$400(Lcom/htc/android/mail/easclient/PeakTimeSetting;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$7;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(IZ)V

    .line 398
    return-void
.end method
