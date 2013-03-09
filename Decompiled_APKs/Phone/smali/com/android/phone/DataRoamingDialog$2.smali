.class Lcom/android/phone/DataRoamingDialog$2;
.super Ljava/lang/Object;
.source "DataRoamingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DataRoamingDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/DataRoamingDialog$2;->this$0:Lcom/android/phone/DataRoamingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 102
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 106
    .local v0, phoneService:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->confirmFirstDataRoaming()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 112
    iget-object v2, p0, Lcom/android/phone/DataRoamingDialog$2;->this$0:Lcom/android/phone/DataRoamingDialog;

    invoke-virtual {v2}, Lcom/android/phone/DataRoamingDialog;->finish()V

    .line 113
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, re:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
