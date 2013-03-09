.class Lcom/htc/music/HtcMusic$44;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->createDownloadAlbumArtDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0xd

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->startAutoDownloadAlbum()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$6800(Lcom/htc/music/HtcMusic;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v4}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/HtcMusic;->autoUpdateAlbumArt(I)V
    invoke-static {v2, v3}, Lcom/htc/music/HtcMusic;->access$6900(Lcom/htc/music/HtcMusic;I)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->stopDownloadAlbumArtService()V
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$7000(Lcom/htc/music/HtcMusic;)V

    iget-object v2, p0, Lcom/htc/music/HtcMusic$44;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v2, v4}, Lcom/htc/music/HtcMusic;->dismissDialog(I)V

    goto :goto_0
.end method
