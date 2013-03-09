.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 563
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$4;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->StopTestServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
