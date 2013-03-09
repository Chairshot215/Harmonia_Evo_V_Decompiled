.class Lcom/htc/music/HtcMusic$18;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$18;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/HtcMusic$18;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v0, p0, Lcom/htc/music/HtcMusic$18;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/music/HtcMusic;->setNowPlayingVisible(Z)V

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$18;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v1, v1, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v1, :cond_1

    const v1, 0x20808fb

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    check-cast p1, Lcom/htc/widget/HeaderBarImage;

    iget-object v0, p0, Lcom/htc/music/HtcMusic$18;->this$0:Lcom/htc/music/HtcMusic;

    iget-boolean v0, v0, Lcom/htc/music/HtcMusic;->mNowPlayingViewOn:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070105

    :goto_2
    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x2080910

    goto :goto_1

    :cond_2
    const v0, 0x7f0700df

    goto :goto_2
.end method
