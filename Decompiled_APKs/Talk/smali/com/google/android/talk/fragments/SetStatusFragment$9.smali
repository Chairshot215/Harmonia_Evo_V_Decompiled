.class Lcom/google/android/talk/fragments/SetStatusFragment$9;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 988
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v5}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 989
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04001d

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 990
    .local v4, t:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2500(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 992
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;

    invoke-direct {v3, p0, v4}, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$9;Landroid/widget/EditText;)V

    .line 1002
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0006

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c002b

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c00dd

    invoke-virtual {v5, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1008
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1009
    .local v1, d:Landroid/app/AlertDialog;
    return-void
.end method
