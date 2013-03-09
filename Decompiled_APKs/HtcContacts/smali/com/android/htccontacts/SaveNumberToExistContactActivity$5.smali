.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createAddNumberWarningDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

.field final synthetic val$item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;ILcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iput p2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->val$which:I

    iput-object p3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->val$item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget v2, v2, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    iput v2, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPreSelectedIndex:I

    .line 909
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->val$which:I

    iput v2, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    .line 910
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->val$item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getShowText(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1000(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, label:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v1, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-boolean v1, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    if-nez v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->enableOkButton()V
    invoke-static {v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 914
    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$5;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    .line 916
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 917
    return-void
.end method
