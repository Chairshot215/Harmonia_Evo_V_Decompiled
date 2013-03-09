.class Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/uploader/clients/SettingsActivity$4;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;

.field final synthetic val$thumbView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity$4;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->this$1:Lcom/google/android/apps/uploader/clients/SettingsActivity$4;

    iput-object p2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->val$thumbView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->val$thumbView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->val$thumbView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity$4$1;->this$1:Lcom/google/android/apps/uploader/clients/SettingsActivity$4;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I
    invoke-static {v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->access$400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const v1, 0x7f020008

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    return-void

    .line 189
    :cond_0
    const v1, 0x7f020009

    goto :goto_0
.end method
