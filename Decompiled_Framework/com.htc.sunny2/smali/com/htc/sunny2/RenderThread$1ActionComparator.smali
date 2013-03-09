.class Lcom/htc/sunny2/RenderThread$1ActionComparator;
.super Ljava/lang/Object;
.source "RenderThread.java"

# interfaces
.implements Lcom/htc/sunny2/Queue$ItemComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/Queue$ItemComparator",
        "<",
        "Lcom/htc/sunny2/RenderThreadAction;",
        ">;"
    }
.end annotation


# instance fields
.field private host:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/sunny2/RenderThread;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->this$0:Lcom/htc/sunny2/RenderThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    iput-object p3, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->host:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadAction;->GetHost()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/RenderThread$1ActionComparator;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/htc/sunny2/RenderThreadAction;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/RenderThread$1ActionComparator;->compare(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    return v0
.end method
