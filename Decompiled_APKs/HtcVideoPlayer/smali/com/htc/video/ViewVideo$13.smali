.class Lcom/htc/video/ViewVideo$13;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->showingDrmMessage(ILandroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;

.field final synthetic val$playUri:Landroid/net/Uri;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/htc/video/ViewVideo$13;->this$0:Lcom/htc/video/ViewVideo;

    iput-object p2, p0, Lcom/htc/video/ViewVideo$13;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/video/ViewVideo$13;->val$playUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()Z
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/htc/video/ViewVideo$13;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 1811
    const/4 v0, 0x1

    return v0
.end method

.method public onDrmItemClick(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/htc/video/ViewVideo$13;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v1, p0, Lcom/htc/video/ViewVideo$13;->val$uri:Landroid/net/Uri;

    #setter for: Lcom/htc/video/ViewVideo;->mDrmUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/video/ViewVideo;->access$402(Lcom/htc/video/ViewVideo;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1816
    iget-object v0, p0, Lcom/htc/video/ViewVideo$13;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v1, p0, Lcom/htc/video/ViewVideo$13;->val$playUri:Landroid/net/Uri;

    #calls: Lcom/htc/video/ViewVideo;->prepareVideo(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/htc/video/ViewVideo;->access$3000(Lcom/htc/video/ViewVideo;Landroid/net/Uri;)V

    .line 1817
    const-string v0, "ViewVideo"

    const-string v1, "[onDrmItemClick]: consumeVideoRight"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    return-void
.end method
