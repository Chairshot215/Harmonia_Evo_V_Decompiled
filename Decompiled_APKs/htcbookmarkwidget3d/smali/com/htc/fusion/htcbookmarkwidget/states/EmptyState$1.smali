.class Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "EmptyState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;


# direct methods
.method constructor <init>(Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 37
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v3, "intent_widget"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    iget-object v3, p0, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;->this$0:Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;

    invoke-virtual {v3}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState;->getStateHost()Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/fusion/htcbookmarkwidget/states/IStateHost;->getWidgetHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 45
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "HtcBookmarkWidget"

    const-string v4, "Activity not found, abort insert bookmark"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/fusion/htcbookmarkwidget/states/EmptyState$1;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V

    return-void
.end method
