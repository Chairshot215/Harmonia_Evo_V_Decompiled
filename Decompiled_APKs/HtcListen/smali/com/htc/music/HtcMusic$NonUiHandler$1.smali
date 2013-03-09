.class Lcom/htc/music/HtcMusic$NonUiHandler$1;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic$NonUiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/HtcMusic$NonUiHandler;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic$NonUiHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->showHideOneShotMode()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$6100(Lcom/htc/music/HtcMusic;)V

    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$NonUiHandler$1;->this$1:Lcom/htc/music/HtcMusic$NonUiHandler;

    iget-object v0, v0, Lcom/htc/music/HtcMusic$NonUiHandler;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mProgressLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$6200(Lcom/htc/music/HtcMusic;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
