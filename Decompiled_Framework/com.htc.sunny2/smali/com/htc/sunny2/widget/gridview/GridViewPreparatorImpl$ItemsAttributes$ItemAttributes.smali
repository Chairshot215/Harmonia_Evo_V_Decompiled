.class Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAttributes"
.end annotation


# instance fields
.field public fileCacheNotSaved:Z

.field public identifier:I

.field public isProcessed:Z

.field public offLineDecode:Z

.field public textureDirty:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;)V

    return-void
.end method
