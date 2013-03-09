.class Lcom/htc/video/ViewVideo$2;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/ViewVideo;
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
    .line 300
    iput-object p1, p0, Lcom/htc/video/ViewVideo$2;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/video/ViewVideo$2;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public onDrmItemClick(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 310
    return-void
.end method
