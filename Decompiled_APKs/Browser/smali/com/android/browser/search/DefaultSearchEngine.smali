.class public Lcom/android/browser/search/DefaultSearchEngine;
.super Ljava/lang/Object;
.source "DefaultSearchEngine.java"

# interfaces
.implements Lcom/android/browser/search/SearchEngine;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSearchEngine"


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSearchable:Landroid/app/SearchableInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/SearchableInfo;)V
    .locals 1
    .parameter "context"
    .parameter "searchable"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    .line 43
    iget-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/search/DefaultSearchEngine;->loadLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mLabel:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/browser/search/DefaultSearchEngine;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 47
    const-string v4, "search"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 49
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 50
    .local v0, name:Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v3

    .line 51
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 52
    .local v2, searchable:Landroid/app/SearchableInfo;
    if-eqz v2, :cond_0

    .line 53
    new-instance v3, Lcom/android/browser/search/DefaultSearchEngine;

    invoke-direct {v3, p0, v2}, Lcom/android/browser/search/DefaultSearchEngine;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;)V

    goto :goto_0
.end method

.method private loadLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "activityName"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 59
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 60
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 63
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DefaultSearchEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Web search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v0, "google"

    .line 75
    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 72
    .restart local v0       #packageName:Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v0, "google"

    goto :goto_0
.end method

.method public getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "query"

    .prologue
    .line 109
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 111
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1, p2}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "query"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v4, "query"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    if-eqz p3, :cond_0

    .line 90
    const-string v4, "app_data"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    :cond_0
    if-eqz p4, :cond_1

    .line 93
    const-string v4, "intent_extra_data_key"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_1
    const-string v4, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, viewIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p1, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 101
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "web_search_pendingintent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pending:Landroid/app/PendingIntent;
    .end local v3           #viewIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "DefaultSearchEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Web search activity not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsVoiceSearch()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/browser/search/DefaultSearchEngine;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivitySearchEngine{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantsEmptyQuery()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
