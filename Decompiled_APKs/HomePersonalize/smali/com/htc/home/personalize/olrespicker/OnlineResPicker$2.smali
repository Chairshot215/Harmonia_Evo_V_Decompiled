.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


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
    .line 362
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    iget v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->currentSelect:I

    if-eq p1, v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$2;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const/4 v1, 0x0

    #calls: Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->onTap(Z)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->access$300(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;Z)V

    goto :goto_0
.end method
