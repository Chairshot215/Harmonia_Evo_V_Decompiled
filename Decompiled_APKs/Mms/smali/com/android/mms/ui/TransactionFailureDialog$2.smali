.class Lcom/android/mms/ui/TransactionFailureDialog$2;
.super Ljava/lang/Object;
.source "TransactionFailureDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TransactionFailureDialog;
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
    .line 55
    iput-object p1, p0, Lcom/android/mms/ui/TransactionFailureDialog$2;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/TransactionFailureDialog$2;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/TransactionFailureDialog;->finish()V

    .line 58
    return-void
.end method
