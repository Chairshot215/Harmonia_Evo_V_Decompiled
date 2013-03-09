.class Lcom/htc/video/ViewVideo$15;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->checkDrmState(Lcom/htc/video/VideoUtility/VideoData;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;

.field final synthetic val$image:Lcom/htc/video/VideoUtility/VideoData;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;Lcom/htc/video/VideoUtility/VideoData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1920
    iput-object p1, p0, Lcom/htc/video/ViewVideo$15;->this$0:Lcom/htc/video/ViewVideo;

    iput-object p2, p0, Lcom/htc/video/ViewVideo$15;->val$image:Lcom/htc/video/VideoUtility/VideoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/htc/video/ViewVideo$15;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v1, p0, Lcom/htc/video/ViewVideo$15;->val$image:Lcom/htc/video/VideoUtility/VideoData;

    iget-object v2, p0, Lcom/htc/video/ViewVideo$15;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mGeneralDrmItemClickListener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;
    invoke-static {v2}, Lcom/htc/video/ViewVideo;->access$4200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/video/VideoUtility/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    .line 1923
    return-void
.end method
