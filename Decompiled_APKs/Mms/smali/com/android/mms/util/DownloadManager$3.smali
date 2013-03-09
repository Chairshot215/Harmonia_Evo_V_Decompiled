.class Lcom/android/mms/util/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    iput-object p2, p0, Lcom/android/mms/util/DownloadManager$3;->val$str:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    #getter for: Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$3;->val$str:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    return-void
.end method
