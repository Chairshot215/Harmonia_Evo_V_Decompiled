.class final Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_OK:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while sending sms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$1;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;->RESULT_ERROR:Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->dispatch(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender;->access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/SmsSender$SmsSendListener$SmsSenderResult;)V

    goto :goto_0
.end method
