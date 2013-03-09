.class Lcom/htc/sunny2/common/CommonView$1MediaListChange;
.super Lcom/htc/sunny2/RenderThreadInterruption;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/CommonView;->onMediaListChange(Lcom/htc/sunny2/IMediaList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListChange"
.end annotation


# instance fields
.field flags:I

.field newMediaList:Lcom/htc/sunny2/IMediaList;

.field final synthetic this$0:Lcom/htc/sunny2/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/IMediaList;I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    const-string v0, "onMediaListChange"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadInterruption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->flags:I

    iput-object p2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    iput p3, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->flags:I

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 3

    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$500(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListChange Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessInterruptionIRT()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$300(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaListChange NG - null media list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/CommonView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$400(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MediaListChange call onBindMediaListIRT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v1, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/CommonView;->onBindMediaListIRT(Lcom/htc/sunny2/IMediaList;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    iget v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->flags:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/common/CommonView;->onMediaListChangeIRT(Lcom/htc/sunny2/IMediaList;I)V

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->newMediaList:Lcom/htc/sunny2/IMediaList;

    iput-object v1, v0, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListChange;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v1, v1, Lcom/htc/sunny2/common/CommonView;->mMediaList:Lcom/htc/sunny2/IMediaList;

    invoke-interface {v1}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/common/CommonView;->mListItemCount:I

    goto :goto_0
.end method
