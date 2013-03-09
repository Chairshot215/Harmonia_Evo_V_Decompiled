.class Lcom/htc/dlnamiddlelayer/DLNAService$5;
.super Ljava/lang/Object;
.source "DLNAService.java"

# interfaces
.implements Lcom/htc/dlnamiddlelayer/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;->rendererUpdateMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

.field final synthetic val$rendererDataList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2193
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$5;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$5;->val$rendererDataList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 2196
    move-object v1, p1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RendererItem;

    .line 2197
    .local v1, item:Lcom/htc/dlnamiddlelayer/RendererItem;
    new-instance v0, Lcom/htc/dlnainterface/DLNARendererData;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARendererData;-><init>()V

    .line 2198
    .local v0, data:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RendererItem;->getUPnPRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RendererItem;->getUPnPRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RendererItem;->getThumbIconType()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/dlnainterface/DLNARendererData;->setRendererData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2202
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$5;->val$rendererDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2204
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renderer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RendererItem;->getUPnPRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void
.end method
