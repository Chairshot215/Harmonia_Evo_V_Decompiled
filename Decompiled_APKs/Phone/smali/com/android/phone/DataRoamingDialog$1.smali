.class Lcom/android/phone/DataRoamingDialog$1;
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
    .line 115
    iput-object p1, p0, Lcom/android/phone/DataRoamingDialog$1;->this$0:Lcom/android/phone/DataRoamingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 117
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/phone/DataRoamingDialog$1;->this$0:Lcom/android/phone/DataRoamingDialog;

    invoke-virtual {v0}, Lcom/android/phone/DataRoamingDialog;->finish()V

    .line 119
    return-void
.end method
