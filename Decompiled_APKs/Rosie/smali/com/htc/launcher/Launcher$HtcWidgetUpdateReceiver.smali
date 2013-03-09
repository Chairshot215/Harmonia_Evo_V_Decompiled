.class Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcWidgetUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 6425
    iput-object p1, p0, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6425
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6428
    const-string v2, "package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6429
    .local v0, packageName:Ljava/lang/String;
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "Rosie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget updated, packageName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6431
    :cond_0
    new-instance v1, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;

    const-string v2, "widget_updated_thread"

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver$1;-><init>(Lcom/htc/launcher/Launcher$HtcWidgetUpdateReceiver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 6451
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6452
    return-void
.end method
