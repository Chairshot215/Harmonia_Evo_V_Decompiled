.class Lcom/htc/album/modules/ui/ControlBarManager$6;
.super Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
.source "ControlBarManager.java"


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
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$6;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;-><init>(Lcom/htc/album/modules/ui/ControlBarManager$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$6;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    iget v1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->barId:I

    iget-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->visible:Z

    #calls: Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->access$600(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V

    .line 129
    return-void
.end method
