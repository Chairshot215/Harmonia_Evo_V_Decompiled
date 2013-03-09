.class Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;
.super Landroid/os/Handler;
.source "CellLayout.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateCellLayoutCacheHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/CellLayout;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 2299
    iput-object p1, p0, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;->this$0:Lcom/htc/launcher/CellLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2299
    invoke-direct {p0, p1}, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;-><init>(Lcom/htc/launcher/CellLayout;)V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mIsScrolling:Z
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$200(Lcom/htc/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;->this$0:Lcom/htc/launcher/CellLayout;

    #getter for: Lcom/htc/launcher/CellLayout;->mIsPause:Z
    invoke-static {v0}, Lcom/htc/launcher/CellLayout;->access$300(Lcom/htc/launcher/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/htc/launcher/CellLayout$UpdateCellLayoutCacheHandler;->this$0:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->updateCellLayoutCache()V

    .line 2306
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
