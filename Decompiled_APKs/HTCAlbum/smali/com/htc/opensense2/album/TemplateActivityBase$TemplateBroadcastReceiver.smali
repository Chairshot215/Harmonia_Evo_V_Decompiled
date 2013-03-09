.class Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TemplateActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/TemplateActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/TemplateActivityBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/TemplateActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    iput-object p1, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/TemplateActivityBase;Lcom/htc/opensense2/album/TemplateActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/opensense2/album/TemplateActivityBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    #getter for: Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I
    invoke-static {v2}, Lcom/htc/opensense2/album/TemplateActivityBase;->access$000(Lcom/htc/opensense2/album/TemplateActivityBase;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/TemplateActivityBase;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBroadcastReceiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, handled:Z
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/TemplateActivityBase;->onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v2, v2, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/DisplayManager;->onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 93
    :cond_3
    :goto_1
    if-nez v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/TemplateActivityBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v2, v2, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v2, v2, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/DisplayManager;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_4
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/TemplateActivityBase;->onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    iget-object v2, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v2, v2, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/opensense2/album/DisplayManager;->onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_1
.end method
