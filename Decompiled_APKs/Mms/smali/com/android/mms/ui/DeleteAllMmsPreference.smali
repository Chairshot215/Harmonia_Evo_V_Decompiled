.class public Lcom/android/mms/ui/DeleteAllMmsPreference;
.super Lcom/htc/preference/HtcDialogPreference;
.source "DeleteAllMmsPreference.java"


# instance fields
.field private mCategory:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/DeleteAllMmsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v2, p0, Lcom/android/mms/ui/DeleteAllMmsPreference;->mCategory:I

    .line 32
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteAllMmsPreference;->setDialogLayoutResource(I)V

    .line 33
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteAllMmsPreference;->setPositiveButtonText(I)V

    .line 34
    const v1, 0x7f09033b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteAllMmsPreference;->setNegativeButtonText(I)V

    .line 35
    const v1, 0x7f090353

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteAllMmsPreference;->setDialogTitle(I)V

    .line 36
    const v1, 0x7f0200d1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/DeleteAllMmsPreference;->setDialogIcon(I)V

    .line 39
    const-string v1, "htc_messages_category"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "category"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/DeleteAllMmsPreference;->mCategory:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/DeleteAllMmsPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/mms/ui/DeleteAllMmsPreference;->mCategory:I

    return v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 47
    const v1, 0x7f0e0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, textDelete:Landroid/widget/TextView;
    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 107
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteAllMmsPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const v4, 0x7f0e0025

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 56
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/mms/ui/DeleteAllMmsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, context:Landroid/content/Context;
    const/4 v3, 0x0

    const v4, 0x7f090167

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 66
    .local v2, progressDialog:Landroid/app/ProgressDialog;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/DeleteAllMmsPreference$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/mms/ui/DeleteAllMmsPreference$1;-><init>(Lcom/android/mms/ui/DeleteAllMmsPreference;Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/ProgressDialog;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
