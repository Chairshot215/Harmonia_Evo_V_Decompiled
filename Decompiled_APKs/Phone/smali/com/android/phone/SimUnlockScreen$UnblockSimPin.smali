.class abstract Lcom/android/phone/SimUnlockScreen$UnblockSimPin;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UnblockSimPin"
.end annotation


# instance fields
.field private final mNewPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/phone/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->this$0:Lcom/android/phone/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 513
    iput-object p2, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->mPuk:Ljava/lang/String;

    .line 514
    iput-object p3, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->mNewPin:Ljava/lang/String;

    .line 515
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 524
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->mNewPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->unBlockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 530
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->this$0:Lcom/android/phone/SimUnlockScreen;

    new-instance v3, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$1;-><init>(Lcom/android/phone/SimUnlockScreen$UnblockSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/phone/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->this$0:Lcom/android/phone/SimUnlockScreen;

    new-instance v3, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$2;-><init>(Lcom/android/phone/SimUnlockScreen$UnblockSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
