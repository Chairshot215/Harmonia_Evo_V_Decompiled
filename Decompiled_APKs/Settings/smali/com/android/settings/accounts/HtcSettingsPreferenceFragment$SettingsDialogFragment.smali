.class public Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "HtcSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# static fields
.field private static final KEY_DIALOG_ID:Ljava/lang/String; = "key_dialog_id"

.field private static final KEY_PARENT_FRAGMENT_ID:Ljava/lang/String; = "key_parent_fragment_id"


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 3
    .parameter "fragment"
    .parameter "dialogId"

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 158
    iput p2, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 159
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 164
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 177
    if-eqz p1, :cond_1

    .line 178
    const-string v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 179
    const-string v1, "key_parent_fragment_id"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, mParentFragmentId:I
    if-le v0, v3, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 182
    iget-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_parent_fragment_id must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/settings/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;

    #setter for: Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v1, p0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->access$202(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 194
    .end local v0           #mParentFragmentId:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/DialogCreatable;

    iget v2, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;

    #getter for: Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->access$200(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;)Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->access$202(Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;

    .line 228
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    :cond_0
    return-void
.end method
