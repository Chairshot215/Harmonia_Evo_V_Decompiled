.class Lcom/android/mms/ui/TransactionFailureDialog$3;
.super Ljava/lang/Object;
.source "TransactionFailureDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TransactionFailureDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TransactionFailureDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TransactionFailureDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/TransactionFailureDialog$3;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/TransactionFailureDialog$3;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/TransactionFailureDialog;->finish()V

    .line 93
    return-void
.end method
