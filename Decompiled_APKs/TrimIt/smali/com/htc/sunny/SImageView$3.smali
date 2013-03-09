.class Lcom/htc/sunny/SImageView$3;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

.field final synthetic val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/sunny/SImageView$3;->this$0:Lcom/htc/sunny/SImageView;

    iput-object p2, p0, Lcom/htc/sunny/SImageView$3;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iput-object p3, p0, Lcom/htc/sunny/SImageView$3;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 104
    iget-object v0, p0, Lcom/htc/sunny/SImageView$3;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v1, p0, Lcom/htc/sunny/SImageView$3;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iget-object v2, p0, Lcom/htc/sunny/SImageView$3;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny/SImageView;->setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    .line 105
    return-void
.end method
