.class Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;
.super Ljava/lang/Object;
.source "HuxRestoreAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 159
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$2;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v1, v1, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 160
    return-void
.end method
