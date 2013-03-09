.class public Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "SearchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    return-void
.end method

.method private static createQsbActivityIntent(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-class v1, Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method private static getSearchWidgetState(Lcom/google/android/googlequicksearchbox/QsbContext;I)Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 101
    new-instance v1, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;

    invoke-direct {v1, p1}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;-><init>(I)V

    .line 103
    .local v1, state:Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v3, widgetAppData:Landroid/os/Bundle;
    const-string v4, "source"

    const-string v5, "launcher-widget"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, v3}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->createQsbActivityIntent(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, qsbIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->setQueryTextViewIntent(Landroid/content/Intent;)V

    .line 111
    invoke-static {p0, v3}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->getVoiceSearchIntent(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 112
    .local v2, voiceSearchIntent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->setVoiceSearchIntent(Landroid/content/Intent;)V

    .line 114
    return-object v1
.end method

.method private static getSearchWidgetStates(Lcom/google/android/googlequicksearchbox/QsbContext;)[Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    .locals 5
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 62
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->myComponentName(Lcom/google/android/googlequicksearchbox/QsbContext;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 63
    .local v0, appWidgetIds:[I
    array-length v4, v0

    new-array v3, v4, [Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;

    .line 64
    .local v3, states:[Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 65
    aget v4, v0, v2

    invoke-static {p0, v4}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->getSearchWidgetState(Lcom/google/android/googlequicksearchbox/QsbContext;I)Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v3
.end method

.method private static getVoiceSearchIntent(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "widgetAppData"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getVoiceSearch()Lcom/google/android/googlequicksearchbox/VoiceSearch;

    move-result-object v0

    .line 119
    .local v0, voiceSearch:Lcom/google/android/googlequicksearchbox/VoiceSearch;
    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static myComponentName(Lcom/google/android/googlequicksearchbox/QsbContext;)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, pkg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".SearchWidgetProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, cls:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static updateSearchWidgets(Lcom/google/android/googlequicksearchbox/QsbContext;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->getSearchWidgetStates(Lcom/google/android/googlequicksearchbox/QsbContext;)[Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;

    move-result-object v4

    .line 77
    .local v4, states:[Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 78
    .local v3, state:Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;->updateWidget(Lcom/google/android/googlequicksearchbox/QsbContext;Landroid/appwidget/AppWidgetManager;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v3           #state:Lcom/google/android/googlequicksearchbox/SearchWidgetProvider$SearchWidgetState;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v1, p1, p2}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    .local v1, qsbContext:Lcom/google/android/googlequicksearchbox/QsbContext;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->updateSearchWidgets(Lcom/google/android/googlequicksearchbox/QsbContext;)V

    goto :goto_0
.end method
