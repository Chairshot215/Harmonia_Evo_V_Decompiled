.class Lcom/htc/sunny2/common/CommonView$1;
.super Ljava/lang/Object;
.source "CommonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/CommonView;->doItemClickOnUiThread(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/ViewItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/common/CommonView;

.field final synthetic val$parent:Lcom/htc/sunny2/common/CommonView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/CommonView;Lcom/htc/sunny2/common/CommonView;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/common/CommonView$1;->this$0:Lcom/htc/sunny2/common/CommonView;

    iput-object p2, p0, Lcom/htc/sunny2/common/CommonView$1;->val$parent:Lcom/htc/sunny2/common/CommonView;

    iput p3, p0, Lcom/htc/sunny2/common/CommonView$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/CommonView$1;->this$0:Lcom/htc/sunny2/common/CommonView;

    iget-object v0, v0, Lcom/htc/sunny2/common/CommonView;->mOnItemClickListener:Lcom/htc/sunny2/common/CommonView$OnItemClickListener;

    iget-object v1, p0, Lcom/htc/sunny2/common/CommonView$1;->val$parent:Lcom/htc/sunny2/common/CommonView;

    iget v2, p0, Lcom/htc/sunny2/common/CommonView$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/common/CommonView$OnItemClickListener;->onItemClick(Lcom/htc/sunny2/common/CommonView;I)V

    :cond_0
    return-void
.end method
