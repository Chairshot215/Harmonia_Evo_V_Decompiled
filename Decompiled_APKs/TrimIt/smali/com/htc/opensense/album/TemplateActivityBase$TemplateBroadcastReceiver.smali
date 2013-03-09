.class Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TemplateActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/TemplateActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/TemplateActivityBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/TemplateActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    iput-object p1, p0, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.TemplateBroadcastReceiver;"
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    #getter for: Lcom/htc/opensense/album/TemplateActivityBase;->mState:I
    invoke-static {v0}, Lcom/htc/opensense/album/TemplateActivityBase;->access$000(Lcom/htc/opensense/album/TemplateActivityBase;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/TemplateActivityBase;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    iget-object v0, v0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase$TemplateBroadcastReceiver;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    iget-object v0, v0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/DisplayManager;->onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
