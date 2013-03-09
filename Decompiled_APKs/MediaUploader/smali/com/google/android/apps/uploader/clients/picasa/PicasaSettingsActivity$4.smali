.class Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;
.super Ljava/lang/Object;
.source "PicasaSettingsActivity.java"

# interfaces
.implements Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getAlbums()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public albumsChanged(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/uploader/clients/picasa/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/clients/picasa/Album;

    .line 223
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/Album;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 228
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Albums returned. Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in album database."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$500(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->resetAlbumCursor()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$700(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)V

    .line 234
    :cond_1
    return-void
.end method

.method public failed(Lcom/google/android/apps/uploader/ApplicationException;)V
    .locals 3
    .parameter

    .prologue
    .line 237
    const-string v0, "MediaUploader"

    const-string v1, "Album fetch failed."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/ApplicationException;->isAuthenticationException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    const v1, 0x7f06001e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->finish()V

    .line 243
    :cond_0
    return-void
.end method
