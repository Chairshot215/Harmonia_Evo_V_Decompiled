.class Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "BlockedListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BlockedListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAlertDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BlockedListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment;I)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 225
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 200
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mUnblockDialogFormatString:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$700(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->this$0:Lcom/google/android/talk/fragments/BlockedListFragment;

    #getter for: Lcom/google/android/talk/fragments/BlockedListFragment;->mSelectedNickname:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/fragments/BlockedListFragment;->access$800(Lcom/google/android/talk/fragments/BlockedListFragment;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002b

    new-instance v3, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;-><init>(Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c002a

    new-instance v3, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$1;-><init>(Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
