.class public Lcom/android/browser/BookmarkSearch;
.super Landroid/app/Activity;
.source "BookmarkSearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/browser/BookmarkSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-class v2, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/browser/BookmarkSearch;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BookmarkSearch;->finish()V

    .line 42
    return-void
.end method
