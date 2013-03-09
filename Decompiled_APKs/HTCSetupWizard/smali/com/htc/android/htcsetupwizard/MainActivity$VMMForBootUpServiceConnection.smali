.class public Lcom/htc/android/htcsetupwizard/MainActivity$VMMForBootUpServiceConnection;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMMForBootUpServiceConnection"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 264
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p2}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$102(Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    .line 266
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 270
    const-string v0, "OOBE_MainActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$102(Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;)Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    .line 272
    return-void
.end method
