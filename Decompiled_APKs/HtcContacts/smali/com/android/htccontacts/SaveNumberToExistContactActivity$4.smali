.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createSelectionDialog()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 843
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectionDatas:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;

    aget-object v1, v3, p2

    .line 849
    .local v1, item:Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xda

    if-ne v3, v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSaveTarget:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    if-ne v3, v4, :cond_1

    .line 852
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createAddNumberWarningDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v3, v1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$800(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 853
    .local v0, d:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v0, :cond_1

    .line 854
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 855
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 875
    .end local v0           #d:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget v4, v4, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    iput v4, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mPreSelectedIndex:I

    .line 861
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iput p2, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mSelectedIndex:I

    .line 863
    iget v3, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    if-nez v3, :cond_3

    .line 864
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->createInputCustomDialog(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v4, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$900(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 865
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mTextDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 871
    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-boolean v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    if-nez v3, :cond_0

    .line 872
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->enableOkButton()V
    invoke-static {v3}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1100(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V

    .line 873
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isSetType:Z

    goto :goto_0

    .line 868
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    #calls: Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getShowText(Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->access$1000(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$4;->this$0:Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    iget-object v3, v3, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->mNumberButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
