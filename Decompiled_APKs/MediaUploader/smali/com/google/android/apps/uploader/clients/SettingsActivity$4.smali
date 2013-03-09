.class Lcom/google/android/apps/uploader/clients/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity;->loadThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$300(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/FileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/FileInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    new-instance v3, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity$4;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
