.class Lcom/android/mms/ui/TransactionFailureDialog$1;
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
    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/TransactionFailureDialog$1;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/TransactionFailureDialog$1;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/TransactionFailureDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/mms/ui/TransactionFailureDialog$1;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    #getter for: Lcom/android/mms/ui/TransactionFailureDialog;->mTxType:I
    invoke-static {v2}, Lcom/android/mms/ui/TransactionFailureDialog;->access$000(Lcom/android/mms/ui/TransactionFailureDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/TransactionFailureDialog$1;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    #getter for: Lcom/android/mms/ui/TransactionFailureDialog;->mTxUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/TransactionFailureDialog;->access$100(Lcom/android/mms/ui/TransactionFailureDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/android/mms/ui/TransactionFailureDialog$1;->this$0:Lcom/android/mms/ui/TransactionFailureDialog;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/TransactionFailureDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    return-void
.end method
