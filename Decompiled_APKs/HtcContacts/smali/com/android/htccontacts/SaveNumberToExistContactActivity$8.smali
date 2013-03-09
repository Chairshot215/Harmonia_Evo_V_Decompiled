.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createInputCustomDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

.field final synthetic val$data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

.field final synthetic val$label:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Landroid/widget/EditText;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iput-object p2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->val$label:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->val$data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 969
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->val$label:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->val$data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget-object v1, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v2, v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v1, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 977
    return-void

    .line 975
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v2, v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mCustomerLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$8;->val$data:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    iget-object v2, v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
