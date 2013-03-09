.class Lcom/htc/android/htcsetupwizard/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcsetupwizard/MainActivity;->createScanAPDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2736
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$13;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$13;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/MainActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1200(Lcom/htc/android/htcsetupwizard/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2739
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/MainActivity$13;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->isWIFINetworkAvailable()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$13;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->callWIFISetting()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1100(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    .line 2745
    :goto_0
    return-void

    .line 2742
    :cond_0
    const-string v0, "OOBE_MainActivity"

    const-string v1, "showNotFoundDialog() by Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity$13;->this$0:Lcom/htc/android/htcsetupwizard/MainActivity;

    #calls: Lcom/htc/android/htcsetupwizard/MainActivity;->showNotFoundDialog()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/MainActivity;->access$1300(Lcom/htc/android/htcsetupwizard/MainActivity;)V

    goto :goto_0
.end method
