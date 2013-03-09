.class public Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "TinySetupMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ADD_ACCOUNTS_CATEGORY_KEY:Ljava/lang/String; = "addAccountsCategory"

.field public static final AUTHORITIES_FILTER_KEY:Ljava/lang/String; = "authorities"

#the value of this static final field might be set in the static constructor
.field private static final LDEBUG:Z = false

.field public static final PREFERENCE_TYPE_ADD_BUTTON:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON_LAUNCH_TINY:I = 0x1

.field public static final PREFERENCE_TYPE_LOGINED:I = 0x2

.field public static final PREFERENCE_TYPE_NOT_LOGINED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TinySetupMailActivity"


# instance fields
.field private MailName:[Ljava/lang/String;

.field private MailTypes:[Ljava/lang/String;

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

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

.field private mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

.field private mHandler:Landroid/os/Handler;

.field private mMailCategory:Lcom/htc/preference/HtcPreferenceCategory;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "TinySetupMailActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->LDEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 63
    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mHandler:Landroid/os/Handler;

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "GMail"

    aput-object v1, v0, v2

    const-string v1, "Exchange"

    aput-object v1, v0, v3

    const-string v1, "Other_Mail"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailName:[Ljava/lang/String;

    .line 76
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v0, v2

    const-string v1, "com.htc.android.mail.eas"

    aput-object v1, v0, v3

    const-string v1, "com.htc.android.mail"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailTypes:[Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 83
    iput-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 175
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->LDEBUG:Z

    return v0
.end method

.method private initialize()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "TinySetupMailActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 221
    return-void
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 159
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 168
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 161
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "TinySetupMailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 165
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "TinySetupMailActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon resource not found for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "accountType"

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 144
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isAuthTypeExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 124
    :goto_1
    return v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated(Ljava/lang/String;)V
    .locals 7
    .parameter "accounts"

    .prologue
    .line 129
    const-string v1, "addAccountsCategory"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mMailCategory:Lcom/htc/preference/HtcPreferenceCategory;

    .line 131
    new-instance v2, Landroid/accounts/Account;

    const-string v1, "NOTLOGIN"

    invoke-direct {v2, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 133
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 134
    .local v4, label:Ljava/lang/CharSequence;
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/util/ArrayList;I)V

    .line 135
    .local v0, preference:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mMailCategory:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 136
    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 239
    const-string v0, "TinySetupMailActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 241
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 226
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->setResult(I)V

    .line 227
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->finish()V

    goto :goto_0

    .line 231
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->setResult(I)V

    .line 232
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->finish()V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 213
    const-string v0, "TinySetupMailActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->initialize()V

    .line 215
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 87
    const-string v1, "TinySetupMailActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->requestWindowFeature(I)Z

    .line 89
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mHandler:Landroid/os/Handler;

    .line 92
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->setContentView(I)V

    .line 93
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthorities:[Ljava/lang/String;

    .line 96
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 107
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 109
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const-string v1, "TinySetupMailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mail supported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->onAccountsUpdated(Ljava/lang/String;)V

    .line 107
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 196
    instance-of v0, p2, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    if-eqz v0, :cond_0

    move-object v8, p2

    .line 198
    check-cast v8, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;

    .line 199
    .local v8, pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    invoke-virtual {v8}, Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, accountType:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailActivity;->mHandler:Landroid/os/Handler;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 209
    .end local v1           #accountType:Ljava/lang/String;
    .end local v8           #pref:Lcom/htc/android/htcsetupwizard/activity/AccountPreferenceTwo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
