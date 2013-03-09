.class final Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;
.super Landroid/os/Handler;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUIHandler"
.end annotation


# static fields
.field private static final ADD_TO_PLAYLIST:I = 0x7

.field private static final DECODE_ALBUM_ART:I = 0x2

.field private static final HANDLE_CONTACT_RINGTONE_RESULT:I = 0x6

.field private static final MERGE_DL_ALBUM_ART:I = 0x8

.field private static final PLAY_ALL:I = 0x4

.field private static final PLAY_ALL_FROM_INDEX:I = 0x3

.field private static final QUERY_ALBUM_INFO:I = 0x0

.field private static final QUERY_TRACK_CURSOR:I = 0x1

.field private static final SHUFFLE_ALL:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "[AlbumDetailActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonUIHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkDrmFile(Landroid/net/Uri;I)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v9, p1}, Lcom/htc/music/util/MusicUtils;->getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v9, v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v7, :cond_3

    const/4 v4, 0x0

    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v11

    new-array v12, v12, [I

    invoke-static {v9, v10, p2, v11, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-static {v10, v0}, Lcom/htc/music/util/MusicUtils;->getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;
    invoke-static {v9, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3302(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMsg:Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_2

    move v5, p2

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v11}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v11

    new-array v12, v12, [I

    invoke-static {v9, v10, p2, v11, v12}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-class v10, Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v9, "drmtargettomain"

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    const-string v10, "_id"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v10, -0x2

    invoke-virtual {v9, v3, v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v9, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v9}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v10

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "track"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    const v2, 0x7f020046

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "[AlbumDetailActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decode file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->mergeArtCover(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Xfermode;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;
    invoke-static {v6}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Shader;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Xfermode;Landroid/graphics/Shader;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "[AlbumDetailActivity]"

    const-string v4, "Album art is null. Decode R.drawable.music_detail_nocover"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const v4, 0x7f020045

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v10, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectX:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v6

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtOffectY:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v7

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v8

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtSize:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v9

    move-object v3, v0

    move v5, v2

    invoke-static/range {v3 .. v9}, Lcom/htc/music/util/MusicUtils;->mergeArtCover(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReflectionHeight:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mMode:Landroid/graphics/Xfermode;
    invoke-static {v4}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Xfermode;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mLG:Landroid/graphics/Shader;
    invoke-static {v5}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Shader;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Xfermode;Landroid/graphics/Shader;)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v10, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3202(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    const-string v3, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to notify UI: mAlbumArt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->updateAlbumArt(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addToPlaylist(IJ)V
    .locals 2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public decodeAlbumArt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ALBUM_NAME"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleContactRingtoneResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20

    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< NonUIHandler >>>>> + msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NonUIHandler.handleMessage][QUERY_ALBUM_INFO] msg.obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1800()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v1, "title"

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " != \'\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND is_music>=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "artist_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const-wide/16 v1, -0x1

    cmp-long v1, v13, v1

    if-nez v1, :cond_3

    const-string v1, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #calls: Lcom/htc/music/browserlayer/AlbumDetailActivity;->increaseQueryingCount()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1900(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2400()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "track"

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "external"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mGenre:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mComposer:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v1, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "composer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_2
    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v1, "ALBUM_NAME"

    invoke-virtual {v12, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f020046

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const-string v1, "[AlbumDetailActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play album from index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    const-string v1, "content://drm/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v15}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->checkDrmFile(Landroid/net/Uri;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-static {v1, v2, v15, v3, v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mCategory:Lcom/htc/music/NpCategory;
    invoke-static {v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/NpCategory;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mRingToneHelper:Lcom/htc/music/util/RingtoneHelper;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/util/RingtoneHelper;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/music/util/RingtoneHelper;->hadnleContactRingtoneResult(Ljava/util/ArrayList;Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->showContactRingtoneToast()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const/4 v1, 0x1

    new-array v3, v1, [I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    aput v5, v3, v1

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "<unknown>"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$602(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v2, "album_art"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2502(Lcom/htc/music/browserlayer/AlbumDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    const-string v2, "numsongs"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1502(Lcom/htc/music/browserlayer/AlbumDetailActivity;I)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->hideEmptyErrorViewUI()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mUIHandler:Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$200(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$UIHandler;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArtPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->this$0:Lcom/htc/music/browserlayer/AlbumDetailActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020046

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->decodeHeaderArtCover(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

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
    .end packed-switch
.end method

.method public mergeDlAlbumArt(Landroid/database/Cursor;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public playAll()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public playAllFromIndex(I)V
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public queryAlbumInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public queryTrackCursor()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public shuffleAll()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$NonUIHandler;->sendEmptyMessage(I)Z

    return-void
.end method
