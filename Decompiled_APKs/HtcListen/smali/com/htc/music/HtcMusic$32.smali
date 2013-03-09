.class Lcom/htc/music/HtcMusic$32;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/HtcMusic;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->addtoPlaylist()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5300(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    iget-object v1, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mTrackName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/htc/music/HtcMusic;->access$4700(Lcom/htc/music/HtcMusic;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/HtcMusic;->access$4800(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mArtistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/HtcMusic;->access$4900(Lcom/htc/music/HtcMusic;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/music/HtcMusic;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/music/HtcMusic;->access$5000(Lcom/htc/music/HtcMusic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->chooseShareType()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5400(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #getter for: Lcom/htc/music/HtcMusic;->mDlnaMode:I
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5200(Lcom/htc/music/HtcMusic;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->setRingtone()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5600(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/music/HtcMusic$32;->this$0:Lcom/htc/music/HtcMusic;

    #calls: Lcom/htc/music/HtcMusic;->doSearch()V
    invoke-static {v0}, Lcom/htc/music/HtcMusic;->access$5500(Lcom/htc/music/HtcMusic;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
