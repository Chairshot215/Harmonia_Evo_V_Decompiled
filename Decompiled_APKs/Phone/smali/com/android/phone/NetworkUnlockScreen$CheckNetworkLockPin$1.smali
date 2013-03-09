.class Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;
.super Ljava/lang/Object;
.source "NetworkUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;->this$1:Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;

    iput-boolean p2, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;->this$1:Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;

    iget-boolean v1, p0, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkUnlockScreen$CheckNetworkLockPin;->onNetworkLockChangedResponse(Z)V

    .line 304
    return-void
.end method
