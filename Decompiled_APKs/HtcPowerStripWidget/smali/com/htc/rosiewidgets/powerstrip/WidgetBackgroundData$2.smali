.class Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$2;
.super Landroid/content/BroadcastReceiver;
.source "WidgetBackgroundData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->updateIcon()V

    .line 172
    :cond_0
    return-void
.end method
