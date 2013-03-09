.class public Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;
.super Landroid/app/Activity;
.source "SaveToPeopleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;
    }
.end annotation


# instance fields
.field public mEmail:Ljava/lang/String;

.field private mIsDestroy:Z

.field public mNumber:Ljava/lang/String;

.field private mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mIsDestroy:Z

    .line 44
    iput-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    .line 172
    return-void
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method


# virtual methods
.method protected addToContact()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, handlerView:Landroid/view/View;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    :cond_0
    new-instance v2, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$DialogClickListener;-><init>(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;)V

    .line 114
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f07007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 115
    .local v3, numbertext:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_1
    :goto_0
    const v6, 0x7f07007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 121
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 123
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a00e1

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 127
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 128
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 129
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 130
    new-instance v6, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$1;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog$1;-><init>(Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 136
    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 138
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 139
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 141
    return-void

    .line 117
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v4           #saveexistbutton:Landroid/widget/Button;
    .end local v5           #savenewbutton:Landroid/widget/Button;
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public createInsertNumberOrEmailIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :cond_1
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    return-object v0
.end method

.method public createUpdateNumberOrEmailIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, actionIntent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 165
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :cond_1
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    return-object v0
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    const/4 v5, -0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    .local v2, view:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mNumber:Ljava/lang/String;

    .line 69
    const-string v3, "email"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mEmail:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->addToContact()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mIsDestroy:Z

    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 93
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mSaveToContactDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 98
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->mIsDestroy:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/SaveToPeopleDialog;->finish()V

    .line 101
    :cond_0
    return-void
.end method
