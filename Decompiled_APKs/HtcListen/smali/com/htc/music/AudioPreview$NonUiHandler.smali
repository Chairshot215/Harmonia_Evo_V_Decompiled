.class final Lcom/htc/music/AudioPreview$NonUiHandler;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/htc/music/AudioPreview;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    const-string v5, "[AudioPreview]"

    const-string v6, "Something wrong in NonUiHandler.handleMessage()."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[AudioPreview]"

    const-string v6, "get metadata from MediaMetadataRetriever"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$2100(Lcom/htc/music/AudioPreview;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mTrackName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2302(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mArtistName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2402(Lcom/htc/music/AudioPreview;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$1;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$1;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "[AudioPreview]"

    const-string v6, "Retrieve metadata fail"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "[AudioPreview]"

    const-string v6, "mAlbumArt == null in SET_ALBUMART"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumID:I
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$400(Lcom/htc/music/AudioPreview;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->getAlbumArtPath(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v7, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    #calls: Lcom/htc/music/AudioPreview;->getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v6, v0, v7, v8}, Lcom/htc/music/AudioPreview;->access$2700(Lcom/htc/music/AudioPreview;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2602(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v7, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArtBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/htc/music/AudioPreview;->access$2600(Lcom/htc/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/music/AudioPreview;->getReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mAlbumArtReflectionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2802(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$2;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$2;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mAlbumArt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/music/AudioPreview;->access$2500(Lcom/htc/music/AudioPreview;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "[AudioPreview]"

    const-string v6, "mAlbumArt == null in SET_DEFAULT_ALBUMART"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v5}, Lcom/htc/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02005d

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    iget-object v6, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v6, v4}, Lcom/htc/music/AudioPreview;->getReflectionBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/htc/music/AudioPreview;->mUnknownAlbumReflectionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/htc/music/AudioPreview;->access$2902(Lcom/htc/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/htc/music/AudioPreview$NonUiHandler;->this$0:Lcom/htc/music/AudioPreview;

    new-instance v6, Lcom/htc/music/AudioPreview$NonUiHandler$3;

    invoke-direct {v6, p0}, Lcom/htc/music/AudioPreview$NonUiHandler$3;-><init>(Lcom/htc/music/AudioPreview$NonUiHandler;)V

    invoke-virtual {v5, v6}, Lcom/htc/music/AudioPreview;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
