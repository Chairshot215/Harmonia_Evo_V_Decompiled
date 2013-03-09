.class Lcom/htc/music/AudioPreview$1;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/AudioPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "title"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "artist"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v6, "album_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v3, :cond_0

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    #setter for: Lcom/htc/music/AudioPreview;->mMediaId:J
    invoke-static {v6, v7, v8}, Lcom/htc/music/AudioPreview;->access$102(Lcom/htc/music/AudioPreview;J)J

    :cond_0
    if-ltz v5, :cond_5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$200(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ltz v2, :cond_1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    #setter for: Lcom/htc/music/AudioPreview;->mAlbumID:I
    invoke-static {v6, v7}, Lcom/htc/music/AudioPreview;->access$402(Lcom/htc/music/AudioPreview;I)I

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mNonUiHandler:Lcom/htc/music/AudioPreview$NonUiHandler;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$500(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$NonUiHandler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/music/AudioPreview$NonUiHandler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    invoke-virtual {v6}, Lcom/htc/music/AudioPreview;->setNames()V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/htc/music/AudioPreview$1;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/htc/music/AudioPreview;->access$300(Lcom/htc/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f070043

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    const-string v6, "[AudioPreview]"

    const-string v7, "Cursor had no names for us"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v6, "[AudioPreview]"

    const-string v7, "empty cursor"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
