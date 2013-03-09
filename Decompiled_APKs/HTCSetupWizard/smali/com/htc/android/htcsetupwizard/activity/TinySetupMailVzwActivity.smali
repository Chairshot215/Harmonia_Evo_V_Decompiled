.class public Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;
.super Landroid/app/Activity;
.source "TinySetupMailVzwActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$MyViewBinder;
    }
.end annotation


# static fields
.field private static final FACEBOOK_HTC_SENSE_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field private static final FACEBOOK_TYPE:Ljava/lang/String; = "com.facebook.auth.login"

.field private static final LDEBUG:Z = true

.field public static final PREFERENCE_TYPE_ADD_BUTTON:I = 0x0

.field public static final PREFERENCE_TYPE_ADD_BUTTON_LAUNCH_TINY:I = 0x1

.field public static final PREFERENCE_TYPE_LOGINED:I = 0x2

.field public static final PREFERENCE_TYPE_NOT_LOGINED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OOBE_TinySetupMailVzwActivity"


# instance fields
.field private MailName:[Ljava/lang/String;

.field private MailTypes:[Ljava/lang/String;

.field private SocialNetworkName:[Ljava/lang/String;

.field private SocialNetworkTypes:[Ljava/lang/String;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

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
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mHandler:Landroid/os/Handler;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Exchange"

    aput-object v1, v0, v3

    const-string v1, "Yahoo"

    aput-object v1, v0, v4

    const-string v1, "Hotmail"

    aput-object v1, v0, v5

    const-string v1, "AOL"

    aput-object v1, v0, v6

    const-string v1, "Gmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Other_Mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailName:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.android.mail.eas"

    aput-object v1, v0, v3

    const-string v1, "com.htc.android.mail.huxservice.yahoo"

    aput-object v1, v0, v4

    const-string v1, "com.htc.android.mail.huxservice.msn"

    aput-object v1, v0, v5

    const-string v1, "com.htc.android.mail.huxservice.aol"

    aput-object v1, v0, v6

    const-string v1, "com.htc.android.mail.huxservice.google"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.htc.android.mail"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailTypes:[Ljava/lang/String;

    .line 85
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Facebook"

    aput-object v1, v0, v3

    const-string v1, "Flickr"

    aput-object v1, v0, v4

    const-string v1, "Plurk"

    aput-object v1, v0, v5

    const-string v1, "Twitter"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkName:[Ljava/lang/String;

    .line 86
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.htc.socialnetwork.facebook"

    aput-object v1, v0, v3

    const-string v1, "com.htc.socialnetwork.flickr"

    aput-object v1, v0, v4

    const-string v1, "com.htc.socialnetwork.plurk"

    aput-object v1, v0, v5

    const-string v1, "com.htc.htctwitter"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 264
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private initialize()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method private isAccountSignedIn(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 205
    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 207
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replaceFacebookType()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    const-string v2, "com.facebook.auth.login"

    aput-object v2, v1, v0

    .line 104
    :cond_0
    return-void

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "OOBE_TinySetupMailVzwActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 310
    return-void
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 242
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 247
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 248
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 255
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 250
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "OOBE_TinySetupMailVzwActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrawableForType Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 227
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 228
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 235
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 230
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "OOBE_TinySetupMailVzwActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLabelForType Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAuthTypeExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 216
    :goto_1
    return v1

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .parameter "accounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 194
    .local v1, label:Ljava/lang/CharSequence;
    const-string v3, "icon"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v3, "title"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 301
    const-string v0, "OOBE_TinySetupMailVzwActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->initialize()V

    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x2

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mHandler:Landroid/os/Handler;

    .line 111
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->setContentView(I)V

    .line 112
    const v1, 0x7f0d0041

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 114
    .local v6, gridview:Landroid/widget/GridView;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 116
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v7, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v7

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v4, v4, v7

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    if-nez v1, :cond_1

    .line 123
    new-instance v1, Lcom/htc/android/htcsetupwizard/CustomizationReader;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    .line 126
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, listImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->replaceFacebookType()V

    .line 136
    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    const-string v1, "OOBE_TinySetupMailVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailName:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v8, 0x0

    .line 143
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->MailTypes:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 144
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 148
    :cond_4
    const/4 v7, 0x0

    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v7, v1, :cond_6

    .line 150
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCustomize:Lcom/htc/android/htcsetupwizard/CustomizationReader;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v1, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->hasAccountConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->isAuthTypeExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    const-string v1, "OOBE_TinySetupMailVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socialnetwork supported:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkName:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->isAccountSignedIn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 156
    const/4 v8, 0x0

    .line 157
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->SocialNetworkTypes:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->onAccountsUpdated(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 158
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 163
    :cond_6
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03002b

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "title"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 168
    .local v0, saImageItems:Landroid/widget/SimpleAdapter;
    new-instance v1, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$MyViewBinder;

    invoke-direct {v1, p0}, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity$MyViewBinder;-><init>(Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 169
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    return-void

    .line 163
    :array_0
    .array-data 0x4
        0x1et 0x0t 0xdt 0x7ft
        0x0t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 289
    .local v8, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "type"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, accountType:Ljava/lang/String;
    const-string v0, "OOBE_TinySetupMailVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick(): type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/TinySetupMailVzwActivity;->mHandler:Landroid/os/Handler;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 297
    return-void
.end method
