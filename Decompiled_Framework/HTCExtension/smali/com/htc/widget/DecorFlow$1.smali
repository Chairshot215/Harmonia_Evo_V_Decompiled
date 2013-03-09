.class Lcom/htc/widget/DecorFlow$1;
.super Ljava/lang/Object;
.source "DecorFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DecorFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DecorFlow;


# direct methods
.method constructor <init>(Lcom/htc/widget/DecorFlow;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/DecorFlow$1;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$1;->this$0:Lcom/htc/widget/DecorFlow;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DecorFlow;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DecorFlow;->access$002(Lcom/htc/widget/DecorFlow;Z)Z

    iget-object v0, p0, Lcom/htc/widget/DecorFlow$1;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-virtual {v0}, Lcom/htc/widget/DecorFlow;->selectionChanged()V

    return-void
.end method
