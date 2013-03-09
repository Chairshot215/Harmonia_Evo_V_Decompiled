.class Lcom/google/android/finsky/layout/YoutubeFrameView$1;
.super Ljava/lang/Object;
.source "YoutubeFrameView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/YoutubeFrameView;->showPlayIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

.field final synthetic val$youtubeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/YoutubeFrameView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    iput-object p2, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$youtubeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->val$youtubeUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/utils/IntentUtils;->createYouTubeIntentForUrl(Landroid/content/pm/PackageManager;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/finsky/layout/YoutubeFrameView$1;->this$0:Lcom/google/android/finsky/layout/YoutubeFrameView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/YoutubeFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
