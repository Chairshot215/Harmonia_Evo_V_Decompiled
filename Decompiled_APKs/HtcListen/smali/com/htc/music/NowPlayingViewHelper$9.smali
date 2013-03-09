.class Lcom/htc/music/NowPlayingViewHelper$9;
.super Landroid/os/Handler;
.source "NowPlayingViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$9;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mRingtoneHelper:Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$000(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingRingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
