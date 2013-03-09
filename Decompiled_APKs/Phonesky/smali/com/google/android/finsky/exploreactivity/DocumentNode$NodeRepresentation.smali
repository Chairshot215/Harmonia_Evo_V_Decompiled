.class Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;
.super Lcom/jme3/scene/Node;
.source "DocumentNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/DocumentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeRepresentation"
.end annotation


# instance fields
.field private final DESCRIPTION_HEIGHT:F

.field private final DESCRIPTION_WIDTH:F

.field private final DESCRIPTION_X:F

.field private final DESCRIPTION_Y:F

.field private final DESCRIPTION_Z:F

.field private final GLOW_Z:F

.field private final NODE_LABEL_Z:F

.field private final THUMBNAIL_Z:F

.field private final mDescription:Lcom/jme3/scene/Geometry;

.field private final mGlow:Lcom/jme3/scene/Geometry;

.field private final mNodeLabel:Lcom/jme3/scene/Geometry;

.field private final mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

.field private final mThumbnail:Lcom/jme3/scene/Geometry;

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/exploreactivity/DocumentNode;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v8, -0x40c0

    const/high16 v7, 0x3fc0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x4000

    .line 687
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    invoke-direct {p0}, Lcom/jme3/scene/Node;-><init>()V

    .line 678
    iput v6, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_Z:F

    .line 679
    iput v5, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->GLOW_Z:F

    .line 680
    const/high16 v2, 0x4040

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->THUMBNAIL_Z:F

    .line 681
    const/high16 v2, 0x4080

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->NODE_LABEL_Z:F

    .line 682
    const v2, 0x3f7456d6

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_HEIGHT:F

    .line 683
    const v2, 0x3ff456d6

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_WIDTH:F

    .line 684
    const v2, 0x3f666667

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_X:F

    .line 685
    const v2, -0x417d70a4

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->DESCRIPTION_Y:F

    .line 688
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-thumbnail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    .line 689
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, v7, v7, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 690
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    const/high16 v3, 0x4040

    invoke-virtual {v2, v8, v8, v3}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 691
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getInvisibleMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 692
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 694
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-glow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    .line 695
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v4

    invoke-virtual {v2, v3, v4, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 696
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v5

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mGlowSize:F
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$700(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v4

    neg-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 697
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getNodeGlowMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 698
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 700
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    .line 701
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static {p1}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getInvisibleMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 702
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 704
    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    invoke-virtual {v4}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-node-label"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    .line 705
    iget-object v2, p1, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    const v3, 0x7f080139

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 706
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v2, v7

    .line 707
    .local v0, labelHeight:F
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {v2, v7, v0, v6}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 708
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    neg-float v3, v0

    div-float/2addr v3, v5

    const/high16 v4, 0x4080

    invoke-virtual {v2, v8, v3, v4}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 709
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->attachChild(Lcom/jme3/scene/Spatial;)I

    .line 710
    new-instance v2, Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/jme3/scene/Geometry;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    aput-object v6, v4, v5

    invoke-direct {v2, v9, v9, v3, v4}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;-><init>(FFF[Lcom/jme3/scene/Geometry;)V

    iput-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    .line 712
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mGlow:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mThumbnail:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/jme3/scene/Geometry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabel:Lcom/jme3/scene/Geometry;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->loadDescriptionMaterial()V

    return-void
.end method

.method private loadDescriptionMaterial()V
    .locals 25

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 722
    .local v16, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, creator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0800ed

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 724
    .local v17, titleView:Landroid/widget/TextView;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/NodeController;->isWishlistEnabled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 726
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mInWishlist:Z
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$900(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v19

    if-eqz v19, :cond_3

    const v19, 0x7f02008f

    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 730
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f0800ee

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 731
    .local v6, creatorView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 732
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v7

    .line 739
    .local v7, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f08012f

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f080130

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 742
    .local v15, starView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 743
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f080136

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const-string v20, "(%,d)"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v14

    .line 748
    .local v14, starIndex:F
    invoke-static {v14}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    sub-float v9, v14, v19

    .line 749
    .local v9, partialStar:F
    invoke-static {v14}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 750
    .local v18, wholeStars:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f080130

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 751
    .local v13, starContainer:Landroid/view/ViewGroup;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_3
    const/16 v19, 0x5

    move/from16 v0, v19

    if-gt v8, v0, :cond_a

    .line 752
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 753
    .local v12, star:Landroid/widget/ImageView;
    move/from16 v0, v18

    if-gt v8, v0, :cond_5

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 751
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 726
    .end local v6           #creatorView:Landroid/widget/TextView;
    .end local v7           #description:Ljava/lang/CharSequence;
    .end local v8           #i:I
    .end local v9           #partialStar:F
    .end local v12           #star:Landroid/widget/ImageView;
    .end local v13           #starContainer:Landroid/view/ViewGroup;
    .end local v14           #starIndex:F
    .end local v15           #starView:Landroid/view/View;
    .end local v18           #wholeStars:I
    :cond_3
    const v19, 0x7f02008e

    goto/16 :goto_1

    .line 735
    .restart local v6       #creatorView:Landroid/widget/TextView;
    :cond_4
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 755
    .restart local v7       #description:Ljava/lang/CharSequence;
    .restart local v8       #i:I
    .restart local v9       #partialStar:F
    .restart local v12       #star:Landroid/widget/ImageView;
    .restart local v13       #starContainer:Landroid/view/ViewGroup;
    .restart local v14       #starIndex:F
    .restart local v15       #starView:Landroid/view/View;
    .restart local v18       #wholeStars:I
    :cond_5
    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 758
    :cond_6
    const/high16 v19, 0x3e80

    cmpg-float v19, v9, v19

    if-gez v19, :cond_7

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOff:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 760
    :cond_7
    const/high16 v19, 0x3f40

    cmpl-float v19, v9, v19

    if-lez v19, :cond_8

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarOn:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 763
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/NodeController;->mStarHalf:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 768
    .end local v8           #i:I
    .end local v9           #partialStar:F
    .end local v12           #star:Landroid/widget/ImageView;
    .end local v13           #starContainer:Landroid/view/ViewGroup;
    .end local v14           #starIndex:F
    .end local v18           #wholeStars:I
    :cond_9
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDocWrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v10

    .line 772
    .local v10, price:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const v20, 0x7f080137

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 773
    .local v11, priceView:Landroid/widget/TextView;
    if-eqz v10, :cond_b

    .line 774
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewGroup;->measure(II)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v19, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleMaterial(Lcom/jme3/scene/Geometry;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v20, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static/range {v20 .. v20}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v21, v0

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDrawingUtils:Lcom/google/android/finsky/exploreactivity/DrawingUtils;
    invoke-static/range {v21 .. v21}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$600(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/finsky/exploreactivity/DocumentNode;->mUiComponents:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    const v23, 0x7f08012e

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto/16 :goto_0

    .line 777
    :cond_b
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public update(F)V
    .locals 5
    .parameter "timeDelta"

    .prologue
    const/high16 v1, 0x3f80

    .line 793
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const v0, 0x3eb33333

    div-float v3, p1, v0

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1016(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 794
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    #setter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1002(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 795
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    #setter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v0, v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1002(Lcom/google/android/finsky/exploreactivity/DocumentNode;F)F

    .line 796
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mDescriptionOn:Z
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$800(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mAnimationAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;
    invoke-static {v0}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1100(Lcom/google/android/finsky/exploreactivity/DocumentNode;)Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->isFadingIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->fade(Z)V

    .line 797
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mNodeLabelFadeAdapter:Lcom/google/android/finsky/exploreactivity/FadeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->update(F)V

    .line 798
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    const v3, 0x3ff456d6

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    const v4, 0x3f7456d6

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Geometry;->setLocalScale(FFF)V

    .line 800
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->mDescription:Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v2

    const v3, 0x3f666667

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DocumentNode$NodeRepresentation;->this$0:Lcom/google/android/finsky/exploreactivity/DocumentNode;

    #getter for: Lcom/google/android/finsky/exploreactivity/DocumentNode;->mZoomProgress:F
    invoke-static {v3}, Lcom/google/android/finsky/exploreactivity/DocumentNode;->access$1000(Lcom/google/android/finsky/exploreactivity/DocumentNode;)F

    move-result v3

    const v4, -0x417d70a4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Geometry;->setLocalTranslation(FFF)V

    .line 802
    return-void

    .line 793
    :cond_0
    const/high16 v0, -0x4080

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
