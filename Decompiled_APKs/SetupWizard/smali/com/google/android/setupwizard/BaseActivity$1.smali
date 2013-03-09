.class Lcom/google/android/setupwizard/BaseActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaspChanged(I)V
    .locals 3
    .parameter "otaspMode"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    #getter for: Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I
    invoke-static {v0}, Lcom/google/android/setupwizard/BaseActivity;->access$100(Lcom/google/android/setupwizard/BaseActivity;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    #setter for: Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I
    invoke-static {v0, p1}, Lcom/google/android/setupwizard/BaseActivity;->access$102(Lcom/google/android/setupwizard/BaseActivity;I)I

    .line 360
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOtaspPhoneStateListener#onOtaspChanged, mOtaspMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    #getter for: Lcom/google/android/setupwizard/BaseActivity;->mOtaspMode:I
    invoke-static {v2}, Lcom/google/android/setupwizard/BaseActivity;->access$100(Lcom/google/android/setupwizard/BaseActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/BaseActivity;->onOtaspChanged()V

    .line 366
    :cond_1
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    #getter for: Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I
    invoke-static {v0}, Lcom/google/android/setupwizard/BaseActivity;->access$000(Lcom/google/android/setupwizard/BaseActivity;)I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I
    invoke-static {v0, v1}, Lcom/google/android/setupwizard/BaseActivity;->access$002(Lcom/google/android/setupwizard/BaseActivity;I)I

    .line 349
    sget-boolean v0, Lcom/google/android/setupwizard/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "SetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOtaspPhoneStateListener#onServiceStateChanged, mPhoneServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    #getter for: Lcom/google/android/setupwizard/BaseActivity;->mPhoneServiceState:I
    invoke-static {v2}, Lcom/google/android/setupwizard/BaseActivity;->access$000(Lcom/google/android/setupwizard/BaseActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupwizard/BaseActivity$1;->this$0:Lcom/google/android/setupwizard/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/BaseActivity;->onServiceStateChanged()V

    .line 355
    :cond_1
    return-void
.end method
