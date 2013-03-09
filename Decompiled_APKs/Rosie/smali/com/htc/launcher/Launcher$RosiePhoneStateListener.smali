.class public Lcom/htc/launcher/Launcher$RosiePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RosiePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 8468
    iput-object p1, p0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 8471
    sget-boolean v0, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosiePhoneStateListener - onCallStateChanged state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "incomingNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8472
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 8473
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->playPhoneAnim()V

    .line 8474
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/htc/launcher/Launcher;->mIsInComingCall:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$10202(Lcom/htc/launcher/Launcher;Z)Z

    .line 8481
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 8482
    return-void

    .line 8475
    :cond_2
    if-nez p1, :cond_1

    .line 8476
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/Launcher;->mIsInComingCall:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$10202(Lcom/htc/launcher/Launcher;Z)Z

    .line 8477
    iget-object v0, p0, Lcom/htc/launcher/Launcher$RosiePhoneStateListener;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v0, v0, Lcom/htc/launcher/Launcher;->mFxWorkspace:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->stopPhoneAnim()V

    goto :goto_0
.end method
