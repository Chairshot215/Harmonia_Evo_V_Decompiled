.class Lcom/htc/sunny/SImageView$5;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setImage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$nPressResId:I

.field final synthetic val$nRestResId:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/sunny/SImageView$5;->this$0:Lcom/htc/sunny/SImageView;

    iput p2, p0, Lcom/htc/sunny/SImageView$5;->val$nPressResId:I

    iput p3, p0, Lcom/htc/sunny/SImageView$5;->val$nRestResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 150
    iget-object v0, p0, Lcom/htc/sunny/SImageView$5;->this$0:Lcom/htc/sunny/SImageView;

    iget v1, p0, Lcom/htc/sunny/SImageView$5;->val$nPressResId:I

    iget v2, p0, Lcom/htc/sunny/SImageView$5;->val$nRestResId:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny/SImageView;->setImage(IIII)V

    .line 151
    return-void
.end method
