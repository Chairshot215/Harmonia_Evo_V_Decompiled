.class Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;
.super Landroid/app/DialogFragment;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickPhotoDialogFragment"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1167
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 1172
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x103006e

    invoke-direct {v3, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1175
    .local v3, dialogContext:Landroid/content/Context;
    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2700(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    :goto_0
    new-array v2, v6, [Ljava/lang/String;

    .line 1176
    .local v2, choices:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1177
    .local v4, index:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c00b8

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 1178
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c00b9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1179
    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2700(Lcom/google/android/talk/fragments/SetStatusFragment;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1180
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    iget-object v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    iget-object v6, v6, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c00b7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    move v4, v5

    .line 1182
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1185
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1186
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c00b6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1187
    const/4 v6, -0x1

    new-instance v7, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker$PickPhotoDialogFragment;)V

    invoke-virtual {v1, v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 1175
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #choices:[Ljava/lang/String;
    .end local v4           #index:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_0
.end method
