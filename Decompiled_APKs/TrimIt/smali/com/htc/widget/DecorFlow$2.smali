.class Lcom/htc/widget/DecorFlow$2;
.super Ljava/lang/Object;
.source "DecorFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/DecorFlow;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/htc/widget/DecorFlow$2;->this$0:Lcom/htc/widget/DecorFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/widget/DecorFlow$2;->this$0:Lcom/htc/widget/DecorFlow;

    #calls: Lcom/htc/widget/DecorFlow;->dispatchUnpress()V
    invoke-static {v0}, Lcom/htc/widget/DecorFlow;->access$300(Lcom/htc/widget/DecorFlow;)V

    .line 1346
    return-void
.end method
