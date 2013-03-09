.class abstract Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;
.super Ljava/lang/Thread;
.source "NetworkUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckNetworkLockPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mType:I

.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/phone/NetworkUnlockScreen;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "pin"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 290
    iput p2, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->mType:I

    .line 291
    iput-object p3, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->mPin:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method abstract onNetworkLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 299
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->mType:I

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 301
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    new-instance v3, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;-><init>(Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    new-instance v3, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$2;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$2;-><init>(Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;)V

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
