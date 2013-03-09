.class Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;
.super Landroid/database/ContentObserver;
.source "TemplateActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/TemplateActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/TemplateActivityBase;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/TemplateActivityBase;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 107
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.TemplateContentObserver;"
    iput-object p1, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    .line 108
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 116
    .local p0, this:Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;,"Lcom/htc/opensense2/album/TemplateActivityBase<TADAPTER;>.TemplateContentObserver;"
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    #getter for: Lcom/htc/opensense2/album/TemplateActivityBase;->mState:I
    invoke-static {v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->access$000(Lcom/htc/opensense2/album/TemplateActivityBase;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onContentDataChange(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/opensense2/album/TemplateActivityBase$TemplateContentObserver;->this$0:Lcom/htc/opensense2/album/TemplateActivityBase;

    iget-object v0, v0, Lcom/htc/opensense2/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/DisplayManager;->onContentDataChange(Z)V

    goto :goto_0
.end method
