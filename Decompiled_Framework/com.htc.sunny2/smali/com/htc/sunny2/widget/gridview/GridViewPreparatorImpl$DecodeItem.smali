.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeItem"
.end annotation


# instance fields
.field protected mCacheSet:I

.field public mContentIdentifier:Ljava/lang/String;

.field public mContentIndex:I

.field public mSourceHeight:I

.field public mSourceWidth:I

.field public mSubIndex:I

.field public mTextureHandle:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mCacheSet:I

    return-void
.end method


# virtual methods
.method public getScaleType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTargetHeight()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mGridWidthHeight:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIndex:I

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mContentIdentifier:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mTextureHandle:Lcom/htc/sunny2/Texture;

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceWidth:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSourceHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$DecodeItem;->mSubIndex:I

    return-void
.end method
