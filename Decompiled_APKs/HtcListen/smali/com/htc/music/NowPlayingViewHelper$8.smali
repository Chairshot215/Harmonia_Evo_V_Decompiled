.class Lcom/htc/music/NowPlayingViewHelper$8;
.super Ljava/lang/Object;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/NowPlayingViewHelper;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentTrackName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$1100(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/NowPlayingViewHelper;->access$1200(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/NowPlayingViewHelper;->access$1300(Lcom/htc/music/NowPlayingViewHelper;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/NowPlayingViewHelper;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/NowPlayingViewHelper;->access$1400(Lcom/htc/music/NowPlayingViewHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$8;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #calls: Lcom/htc/music/NowPlayingViewHelper;->shareMusicFile()V
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$1500(Lcom/htc/music/NowPlayingViewHelper;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
