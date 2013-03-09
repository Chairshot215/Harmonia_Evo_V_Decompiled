.class Lcom/htc/sunny/SView$7;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$nPressResId:I

.field final synthetic val$nRestResId:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/htc/sunny/SView$7;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$7;->val$nPressResId:I

    iput p3, p0, Lcom/htc/sunny/SView$7;->val$nRestResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 302
    iget-object v0, p0, Lcom/htc/sunny/SView$7;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$7;->val$nPressResId:I

    iget v2, p0, Lcom/htc/sunny/SView$7;->val$nRestResId:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny/SView;->setBackgroundImage(IIII)V

    .line 303
    return-void
.end method
