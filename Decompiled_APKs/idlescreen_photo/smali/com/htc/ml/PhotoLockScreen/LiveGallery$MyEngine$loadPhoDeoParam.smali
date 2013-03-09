.class Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;
.super Ljava/lang/Object;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "loadPhoDeoParam"
.end annotation


# instance fields
.field public imageIdx:I

.field public message:I

.field public phoDeoIdx:I

.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method public constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;III)V
    .locals 1
    .parameter
    .parameter "phoDeoIdx"
    .parameter "imageIdx"
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 1807
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1803
    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->phoDeoIdx:I

    .line 1804
    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->imageIdx:I

    .line 1805
    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->message:I

    .line 1808
    iput p2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->phoDeoIdx:I

    .line 1809
    iput p3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->imageIdx:I

    .line 1810
    iput p4, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$loadPhoDeoParam;->message:I

    .line 1811
    return-void
.end method
