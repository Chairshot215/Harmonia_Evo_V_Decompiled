.class Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$3;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getRequestTemplate(Lcom/google/android/apps/uploader/FileInfo;)Ljava/lang/String;
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
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$3;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    const v1, 0x7f060050

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    return-void
.end method
