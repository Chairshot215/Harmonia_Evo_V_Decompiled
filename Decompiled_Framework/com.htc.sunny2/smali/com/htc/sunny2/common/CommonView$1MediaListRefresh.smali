.class Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "CommonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/CommonView;->onMediaListRefresh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListRefresh"
.end annotation


# instance fields
.field flags:I

.field final synthetic this$0:Lcom/htc/sunny2/common/CommonView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/CommonView;I)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunny2/common/CommonView;

    const-string v0, "onMediaListRefresh"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->flags:I

    iput p2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->flags:I

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

    iget-object v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunny2/common/CommonView;

    #getter for: Lcom/htc/sunny2/GLView;->mHostContextName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/sunny2/common/CommonView;->access$600(Lcom/htc/sunny2/common/CommonView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onMediaListRefresh Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget v1, p0, Lcom/htc/sunny2/common/CommonView$1MediaListRefresh;->flags:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/CommonView;->onMediaListRefreshIRT(I)V

    return-void
.end method
