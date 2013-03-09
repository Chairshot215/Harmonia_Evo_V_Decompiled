.class Lcom/htc/video/HtcVideoView$6;
.super Ljava/lang/Object;
.source "HtcVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcVideoView;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 12
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    .line 572
    const-string v1, "HtcVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Error]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    const/4 v2, -0x1

    #setter for: Lcom/htc/video/HtcVideoView;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/htc/video/HtcVideoView;->access$502(Lcom/htc/video/HtcVideoView;I)I

    .line 576
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    const/4 v2, -0x1

    #setter for: Lcom/htc/video/HtcVideoView;->mTargetState:I
    invoke-static {v1, v2}, Lcom/htc/video/HtcVideoView;->access$1502(Lcom/htc/video/HtcVideoView;I)I

    .line 578
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaController:Lcom/htc/video/HtcMediaController;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1100(Lcom/htc/video/HtcVideoView;)Lcom/htc/video/HtcMediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1900(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    const/4 v1, 0x1

    .line 672
    :goto_0
    return v1

    .line 591
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$1000(Lcom/htc/video/HtcVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_1
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    invoke-virtual {v1}, Lcom/htc/video/HtcVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 603
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    const/4 v2, 0x1

    #setter for: Lcom/htc/video/HtcVideoView;->mIsForceStop:Z
    invoke-static {v1, v2}, Lcom/htc/video/HtcVideoView;->access$2002(Lcom/htc/video/HtcVideoView;Z)Z

    .line 604
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2100(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 609
    .local v10, r:Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 610
    .local v11, wmdrm:Z
    const/16 v1, -0x20

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$100(Lcom/htc/video/HtcVideoView;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "media"

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$100(Lcom/htc/video/HtcVideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2200(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 613
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$100(Lcom/htc/video/HtcVideoView;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 614
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 618
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 621
    .local v9, mimetype:Ljava/lang/String;
    const-string v1, "video/x-wmv-drm"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 622
    const/4 v11, 0x1

    .line 627
    .end local v9           #mimetype:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_6

    .line 634
    const v8, 0x1040015

    .line 647
    .local v8, messageId:I
    :goto_2
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2300(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2300(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 648
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2300(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/video/HtcVideoView;->access$2600(Lcom/htc/video/HtcVideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040012

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040010

    new-instance v4, Lcom/htc/video/HtcVideoView$6$2;

    invoke-direct {v4, p0}, Lcom/htc/video/HtcVideoView$6$2;-><init>(Lcom/htc/video/HtcVideoView$6;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/video/HtcVideoView$6$1;

    invoke-direct {v3, p0}, Lcom/htc/video/HtcVideoView$6$1;-><init>(Lcom/htc/video/HtcVideoView$6;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    #setter for: Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v1, v2}, Lcom/htc/video/HtcVideoView;->access$2402(Lcom/htc/video/HtcVideoView;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 668
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    iget-object v2, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-static {v2}, Lcom/htc/video/HtcVideoView;->access$2400(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    #setter for: Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1, v2}, Lcom/htc/video/HtcVideoView;->access$2302(Lcom/htc/video/HtcVideoView;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 669
    iget-object v1, p0, Lcom/htc/video/HtcVideoView$6;->this$0:Lcom/htc/video/HtcVideoView;

    #getter for: Lcom/htc/video/HtcVideoView;->mAlertDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v1}, Lcom/htc/video/HtcVideoView;->access$2300(Lcom/htc/video/HtcVideoView;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 672
    .end local v8           #messageId:I
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #wmdrm:Z
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 593
    :catch_0
    move-exception v7

    .line 594
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 627
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v10       #r:Landroid/content/res/Resources;
    .restart local v11       #wmdrm:Z
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 635
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    if-eqz v11, :cond_7

    .line 636
    const v8, 0x7f040015

    .restart local v8       #messageId:I
    goto :goto_2

    .line 642
    .end local v8           #messageId:I
    :cond_7
    const v8, 0x1040011

    .restart local v8       #messageId:I
    goto/16 :goto_2
.end method
