.class public Lcom/google/android/googlequicksearchbox/SourceUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceUpdateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateSources(Lcom/google/android/googlequicksearchbox/QsbContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getApplication()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->updateSources()V

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbContext;

    invoke-direct {v1, p1, p2}, Lcom/google/android/googlequicksearchbox/QsbContext;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    .local v1, qsbContext:Lcom/google/android/googlequicksearchbox/QsbContext;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.search.action.SETTINGS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/SourceUpdateReceiver;->updateSources(Lcom/google/android/googlequicksearchbox/QsbContext;)V

    .line 41
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/SearchWidgetProvider;->updateSearchWidgets(Lcom/google/android/googlequicksearchbox/QsbContext;)V

    .line 43
    :cond_1
    return-void
.end method
