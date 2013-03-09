.class Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;
.super Landroid/content/BroadcastReceiver;
.source "StyleChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v2, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    new-instance v1, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;

    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {v1, v2, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;-><init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Landroid/content/Context;)V

    .line 437
    .local v1, loader:Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;
    iget-object v2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$4;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    iget-object v2, v2, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->mProviders:[Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    .end local v1           #loader:Lcom/htc/home/personalize/fusionwidget/StyleChooser$LoaderTask;
    :cond_0
    return-void
.end method
