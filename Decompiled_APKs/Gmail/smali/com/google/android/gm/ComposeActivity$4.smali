.class Lcom/google/android/gm/ComposeActivity$4;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ComposeActivity;->showDiscardAttachmentsDialog([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ComposeActivity;

.field final synthetic val$selectedAccountInfo:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    iput-object p2, p0, Lcom/google/android/gm/ComposeActivity$4;->val$selectedAccountInfo:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1890
    packed-switch p2, :pswitch_data_0

    .line 1902
    :goto_0
    return-void

    .line 1892
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mComposeArea:Lcom/google/android/gm/ComposeAreaController;
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$1300(Lcom/google/android/gm/ComposeActivity;)Lcom/google/android/gm/ComposeAreaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gm/ComposeAreaController;->deleteAllAttachments()V

    .line 1893
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$4;->val$selectedAccountInfo:[Ljava/lang/String;

    #calls: Lcom/google/android/gm/ComposeActivity;->updateReplyFromAccount([Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/gm/ComposeActivity;->access$1400(Lcom/google/android/gm/ComposeActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$1500(Lcom/google/android/gm/ComposeActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/FromAddressSpinnerAdapter;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mCurrentReplyFromAccount:[Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/ComposeActivity;->access$1600(Lcom/google/android/gm/ComposeActivity;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gm/ComposeActivity;->access$1700()I

    move-result v5

    aget-object v4, v4, v5

    #calls: Lcom/google/android/gm/ComposeActivity;->getCurrentAccountIndex(Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I
    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/ComposeActivity;->access$1800(Lcom/google/android/gm/ComposeActivity;Lcom/google/android/gm/FromAddressSpinnerAdapter;ZLjava/lang/String;)I

    move-result v0

    .line 1899
    .local v0, currentAccountIndex:I
    iget-object v1, p0, Lcom/google/android/gm/ComposeActivity$4;->this$0:Lcom/google/android/gm/ComposeActivity;

    #getter for: Lcom/google/android/gm/ComposeActivity;->mAccountSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/google/android/gm/ComposeActivity;->access$1500(Lcom/google/android/gm/ComposeActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1890
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
