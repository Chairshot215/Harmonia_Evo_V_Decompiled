.class Lcom/google/android/talk/fragments/SetStatusFragment$9$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

.field final synthetic val$t:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$9;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$t:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 995
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2500(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$t:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->saveStatusMessageIfChanged()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2600(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 999
    :cond_0
    return-void
.end method
