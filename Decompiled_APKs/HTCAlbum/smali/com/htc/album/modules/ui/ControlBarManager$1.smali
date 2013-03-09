.class Lcom/htc/album/modules/ui/ControlBarManager$1;
.super Ljava/lang/Object;
.source "ControlBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/ControlBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/modules/ui/ControlBarManager;


# direct methods
.method constructor <init>(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$1;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$1;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    #calls: Lcom/htc/album/modules/ui/ControlBarManager;->doToggleControlBarsVisibility()V
    invoke-static {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->access$000(Lcom/htc/album/modules/ui/ControlBarManager;)V

    .line 69
    return-void
.end method
