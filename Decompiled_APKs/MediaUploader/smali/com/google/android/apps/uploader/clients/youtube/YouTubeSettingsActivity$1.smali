.class Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$1;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getContentView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    #getter for: Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->detailsView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->access$000(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$1;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->setDetailsExpanded(Z)V
    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->access$100(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Z)V

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
