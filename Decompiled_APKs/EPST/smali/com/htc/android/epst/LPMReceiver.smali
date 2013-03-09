.class public Lcom/htc/android/epst/LPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LPMReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LPMReceiver"


# instance fields
.field private DBG:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    iput-boolean v0, p0, Lcom/htc/android/epst/LPMReceiver;->DBG:Z

    .line 16
    const-string v0, "LPMReceiver"

    const-string v1, "LPMReceiver:IN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/LPMReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/htc/android/epst/LPMReceiver;->DBG:Z

    return v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.internal.telephony.enter_lpm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/htc/android/epst/internal/DataObject;->executeCMDType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 23
    new-instance v1, Lcom/htc/android/epst/LPMReceiver$1;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/LPMReceiver$1;-><init>(Lcom/htc/android/epst/LPMReceiver;)V

    invoke-virtual {v1}, Lcom/htc/android/epst/LPMReceiver$1;->start()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v1, "LPMReceiver"

    const-string v2, "Received intent LPM.Not new DataObject"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
