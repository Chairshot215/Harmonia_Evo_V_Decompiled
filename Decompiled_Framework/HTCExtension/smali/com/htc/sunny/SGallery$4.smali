.class Lcom/htc/sunny/SGallery$4;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->enableScrollBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$bEnable:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SGallery$4;->this$0:Lcom/htc/sunny/SGallery;

    iput-boolean p2, p0, Lcom/htc/sunny/SGallery$4;->val$bEnable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SGallery$4;->this$0:Lcom/htc/sunny/SGallery;

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery$4;->val$bEnable:Z

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mEnableScrollBar:Z

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SGallery$4;->val$bEnable:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SGallery$4;->this$0:Lcom/htc/sunny/SGallery;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery;->initScrollBar()V

    :cond_0
    return-void
.end method
