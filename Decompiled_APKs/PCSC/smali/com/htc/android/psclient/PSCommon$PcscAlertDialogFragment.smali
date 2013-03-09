.class public Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "PSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/PSCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PcscAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;II)Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;
    .locals 5
    .parameter "context"
    .parameter "title_id"
    .parameter "message_id"

    .prologue
    .line 167
    new-instance v1, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;

    invoke-direct {v1}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;-><init>()V

    .line 168
    .local v1, frag:Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, message:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "title"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v4, "message"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, message:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 182
    const-string v1, ""

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    const-string v0, ""

    .line 187
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07001f

    new-instance v4, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$2;-><init>(Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment$1;-><init>(Lcom/htc/android/psclient/PSCommon$PcscAlertDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
