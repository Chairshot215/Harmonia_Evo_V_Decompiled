.class Lcom/htc/sunny/SView$5;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$nHeight:I

.field final synthetic val$nWidth:I

.field final synthetic val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

.field final synthetic val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    iput-object p2, p0, Lcom/htc/sunny/SView$5;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    iput-object p3, p0, Lcom/htc/sunny/SView$5;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iput p4, p0, Lcom/htc/sunny/SView$5;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SView$5;->val$nHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    #calls: Lcom/htc/sunny/SView;->freeBackgroundDrawable()V
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$000(Lcom/htc/sunny/SView;)V

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$5;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$5;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$5;->val$nWidth:I

    iget v2, p0, Lcom/htc/sunny/SView$5;->val$nHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->createResource()V

    iget-object v0, p0, Lcom/htc/sunny/SView$5;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    return-void
.end method
