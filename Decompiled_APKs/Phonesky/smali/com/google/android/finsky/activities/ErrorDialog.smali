.class public Lcom/google/android/finsky/activities/ErrorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ErrorDialog.java"


# instance fields
.field private mIsRemoved:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ErrorDialog;->mIsRemoved:Z

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ErrorDialog;->setCancelable(Z)V

    .line 39
    return-void
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;
    .locals 4
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "goBack"

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, args:Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    const v3, 0x7f070102

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "html_message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "go_back"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    new-instance v1, Lcom/google/android/finsky/activities/ErrorDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ErrorDialog;-><init>()V

    .line 86
    .local v1, errorDialog:Lcom/google/android/finsky/activities/ErrorDialog;
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v1
.end method

.method public static show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;
    .locals 6
    .parameter "fragmentManager"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "goBack"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 56
    const-string v4, "error_dialog"

    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/activities/ErrorDialog;

    .line 60
    .local v3, previousErrorDialog:Lcom/google/android/finsky/activities/ErrorDialog;
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 63
    .local v2, ft:Landroid/support/v4/app/FragmentTransaction;
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/google/android/finsky/activities/ErrorDialog;->mIsRemoved:Z

    .line 64
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2           #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/ErrorDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    move-result-object v0

    .line 73
    .local v0, dialog:Lcom/google/android/finsky/activities/ErrorDialog;
    const-string v4, "error_dialog"

    invoke-virtual {v0, p0, v4}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    return-object v0

    .line 65
    .end local v0           #dialog:Lcom/google/android/finsky/activities/ErrorDialog;
    .restart local v2       #ft:Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 69
    .local v1, ex:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Double remove of error dialog fragment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 92
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 97
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006f

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, messageView:Landroid/view/View;
    const v3, 0x7f080125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    .local v1, messageTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "html_message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 104
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ErrorDialog;->mIsRemoved:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "go_back"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/finsky/fragments/PageFragmentHost;

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragmentHost;

    .line 115
    .local v0, fragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;
    invoke-interface {v0}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    .line 120
    .end local v0           #fragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 121
    return-void

    .line 117
    :cond_1
    const-string v1, "Dialog not hosted by PageFragmentHost. Cannot navigate back."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
