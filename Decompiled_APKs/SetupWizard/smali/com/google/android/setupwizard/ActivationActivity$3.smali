.class Lcom/google/android/setupwizard/ActivationActivity$3;
.super Landroid/telephony/PhoneStateListener;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/ActivationActivity;
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
    .line 204
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$3;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$3;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #setter for: Lcom/google/android/setupwizard/ActivationActivity;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/google/android/setupwizard/ActivationActivity;->access$602(Lcom/google/android/setupwizard/ActivationActivity;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 214
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$3;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->updateSignalStrength()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$500(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 215
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$3;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #setter for: Lcom/google/android/setupwizard/ActivationActivity;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/google/android/setupwizard/ActivationActivity;->access$402(Lcom/google/android/setupwizard/ActivationActivity;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 208
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$3;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->updateSignalStrength()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$500(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 209
    return-void
.end method
