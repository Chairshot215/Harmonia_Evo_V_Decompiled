.class Lcom/android/htcdialer/DialerApp$3;
.super Landroid/telephony/PhoneStateListener;
.source "DialerApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerApp;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/DialerApp;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 232
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 233
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 238
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    #getter for: Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z
    invoke-static {v1}, Lcom/android/htcdialer/DialerApp;->access$100(Lcom/android/htcdialer/DialerApp;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    #getter for: Lcom/android/htcdialer/DialerApp;->mRoaming:Z
    invoke-static {v1}, Lcom/android/htcdialer/DialerApp;->access$200(Lcom/android/htcdialer/DialerApp;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/htcdialer/DialerApp$3$1;

    invoke-direct {v2, p0, v0}, Lcom/android/htcdialer/DialerApp$3$1;-><init>(Lcom/android/htcdialer/DialerApp$3;Z)V

    const-string v3, "HomeDialingQuery"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z
    invoke-static {v1, v2}, Lcom/android/htcdialer/DialerApp;->access$102(Lcom/android/htcdialer/DialerApp;Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp$3;->this$0:Lcom/android/htcdialer/DialerApp;

    #setter for: Lcom/android/htcdialer/DialerApp;->mRoaming:Z
    invoke-static {v1, v0}, Lcom/android/htcdialer/DialerApp;->access$202(Lcom/android/htcdialer/DialerApp;Z)Z

    .line 273
    .end local v0           #roaming:Z
    :cond_2
    return-void
.end method
