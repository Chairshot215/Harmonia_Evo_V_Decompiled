.class Lcom/htc/sunny/SPresentation$15;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->rotateSelf(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$bClockwise:Z

.field final synthetic val$nPosition:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$15;->this$0:Lcom/htc/sunny/SPresentation;

    iput p2, p0, Lcom/htc/sunny/SPresentation$15;->val$nPosition:I

    iput-boolean p3, p0, Lcom/htc/sunny/SPresentation$15;->val$bClockwise:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$15;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, p0, Lcom/htc/sunny/SPresentation$15;->val$nPosition:I

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation$15;->val$bClockwise:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SPresentation;->rotateSelfW(IZ)V

    .line 1636
    return-void
.end method
