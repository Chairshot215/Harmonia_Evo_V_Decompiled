.class Lcom/htc/sunny/SPresentation$13;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->scrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$nPos:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$13;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$13;->val$nPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$13;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$13;->val$nPos:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->scrollToW(I)V

    .line 1421
    return-void
.end method
