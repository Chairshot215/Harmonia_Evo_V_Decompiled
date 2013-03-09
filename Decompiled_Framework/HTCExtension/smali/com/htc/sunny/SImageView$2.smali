.class Lcom/htc/sunny/SImageView$2;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$nHeight:I

.field final synthetic val$nWidth:I

.field final synthetic val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

.field final synthetic val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    iput-object p2, p0, Lcom/htc/sunny/SImageView$2;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    iput-object p3, p0, Lcom/htc/sunny/SImageView$2;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iput p4, p0, Lcom/htc/sunny/SImageView$2;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SImageView$2;->val$nHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    #calls: Lcom/htc/sunny/SImageView;->freeImageDrawable()V
    invoke-static {v0}, Lcom/htc/sunny/SImageView;->access$100(Lcom/htc/sunny/SImageView;)V

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v1, p0, Lcom/htc/sunny/SImageView$2;->val$sunnyRestBmp:Lcom/htc/sunny/SBitmap;

    iput-object v1, v0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v1, p0, Lcom/htc/sunny/SImageView$2;->val$sunnyPressBmp:Lcom/htc/sunny/SBitmap;

    iput-object v1, v0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    iget v1, p0, Lcom/htc/sunny/SImageView$2;->val$nWidth:I

    iget v2, p0, Lcom/htc/sunny/SImageView$2;->val$nHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    invoke-virtual {v0}, Lcom/htc/sunny/SImageView;->createResource()V

    iget-object v0, p0, Lcom/htc/sunny/SImageView$2;->this$0:Lcom/htc/sunny/SImageView;

    invoke-virtual {v0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    return-void
.end method
