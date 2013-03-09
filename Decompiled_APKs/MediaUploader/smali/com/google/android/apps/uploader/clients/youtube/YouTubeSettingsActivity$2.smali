.class Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$2;
.super Ljava/lang/Object;
.source "YouTubeSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 110
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity$2;->this$0:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    #calls: Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->refreshSummaryMessage()V
    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->access$200(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    .line 113
    return-void
.end method
