.class public Lcom/android/settings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private account_num:I

.field private mAccountType:Ljava/lang/String;

.field private resConnectedIcon:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    .line 43
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 47
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const-string v1, "common_icon_connected"

    const v2, 0x208003e

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    .line 50
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 52
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 53
    array-length v1, v0

    iput v1, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    iget v1, p0, Lcom/android/settings/accounts/ProviderPreference;->account_num:I

    if-lez v1, :cond_0

    .line 61
    const v1, 0x7f08000c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .local v0, icon:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/accounts/ProviderPreference;->resConnectedIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .end local v0           #icon:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
