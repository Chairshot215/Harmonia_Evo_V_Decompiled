.class public Lcom/android/settings/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# static fields
.field private static final CHOOSE_ACCOUNT_REQUEST:I = 0x1

.field static final EXTRA_SELECTED_ACCOUNT:Ljava/lang/String; = "selected_account"

.field private static final KEY_ADD_CALLED:Ljava/lang/String; = "AddAccountCalled"

.field private static final KEY_CALLER_IDENTITY:Ljava/lang/String; = "pendingIntent"

.field private static final TAG:Ljava/lang/String; = "AccountSettings"


# instance fields
.field private mAddAccountCalled:Z

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 8
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 147
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    .line 149
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 159
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 124
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 126
    :pswitch_0
    if-nez p2, :cond_0

    .line 127
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 130
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 135
    :cond_1
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v3, "AddAccountCalled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 100
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccountSettings"

    const-string v4, "restored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 120
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, authorities:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, accountTypes:[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 114
    const-string v3, "authorities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_2
    if-eqz v0, :cond_3

    .line 117
    const-string v3, "account_types"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method
