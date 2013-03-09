.class Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;
.super Ljava/lang/Object;
.source "GifPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter$1;->this$1:Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;

    #calls: Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->DisplayNextFrame()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;->access$1300(Lcom/htc/album/TabPluginDevice/GifPlayer$GifPresenter;)V

    .line 335
    return-void
.end method
