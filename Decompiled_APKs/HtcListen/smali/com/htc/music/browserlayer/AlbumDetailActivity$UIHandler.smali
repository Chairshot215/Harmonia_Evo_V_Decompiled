.class final Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
.super Landroid/os/Handler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UIHandler"
.end annotation


# static fields
.field private static final BACK_PRESSED:I = 0x7

.field private static final DELETE_TRACK:I = 0x8

.field private static final HIDE_EMPTY_ERROR_VIEW:I = 0x5

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x1

.field private static final SET_TITLE:I = 0x0

.field private static final SHOW_CONTACT_RINGTONE_TOAST:I = 0x2

.field private static final SHOW_DATABASE_ERROR:I = 0x3

.field private static final SHOW_EMPTY_VIEW:I = 0x4

.field private static final SHOW_SPINNER:I = 0x6

.field private static final UPDATE_ALBUM_ART:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Lcom/htc/music/browserlayer/AlbumDetailActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    return-void
.end method


# virtual methods
.method public backPressed(I)V
    .locals 3

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public deleteTrack(I)V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v2, "[AlbumDetailActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< UIHandler >>>>> + msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "NOTIFY_DATA_SET_CHANGED, stopping or mAdapter=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/util/RingtoneHelper;->showContactRingtoneToast()V

    goto :goto_0

    :cond_2
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "SHOW_CONTACT_RINGTONE_TOAST, stopping or mRingToneHelper=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v2, v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDatabaseError()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v2, v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showEmptyView(I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v2, v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Z)Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v3, -0x1

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mEmptyViewMsg:I
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1402(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->hideEmptyErrorView()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->updateOptionsMenu()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showSpinner(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->onBackPressed()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    new-array v3, v5, [I

    iget v4, p1, Landroid/os/Message;->arg1:I

    aput v4, v3, v6

    invoke-static {v2, v3}, Lcom/htc/music/util/MusicUtils;->deleteTracks(Landroid/content/Context;[I)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1502(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showEmptyViewUI(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    check-cast v0, Landroid/graphics/Bitmap;

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_4
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAdapter:Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->notifyDataSetChanged()V

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_5
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "UPDATE_ALBUM_ART, stopping or mAdapter=null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public hideEmptyErrorViewUI()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showContactRingtoneToast()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDatabaseErrorUI()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showEmptyViewUI(I)V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showSpinnerUI(Z)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateAlbumArt(Landroid/graphics/Bitmap;)V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
