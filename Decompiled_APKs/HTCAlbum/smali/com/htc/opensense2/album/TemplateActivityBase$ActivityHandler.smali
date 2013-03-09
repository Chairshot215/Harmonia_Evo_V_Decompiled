.class Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "TemplateActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/TemplateActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/TemplateActivityBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/TemplateActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    iput-object p1, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/TemplateActivityBase;Lcom/htc/opensense2/album/TemplateActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;-><init>(Lcom/htc/opensense2/album/TemplateActivityBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 135
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    #getter for: Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I
    invoke-static {v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->access$000(Lcom/htc/opensense2/album/TemplateActivityBase;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->handleActivityMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v0, v0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v0, v0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/DisplayManager;->handleActivityMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
