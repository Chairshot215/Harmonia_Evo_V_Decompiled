.class Lcom/android/phone/NetworkUnlockScreen$5;
.super Ljava/lang/Object;
.source "NetworkUnlockScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkUnlockScreen;->processFinishingRebootDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$5;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 692
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$5;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-virtual {v1}, Lcom/android/phone/NetworkUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 693
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "oem-11"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 694
    return-void
.end method
