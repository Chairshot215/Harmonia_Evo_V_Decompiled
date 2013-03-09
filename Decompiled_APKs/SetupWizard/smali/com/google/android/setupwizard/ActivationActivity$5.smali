.class Lcom/google/android/setupwizard/ActivationActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupwizard/ActivationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->getNetworkNameFromIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {p2}, Lcom/google/android/setupwizard/ActivationActivity;->access$1000(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v1

    #setter for: Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/google/android/setupwizard/ActivationActivity;->access$902(Lcom/google/android/setupwizard/ActivationActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 495
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->shouldChangeTitleUsingNetworkName()Z
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$1100(Lcom/google/android/setupwizard/ActivationActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$1200(Lcom/google/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    const v2, 0x7f090037

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/setupwizard/ActivationActivity$5;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/google/android/setupwizard/ActivationActivity;->access$900(Lcom/google/android/setupwizard/ActivationActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupwizard/ActivationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_0
    return-void
.end method
