.class Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetBackgroundData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData$1;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData$1;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBackgroundData;->updateIcon()V

    .line 106
    :cond_0
    return-void
.end method
