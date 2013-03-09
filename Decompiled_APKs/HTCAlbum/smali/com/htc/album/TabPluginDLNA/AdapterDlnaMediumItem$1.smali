.class Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;
.super Landroid/os/Handler;
.source "AdapterDlnaMediumItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->mbDestroying:Z

    if-eqz v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem$1;->this$0:Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->onMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
