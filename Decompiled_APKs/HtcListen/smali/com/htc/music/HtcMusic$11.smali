.class Lcom/htc/music/HtcMusic$11;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$11;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/HtcMusic$11;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, p0, Lcom/htc/music/HtcMusic$11;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
