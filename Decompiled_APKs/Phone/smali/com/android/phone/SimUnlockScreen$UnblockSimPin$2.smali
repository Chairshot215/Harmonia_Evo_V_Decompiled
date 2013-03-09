.class Lcom/android/phone/SimUnlockScreen$UnblockSimPin$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SimUnlockScreen$UnblockSimPin;


# direct methods
.method constructor <init>(Lcom/android/phone/SimUnlockScreen$UnblockSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$2;->this$1:Lcom/android/phone/SimUnlockScreen$UnblockSimPin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/phone/SimUnlockScreen$UnblockSimPin$2;->this$1:Lcom/android/phone/SimUnlockScreen$UnblockSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SimUnlockScreen$UnblockSimPin;->onSimLockChangedResponse(Z)V

    .line 540
    return-void
.end method
