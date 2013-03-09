.class Lcom/htc/video/ViewVideo$17;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->checkDrmVideoPlayState()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/htc/video/ViewVideo$17;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()Z
    .locals 1

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/htc/video/ViewVideo$17;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 2098
    const/4 v0, 0x1

    return v0
.end method

.method public onDrmItemClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 2100
    return-void
.end method
