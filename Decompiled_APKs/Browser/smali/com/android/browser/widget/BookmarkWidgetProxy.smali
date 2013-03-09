.class public Lcom/android/browser/widget/BookmarkWidgetProxy;
.super Landroid/content/BroadcastReceiver;
.source "BookmarkWidgetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BookmarkWidgetProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 32
    const-string v1, "com.android.browser.widget.CHANGE_FOLDER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p1, p2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->changeFolder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    :goto_0
    return-void

    .line 34
    :cond_0
    const-string v1, "show_browser"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-string v2, "show_browser"

    const-class v3, Lcom/android/browser/BrowserActivity;

    invoke-direct {v1, v2, v4, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/widget/BookmarkWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    .local v0, view:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/widget/BookmarkWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    const/high16 v1, 0x1000

    :try_start_0
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BookmarkWidgetProxy"

    const-string v2, "Failed to start intent activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
