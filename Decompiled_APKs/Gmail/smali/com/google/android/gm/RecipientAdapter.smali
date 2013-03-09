.class public Lcom/google/android/gm/RecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "RecipientAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter "context"
    .parameter "list"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public setAccount(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 23
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->setAccount(Landroid/accounts/Account;)V

    .line 25
    :cond_0
    return-void
.end method
