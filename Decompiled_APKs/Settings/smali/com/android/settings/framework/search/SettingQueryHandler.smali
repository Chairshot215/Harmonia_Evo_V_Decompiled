.class public Lcom/android/settings/framework/search/SettingQueryHandler;
.super Landroid/app/Activity;
.source "SettingQueryHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingQueryHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SettingQueryHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 35
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, index:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/framework/search/SuggestionProvider;->sSearchTarget:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/framework/search/SuggestionProvider$Target;

    invoke-virtual {v3}, Lcom/android/settings/framework/search/SuggestionProvider$Target;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/search/SettingQueryHandler;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v1           #index:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/search/SettingQueryHandler;->finish()V

    .line 42
    return-void
.end method
