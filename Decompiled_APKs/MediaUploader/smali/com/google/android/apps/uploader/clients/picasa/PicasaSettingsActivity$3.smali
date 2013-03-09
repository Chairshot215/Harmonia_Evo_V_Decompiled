.class Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;
.super Ljava/lang/Object;
.source "PicasaSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->resetAlbumCursor()V
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
    .line 197
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$400(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$500(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$400(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$500(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->albumSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$200(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->sessionAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$300(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->setSpinnerSelection(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;->access$600(Lcom/google/android/apps/uploader/clients/picasa/PicasaSettingsActivity;Ljava/lang/String;)V

    .line 205
    :cond_1
    return-void
.end method
