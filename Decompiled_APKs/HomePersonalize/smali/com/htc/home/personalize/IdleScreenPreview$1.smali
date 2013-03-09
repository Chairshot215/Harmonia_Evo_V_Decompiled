.class Lcom/htc/home/personalize/IdleScreenPreview$1;
.super Ljava/lang/Object;
.source "IdleScreenPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/IdleScreenPreview;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/IdleScreenPreview;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/IdleScreenPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/home/personalize/IdleScreenPreview$1;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$1;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    #getter for: Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    invoke-static {v0}, Lcom/htc/home/personalize/IdleScreenPreview;->access$000(Lcom/htc/home/personalize/IdleScreenPreview;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/home/personalize/IdleScreenPreview$1;->this$0:Lcom/htc/home/personalize/IdleScreenPreview;

    const/4 v1, 0x0

    #setter for: Lcom/htc/home/personalize/IdleScreenPreview;->mIdleScreenConnection:Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;
    invoke-static {v0, v1}, Lcom/htc/home/personalize/IdleScreenPreview;->access$002(Lcom/htc/home/personalize/IdleScreenPreview;Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;)Lcom/htc/home/personalize/IdleScreenPreview$IdleScreenConnection;

    .line 233
    :cond_0
    return-void
.end method
