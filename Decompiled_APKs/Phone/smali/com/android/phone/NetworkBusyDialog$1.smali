.class Lcom/android/phone/NetworkBusyDialog$1;
.super Ljava/lang/Object;
.source "NetworkBusyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkBusyDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkBusyDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkBusyDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/NetworkBusyDialog$1;->this$0:Lcom/android/phone/NetworkBusyDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/NetworkBusyDialog$1;->this$0:Lcom/android/phone/NetworkBusyDialog;

    const/16 v1, 0x1b5b

    invoke-virtual {v0, v1}, Lcom/android/phone/NetworkBusyDialog;->dismissDialog(I)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/NetworkBusyDialog$1;->this$0:Lcom/android/phone/NetworkBusyDialog;

    invoke-virtual {v0}, Lcom/android/phone/NetworkBusyDialog;->finish()V

    .line 48
    return-void
.end method
