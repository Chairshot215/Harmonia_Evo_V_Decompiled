.class Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CslSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 376
    if-eqz p2, :cond_0

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "Customization finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #calls: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->handleCustomizationFinish()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$600(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.action.CSL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "OOBE_CslSelectionActivity"

    const-string v1, "CSL case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #calls: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->handleCustomizationFinish()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$600(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)V

    goto :goto_0
.end method
