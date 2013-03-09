.class public Lcom/muvee/video/trimer/MediaDetail;
.super Ljava/lang/Object;
.source "MediaDetail.java"


# instance fields
.field private mBs:[B

.field public mRectF:Landroid/graphics/RectF;

.field public mTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    .line 22
    iput p1, p0, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    .line 23
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    .line 19
    iput-object p1, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    .line 20
    return-void
.end method


# virtual methods
.method public getBitmap()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    return-object v0
.end method

.method public setBitmap([B)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/muvee/video/trimer/MediaDetail;->mBs:[B

    .line 31
    return-void
.end method
