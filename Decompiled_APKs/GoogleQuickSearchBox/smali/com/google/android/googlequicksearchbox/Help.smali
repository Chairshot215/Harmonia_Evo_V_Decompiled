.class public Lcom/google/android/googlequicksearchbox/Help;
.super Ljava/lang/Object;
.source "Help.java"


# instance fields
.field private final mConfig:Lcom/google/android/googlequicksearchbox/Config;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 0
    .parameter "context"
    .parameter "config"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Help;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/Help;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    .line 36
    return-void
.end method

.method private getHelpIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "activityName"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/Help;->mConfig:Lcom/google/android/googlequicksearchbox/Config;

    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/Config;->getHelpUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, helpUrl:Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;)V
    .locals 1
    .parameter "menu"
    .parameter "activityName"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/googlequicksearchbox/Help;->addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public addHelpMenuItem(Landroid/view/Menu;Ljava/lang/String;Z)V
    .locals 4
    .parameter "menu"
    .parameter "activityName"
    .parameter "showAsAction"

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lcom/google/android/googlequicksearchbox/Help;->getHelpIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, helpIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/Help;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, inflater:Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0f

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const v3, 0x7f10002f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 48
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 49
    if-eqz p3, :cond_0

    .line 50
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 53
    .end local v1           #inflater:Landroid/view/MenuInflater;
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method
