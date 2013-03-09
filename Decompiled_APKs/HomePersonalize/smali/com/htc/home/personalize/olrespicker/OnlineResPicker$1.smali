.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->changeSelect(I)V
    invoke-static {v1, p1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$100(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;I)V

    .line 332
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 333
    .local v0, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :goto_0
    instance-of v1, v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Lcom/htc/home/personalize/onlineresource/DummyResource;

    .end local v0           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineresource/DummyResource;->loadNextPage()V

    .line 336
    :cond_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    #getter for: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->mList:Lcom/htc/home/personalize/onlineresource/OnlineResourceList;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$200(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)Lcom/htc/home/personalize/onlineresource/OnlineResourceList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$1;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    iget v2, v2, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->get(I)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v0

    goto :goto_0
.end method
