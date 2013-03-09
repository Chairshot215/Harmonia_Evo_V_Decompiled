.class Lcom/htc/music/HtcMusic$4;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v1, 0x0

    #setter for: Lcom/htc/music/HtcMusic;->mEnalbeAutoPlay:Z
    invoke-static {v0, v1}, Lcom/htc/music/HtcMusic;->access$802(Lcom/htc/music/HtcMusic;Z)Z

    iget-object v0, p0, Lcom/htc/music/HtcMusic$4;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->toggleShuffle()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$900(Lcom/htc/music/HtcMusic;)V

    return-void
.end method
