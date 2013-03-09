.class Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;
.super Landroid/os/Handler;
.source "TemplateActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/TemplateActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/TemplateActivityBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/TemplateActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    iput-object p1, p0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/TemplateActivityBase;Lcom/htc/opensense/album/TemplateActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;-><init>(Lcom/htc/opensense/album/TemplateActivityBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 87
    .local p0, this:Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;,"Lcom/htc/opensense/album/TemplateActivityBase<TADAPTER;>.ActivityHandler;"
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    #getter for: Lcom/htc/opensense/album/TemplateActivityBase;->mState:I
    invoke-static {v1}, Lcom/htc/opensense/album/TemplateActivityBase;->access$000(Lcom/htc/opensense/album/TemplateActivityBase;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->handleActivityMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    iget-object v1, v1, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase$ActivityHandler;->this$0:Lcom/htc/opensense/album/TemplateActivityBase;

    iget-object v1, v1, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/DisplayManager;->handleActivityMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Album"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in handleMessage. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
