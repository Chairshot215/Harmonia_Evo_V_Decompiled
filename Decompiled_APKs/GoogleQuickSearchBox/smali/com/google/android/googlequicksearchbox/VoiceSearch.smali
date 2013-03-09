.class public Lcom/google/android/googlequicksearchbox/VoiceSearch;
.super Ljava/lang/Object;
.source "VoiceSearch.java"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/VoiceSearch;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 42
    return-void
.end method

.method private getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 61
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    return-object v1
.end method


# virtual methods
.method protected createVoiceSearchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "appData"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->isVoiceSearchAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceSearchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lcom/google/android/googlequicksearchbox/Config;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/VoiceSearch;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/VoiceSearch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isVoiceSearchAvailable()Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
