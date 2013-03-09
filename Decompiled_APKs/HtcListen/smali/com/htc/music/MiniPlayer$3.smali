.class Lcom/htc/music/MiniPlayer$3;
.super Landroid/os/Handler;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DECODED_BITMAP"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3}, Lcom/htc/music/MiniPlayer;->setDefaultThumb()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/music/MiniPlayer$3;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v3, v1, v0}, Lcom/htc/music/MiniPlayer;->setThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0
.end method
