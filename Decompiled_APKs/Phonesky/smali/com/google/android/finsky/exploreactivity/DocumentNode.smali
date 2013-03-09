.class public abstract Lcom/google/android/finsky/exploreactivity/DocumentNode;
.super Lcom/jme3/scene/Node;
.source "DocumentNode.java"

# interfaces
.implements Lcom/google/android/finsky/exploreactivity/DocWrapper$DocWrapperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;
    }
.end annotation


# static fields
.field private static final EDGE_LINE:Lcom/jme3/scene/Mesh;

.field private static final direction:Lcom/jme3/math/Ray;

.field private static final end:Lcom/jme3/math/Vector3f;

.field private static final point:Lcom/jme3/math/Vector3f;

.field private static final position:Lcom/jme3/math/Vector2f;

.field private static final start:Lcom/jme3/math/Vector3f;


# instance fields
.field private final m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

.field private mAngle:F

.field private final mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

.field private final mCenter:Lcom/jme3/math/Vector2f;

.field mChildOffset:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDescriptionOn:Z

.field private mDistToCenter:F

.field protected final mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

.field private final mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

.field private mEdge:Lcom/jme3/scene/Geometry;

.field private mEdgeLabel:Lcom/jme3/scene/Geometry;

.field private final mGlowSize:F

.field private mInWishlist:Z

.field protected final mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

.field private mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

.field protected final mUiComponents:Landroid/view/ViewGroup;

.field private mZoomProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/jme3/scene/shape/Quad;

    const/high16 v1, 0x3f80

    const v2, 0x3dcccccd

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->EDGE_LINE:Lcom/jme3/scene/Mesh;

    .line 184
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    .line 185
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    .line 186
    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->direction:Lcom/jme3/math/Ray;

    .line 187
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->point:Lcom/jme3/math/Vector3f;

    .line 188
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->position:Lcom/jme3/math/Vector2f;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "parent"
    .parameter "doc"
    .parameter "nodeController"
    .parameter "drawingUtils"
    .parameter "uiComponents"

    .prologue
    .line 199
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    .line 131
    const v3, 0x4034f4ab

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAngle:F

    .line 134
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildOffset:I

    .line 143
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    .line 173
    const v3, 0x7f7fffff

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDistToCenter:F

    .line 176
    new-instance v3, Lcom/jme3/math/Vector2f;

    const/high16 v4, 0x7fc0

    const/high16 v5, 0x7fc0

    invoke-direct {v3, v4, v5}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    .line 200
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 201
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    .line 202
    iput-object p3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 203
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 204
    iput-object p5, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    .line 205
    const/high16 v3, 0x3fc0

    iget v4, p4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowWidth:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    iget v5, p4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F

    .line 207
    invoke-virtual {p2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mInWishlist:Z

    .line 211
    const v3, 0x7f080138

    invoke-virtual {p5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, edgeLabel:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3fc0

    mul-float v2, v3, v4

    .line 215
    .local v2, labelHeight:F
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, docid:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    .line 218
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f00

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->setLocalTranslation(FFF)V

    .line 219
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 221
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-eqz v3, :cond_0

    .line 222
    new-instance v3, Lcom/jme3/scene/Geometry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "edge-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/exploreactivity/DocumentNode;->EDGE_LINE:Lcom/jme3/scene/Mesh;

    invoke-direct {v3, v4, v5}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    .line 224
    new-instance v3, Lcom/jme3/scene/Geometry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "edge-label-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v3, v4, v5}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    .line 225
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    const/high16 v4, 0x3fc0

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v2, v5}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 226
    new-instance v3, Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/jme3/scene/Geometry;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;
    invoke-static {v9}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$000(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v9}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;-><init>(FFF[Lcom/jme3/scene/Geometry;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    .line 235
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->update(FZ)V

    .line 236
    return-void

    .line 229
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    .line 230
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    .line 231
    new-instance v3, Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/jme3/scene/Geometry;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;
    invoke-static {v9}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$000(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v9}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;-><init>(FFF[Lcom/jme3/scene/Geometry;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    return p1
.end method

.method static synthetic access$1016(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mInWishlist:Z

    return v0
.end method

.method private createTextBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "viewId"
    .parameter "text"

    .prologue
    .line 479
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 480
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private isDocInUse(Lcom/google/android/finsky/exploreactivity/DocWrapper;)Z
    .locals 7
    .parameter "doc"

    .prologue
    const/4 v5, 0x1

    .line 290
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, docid:Ljava/lang/String;
    move-object v2, p0

    .line 293
    .local v2, node:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    :cond_0
    iget-object v4, v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 313
    :goto_0
    return v4

    .line 299
    :cond_1
    sget-object v4, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v4, v4

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNodes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 301
    .local v3, numVisibleChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 302
    invoke-virtual {v2, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 303
    goto :goto_0

    .line 301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v2

    .line 307
    if-nez v2, :cond_0

    .line 308
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 309
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v4, v4, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 310
    goto :goto_0

    .line 308
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attach(Z)V
    .locals 5
    .parameter "isCenter"

    .prologue
    const/4 v4, 0x1

    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 496
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->reset()V

    .line 497
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$400(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->reset()V

    .line 498
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getGlowingLineMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    const v2, 0x7f080138

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createTextBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 503
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->parent:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 504
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->parent:Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 506
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->update(FZ)V

    .line 507
    return-void
.end method

.method public clearParentNode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    .line 371
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    .line 374
    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    .line 375
    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    .line 377
    :cond_0
    return-void
.end method

.method public createChildren(I)V
    .locals 9
    .parameter "maxChildren"

    .prologue
    .line 253
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, p1, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    .line 283
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v7}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getRelations()Ljava/util/List;

    move-result-object v6

    .line 259
    .local v6, relations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/exploreactivity/DocWrapper;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 262
    .local v3, numRelations:I
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int v7, p1, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 263
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 264
    add-int v7, v1, v3

    rem-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    .line 265
    .local v5, relation:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    invoke-direct {p0, v5}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->isDocInUse(Lcom/google/android/finsky/exploreactivity/DocWrapper;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    add-int/lit8 v7, v2, 0x1

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 263
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_4

    .line 272
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v1

    sget-object v8, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v8, v8

    if-ge v7, v8, :cond_3

    sget-object v4, Lcom/android/volley/Request$Priority;->HIGH:Lcom/android/volley/Request$Priority;

    .line 274
    .local v4, priority:Lcom/android/volley/Request$Priority;
    :goto_2
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    const/4 v8, 0x3

    invoke-virtual {v7, v5, v8, v4}, Lcom/google/android/finsky/exploreactivity/NodeController;->loadData(Lcom/google/android/finsky/exploreactivity/DocWrapper;ILcom/android/volley/Request$Priority;)V

    goto :goto_1

    .line 272
    .end local v4           #priority:Lcom/android/volley/Request$Priority;
    :cond_3
    sget-object v4, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    goto :goto_2

    .line 278
    :cond_4
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v8, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v7, p0, v5, v8}, Lcom/google/android/finsky/exploreactivity/NodeController;->createDocumentNode(Lcom/google/android/finsky/exploreactivity/DocumentNode;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v0

    .line 281
    .local v0, child:Lcom/google/android/finsky/exploreactivity/DocumentNode;
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    .line 488
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 489
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->removeFromParent()Z

    .line 491
    :cond_0
    return-void
.end method

.method public disposeObjects()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->disposeObjects(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 458
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 460
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$300(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 461
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->makeInvisible()V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z

    .line 466
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->detach()V

    .line 467
    return-void
.end method

.method public docChanged(Lcom/google/android/finsky/exploreactivity/DocWrapper;)V
    .locals 2
    .parameter "doc"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    new-instance v1, Lcom/google/android/finsky/exploreactivity/DocumentNode$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$1;-><init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/NodeController;->runOnGlThread(Ljava/lang/Runnable;)V

    .line 619
    return-void
.end method

.method public fade(Z)V
    .locals 2
    .parameter "fadeIn"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 391
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->update(F)V

    .line 392
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAngle:F

    return v0
.end method

.method public getCenter()Lcom/jme3/math/Vector2f;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 3
    .parameter "pos"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 327
    .local v0, size:I
    if-nez v0, :cond_0

    .line 328
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildOffset:I

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    rem-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;

    goto :goto_0
.end method

.method public getChildNodePos(Lcom/google/android/finsky/exploreactivity/DocumentNode;)I
    .locals 2
    .parameter "node"

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 339
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getChildNode(I)Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 343
    .end local v0           #i:I
    :goto_1
    return v0

    .line 338
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getChildNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/exploreactivity/DocumentNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDistanceToCenter()F
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDistToCenter:F

    return v0
.end method

.method public getDoc()Lcom/google/android/finsky/exploreactivity/DocWrapper;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    return-object v0
.end method

.method public getParentNode()Lcom/google/android/finsky/exploreactivity/DocumentNode;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    return-object v0
.end method

.method public getRelativePosition()Lcom/jme3/math/Vector2f;
    .locals 3

    .prologue
    .line 406
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->position:Lcom/jme3/math/Vector2f;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_X:Lcom/jme3/math/Vector2f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    .line 407
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->position:Lcom/jme3/math/Vector2f;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector2f;->multLocal(F)Lcom/jme3/math/Vector2f;

    .line 408
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->position:Lcom/jme3/math/Vector2f;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAngle:F

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->rotateAroundOrigin(FZ)V

    .line 409
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->position:Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public hasParentNode()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnail()Z
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z

    move-result v0

    return v0
.end method

.method public isDescriptionOn()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z

    return v0
.end method

.method public isOnscreen()Z
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isWishlistTap(Lcom/jme3/collision/CollisionResult;)Z
    .locals 4
    .parameter "collision"

    .prologue
    const/4 v0, 0x0

    .line 636
    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResult;->getContactPoint()Lcom/jme3/math/Vector3f;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;->point:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/math/Transform;->transformInverseVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 641
    sget-object v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->point:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    const v2, 0x3f4ccccd

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    sget-object v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->point:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public recycleThumbnail()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->disposeObjects(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 539
    return-void
.end method

.method public rotateChildren(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 352
    .local v0, size:I
    sget-object v1, Lcom/google/android/finsky/exploreactivity/NodeController;->FIXED_CHILD_ANGLES:[F

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildOffset:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mChildOffset:I

    goto :goto_0
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 419
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAngle:F

    .line 420
    return-void
.end method

.method public setDescriptionState(Z)V
    .locals 1
    .parameter "descriptionOn"

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z

    .line 593
    if-eqz p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #calls: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->loadDescriptionMaterial()V
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$500(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)V

    .line 596
    :cond_0
    return-void
.end method

.method public setDistanceToCenter(F)V
    .locals 0
    .parameter "dist"

    .prologue
    .line 428
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDistToCenter:F

    .line 429
    return-void
.end method

.method public setNodeThumbnail()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 511
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$300(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    const v5, 0x7f080139

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v6}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->createTextBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 514
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 516
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getLoadedState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 518
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v4}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 519
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createNodeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 522
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->disposeObjects(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setWishlist(Z)V
    .locals 2
    .parameter "inWishlist"

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mInWishlist:Z

    if-eq p1, v0, :cond_0

    .line 624
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mInWishlist:Z

    .line 625
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;
    invoke-static {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 626
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    #calls: Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->loadDescriptionMaterial()V
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->access$500(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)V

    .line 628
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 648
    .local v1, s:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, relationToParent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 651
    const-string v2, ",relation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_0
    const-string v2, ",center="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector2f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v2, ",fade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v2}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->getFadeProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 658
    const-string v2, ",GPUThumb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->hasThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update(FZ)V
    .locals 7
    .parameter "timeDelta"
    .parameter "isCenter"

    .prologue
    const/high16 v6, 0x4040

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    const/4 v2, 0x0

    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->update(F)V

    .line 564
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    iget v0, v0, Lcom/jme3/math/Vector2f;->x:F

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    iget v1, v1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setLocalTranslation(FFF)V

    .line 565
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F

    const v1, 0x3f9c28f6

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->setLocalScale(F)V

    .line 567
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    iget v1, v1, Lcom/jme3/math/Vector2f;->x:F

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 569
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mCenter:Lcom/jme3/math/Vector2f;

    iget v1, v1, Lcom/jme3/math/Vector2f;->y:F

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 570
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    iput v2, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 571
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector2f;->x:F

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 572
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mParent:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->getCenter()Lcom/jme3/math/Vector2f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector2f;->y:F

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 573
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    iput v2, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 574
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdge:Lcom/jme3/scene/Geometry;

    sget-object v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->setupLine(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 576
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mEdgeLabel:Lcom/jme3/scene/Geometry;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v5

    sget-object v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    const/high16 v2, 0x3f40

    sub-float/2addr v1, v2

    sget-object v2, Lcom/google/android/finsky/exploreactivity/DocumentNode;->start:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v5

    sget-object v3, Lcom/google/android/finsky/exploreactivity/DocumentNode;->end:Lcom/jme3/math/Vector3f;

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2, v4}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 580
    :cond_0
    if-nez p2, :cond_1

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->m3dNode:Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->update(F)V

    .line 584
    return-void
.end method
