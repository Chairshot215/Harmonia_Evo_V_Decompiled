.class public Lcom/google/android/finsky/activities/TosActivity;
.super Landroid/app/Activity;
.source "TosActivity.java"

# interfaces
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# static fields
.field private static sLastTosAcceptedInProcessLife:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mEmailOptIn:Landroid/widget/CheckBox;

.field private mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/TosActivity;->sLastTosAcceptedInProcessLife:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/TosActivity;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/TosActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/TosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    const-string v2, "finsky.TosActivity.account"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "finsky.TosActivity.toc"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method public static requiresAcceptance(Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Z
    .locals 4
    .parameter "account"
    .parameter "toc"

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v1, Lcom/google/android/finsky/activities/TosActivity;->sLastTosAcceptedInProcessLife:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/activities/TosActivity;->sLastTosAcceptedInProcessLife:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v2

    .line 73
    :cond_0
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, storedToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/4 v6, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_2

    move-object v1, p1

    .line 82
    .local v1, initBundle:Landroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_0

    .line 83
    const-string v4, "finsky.TosActivity.account"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    .line 84
    const-string v4, "finsky.TosActivity.toc"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/api/model/DfeToc;

    iput-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    if-nez v4, :cond_3

    .line 89
    :cond_1
    const-string v4, "Bad request to Terms of Service activity."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 118
    :goto_1
    return-void

    .line 81
    .end local v1           #initBundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 94
    .restart local v1       #initBundle:Landroid/os/Bundle;
    :cond_3
    const v4, 0x7f04010b

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/TosActivity;->setContentView(I)V

    .line 96
    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 97
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v5, 0x7f0700d7

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 98
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v5, 0x7f0700d9

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 99
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v4, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 101
    const v4, 0x7f080113

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, accountNameView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, mainContent:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 106
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeToc;->getTosContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v4, 0x7f080221

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/TosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    .line 110
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeToc;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, optInText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 112
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeToc;->hasCurrentUserPreviouslyOptedIn()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 116
    :cond_4
    iget-object v4, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onNegativeButtonClick()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/TosActivity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 162
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, optedIn:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getTosCheckboxTextMarketingEmails()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mEmailOptIn:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/TosActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/TosActivity$1;-><init>(Lcom/google/android/finsky/activities/TosActivity;)V

    new-instance v4, Lcom/google/android/finsky/activities/TosActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/TosActivity$2;-><init>(Lcom/google/android/finsky/activities/TosActivity;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/finsky/api/DfeApi;->acceptTos(Ljava/lang/String;Ljava/lang/Boolean;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 153
    sget-object v1, Lcom/google/android/finsky/activities/TosActivity;->sLastTosAcceptedInProcessLife:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/TosActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/TosActivity;->finish()V

    .line 156
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "finsky.TosActivity.account"

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "finsky.TosActivity.toc"

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    return-void
.end method
