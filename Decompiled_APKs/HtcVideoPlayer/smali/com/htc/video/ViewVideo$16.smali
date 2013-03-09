.class Lcom/htc/video/ViewVideo$16;
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

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;ILcom/htc/video/VideoUtility/VideoData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/htc/video/ViewVideo$16;->this$0:Lcom/htc/video/ViewVideo;

    iput p2, p0, Lcom/htc/video/ViewVideo$16;->val$state:I

    iput-object p3, p0, Lcom/htc/video/ViewVideo$16;->val$image:Lcom/htc/video/VideoUtility/VideoData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/htc/video/ViewVideo$16;->this$0:Lcom/htc/video/ViewVideo;

    iget v1, p0, Lcom/htc/video/ViewVideo$16;->val$state:I

    iget-object v2, p0, Lcom/htc/video/ViewVideo$16;->val$image:Lcom/htc/video/VideoUtility/VideoData;

    iget-object v3, p0, Lcom/htc/video/ViewVideo$16;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mGeneralDrmItemClickListener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;
    invoke-static {v3}, Lcom/htc/video/ViewVideo;->access$4200(Lcom/htc/video/ViewVideo;)Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/video/VideoUtility/DrmManager;->showMessage(Landroid/content/Context;ILcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V

    .line 1929
    return-void
.end method
