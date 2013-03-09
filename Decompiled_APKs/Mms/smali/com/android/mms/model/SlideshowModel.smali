.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideshowModel"


# instance fields
.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mUnsupportedFormat:Z

.field protected mUnsupportedMedia:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 74
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 76
    iput-boolean v1, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedMedia:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedFormat:Z

    .line 78
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 84
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 86
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 87
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 88
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 89
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 90
    invoke-virtual {v1, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 92
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedMedia:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedFormat:Z

    .line 94
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUricheckDrm(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 49
    .parameter "context"
    .parameter "pb"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v20

    .line 122
    .local v20, document:Lorg/w3c/dom/smil/SMILDocument;
    const/16 v48, 0x0

    .line 123
    .local v48, unsupportedMedia:Z
    const/16 v47, 0x0

    .line 125
    .local v47, unsupportedFormat:Z
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v38

    .line 126
    .local v38, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v46

    .line 127
    .local v46, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v9

    .line 128
    .local v9, w:I
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v10

    .line 129
    .local v10, h:I
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v9

    .line 131
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v10

    .line 132
    move-object/from16 v0, v46

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 133
    move-object/from16 v0, v46

    invoke-interface {v0, v10}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 135
    :cond_1
    new-instance v5, Lcom/android/mms/model/RegionModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 139
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v36, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 141
    .local v34, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v37

    .line 143
    .local v37, regionsNum:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_2

    .line 144
    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    check-cast v45, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 145
    .local v45, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v14

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v15

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v16

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 148
    .local v11, r:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 150
    .end local v11           #r:Lcom/android/mms/model/RegionModel;
    .end local v45           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_2
    new-instance v29, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v5, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/List;)V

    .line 153
    .local v29, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v19

    .line 154
    .local v19, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 155
    .local v40, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    .line 156
    .local v42, slidesNum:I
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v41, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-static {}, Lcom/android/mms/model/SlideModel;->resetUriList()V

    .line 161
    invoke-static {}, Lcom/android/mms/model/MediaModelFactory;->resetUsedPartList()V

    .line 165
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_6

    .line 166
    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    check-cast v35, Lorg/w3c/dom/smil/SMILParElement;

    .line 169
    .local v35, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 170
    .local v31, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 172
    .local v32, mediaNum:I
    const/16 v27, 0x0

    .local v27, j:I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_5

    .line 174
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "par"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/smil/SMILParElement;

    .line 177
    .local v26, internalPar:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 178
    .local v23, internalMediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 180
    .local v24, internalMediaNum:I
    const/16 v28, 0x0

    .local v28, k:I
    :goto_3
    move/from16 v0, v28

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 181
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 182
    .local v44, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/mms/model/MediaModelFactory;->markValidPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)V

    .line 180
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 186
    .end local v23           #internalMediaNodes:Lorg/w3c/dom/NodeList;
    .end local v24           #internalMediaNum:I
    .end local v26           #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    .end local v28           #k:I
    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_3
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 187
    .restart local v44       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/mms/model/MediaModelFactory;->markValidPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)V

    .line 172
    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 165
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 193
    .end local v27           #j:I
    .end local v31           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v32           #mediaNum:I
    .end local v35           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_6
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_e

    .line 196
    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    check-cast v35, Lorg/w3c/dom/smil/SMILParElement;

    .line 199
    .restart local v35       #par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 200
    .restart local v31       #mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 201
    .restart local v32       #mediaNum:I
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v33, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v27, 0x0

    .restart local v27       #j:I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    .line 207
    :try_start_0
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "par"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 208
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/smil/SMILParElement;

    .line 211
    .restart local v26       #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 212
    .restart local v23       #internalMediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 213
    .restart local v24       #internalMediaNum:I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .local v25, internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v28, 0x0

    .restart local v28       #k:I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 215
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 217
    .restart local v44       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v30

    .line 219
    .local v30, media:Lcom/android/mms/model/MediaModel;
    if-eqz v30, :cond_8

    .line 221
    check-cast v44, Lorg/w3c/dom/events/EventTarget;

    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 223
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 225
    const/16 v48, 0x1

    .line 214
    :cond_7
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 229
    .restart local v44       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    const/16 v48, 0x1

    goto :goto_7

    .line 232
    .end local v30           #media:Lcom/android/mms/model/MediaModel;
    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    new-instance v39, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 233
    .local v39, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 234
    check-cast v26, Lorg/w3c/dom/events/EventTarget;

    .end local v26           #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 235
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v23           #internalMediaNodes:Lorg/w3c/dom/NodeList;
    .end local v24           #internalMediaNum:I
    .end local v25           #internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v28           #k:I
    .end local v39           #slide:Lcom/android/mms/model/SlideModel;
    :cond_a
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_5

    .line 238
    :cond_b
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 241
    .restart local v44       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v30

    .line 245
    .restart local v30       #media:Lcom/android/mms/model/MediaModel;
    if-eqz v30, :cond_c

    .line 248
    check-cast v44, Lorg/w3c/dom/events/EventTarget;

    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 250
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    if-eqz v6, :cond_a

    .line 252
    const/16 v48, 0x1

    goto :goto_8

    .line 256
    .restart local v44       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_c
    const/16 v48, 0x1

    goto :goto_8

    .line 259
    .end local v30           #media:Lcom/android/mms/model/MediaModel;
    .end local v44           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v21

    .line 260
    .local v21, e:Landroid/drm/mobile1/DrmException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/16 v48, 0x1

    .line 274
    goto :goto_8

    .line 262
    .end local v21           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v21

    .line 263
    .local v21, e:Ljava/io/IOException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 265
    .end local v21           #e:Ljava/io/IOException;
    :catch_2
    move-exception v21

    .line 266
    .local v21, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 270
    .end local v21           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v21

    .line 271
    .local v21, e:Ljava/lang/ClassCastException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const/16 v47, 0x1

    .line 276
    .end local v21           #e:Ljava/lang/ClassCastException;
    :cond_d
    new-instance v39, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-direct {v0, v6, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 277
    .restart local v39       #slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 278
    check-cast v35, Lorg/w3c/dom/events/EventTarget;

    .end local v35           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 279
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 282
    .end local v27           #j:I
    .end local v31           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v32           #mediaNum:I
    .end local v33           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v39           #slide:Lcom/android/mms/model/SlideModel;
    :cond_e
    new-instance v43, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v43

    move-object/from16 v1, v29

    move-object/from16 v2, v41

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 283
    .local v43, slideshow:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, v43

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 284
    move/from16 v0, v48

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/mms/model/SlideshowModel;->mUnsupportedMedia:Z

    .line 285
    move/from16 v0, v47

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/mms/model/SlideshowModel;->mUnsupportedFormat:Z

    .line 286
    return-object v43
.end method

.method public static createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBodycheckDrm(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 50
    .parameter "context"
    .parameter "pb"
    .parameter "previewOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v20

    .line 296
    .local v20, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v39

    .line 297
    .local v39, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v47

    .line 298
    .local v47, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v9

    .line 299
    .local v9, w:I
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v10

    .line 300
    .local v10, h:I
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 301
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v9

    .line 302
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v10

    .line 303
    move-object/from16 v0, v47

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 304
    move-object/from16 v0, v47

    invoke-interface {v0, v10}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 306
    :cond_1
    new-instance v5, Lcom/android/mms/model/RegionModel;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 310
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v37, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 312
    .local v35, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    .line 314
    .local v38, regionsNum:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 315
    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    check-cast v46, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 316
    .local v46, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v14

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v15

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v16

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 319
    .local v11, r:Lcom/android/mms/model/RegionModel;
    move-object/from16 v0, v37

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 321
    .end local v11           #r:Lcom/android/mms/model/RegionModel;
    .end local v46           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_2
    new-instance v30, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-direct {v0, v5, v1}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/List;)V

    .line 324
    .local v30, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v19

    .line 325
    .local v19, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 326
    .local v41, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v43

    .line 327
    .local v43, slidesNum:I
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v43}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v42, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    invoke-static {}, Lcom/android/mms/model/MediaModelFactory;->resetUsedPartList()V

    .line 334
    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v43

    if-ge v0, v1, :cond_4

    .line 335
    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    check-cast v36, Lorg/w3c/dom/smil/SMILParElement;

    .line 337
    .local v36, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 338
    .local v32, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    .line 340
    .local v33, mediaNum:I
    const/16 v28, 0x0

    .local v28, j:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    .line 341
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    check-cast v45, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 342
    .local v45, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/mms/model/MediaModelFactory;->markValidPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)V

    .line 340
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 334
    .end local v45           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_3
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 346
    .end local v28           #j:I
    .end local v32           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v33           #mediaNum:I
    .end local v36           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_4
    invoke-static {}, Lcom/android/mms/model/SlideModel;->resetUriList()V

    .line 348
    const/16 v49, 0x0

    .line 351
    .local v49, unsupportedMedia:Z
    const/16 v48, 0x0

    .line 353
    .local v48, unsupportedFormat:Z
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 356
    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    check-cast v36, Lorg/w3c/dom/smil/SMILParElement;

    .line 359
    .restart local v36       #par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 360
    .restart local v32       #mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    .line 361
    .restart local v33       #mediaNum:I
    new-instance v34, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v34, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v27, 0x1

    .line 364
    .local v27, isForwardLockMediaExisted:Z
    const/16 v28, 0x0

    .restart local v28       #j:I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 368
    :try_start_0
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "par"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 369
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/smil/SMILParElement;

    .line 372
    .local v26, internalPar:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 373
    .local v23, internalMediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 374
    .local v24, internalMediaNum:I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v25, internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/16 v29, 0x0

    .local v29, k:I
    :goto_5
    move/from16 v0, v29

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 376
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    check-cast v45, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 378
    .restart local v45       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v30

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v31

    .line 380
    .local v31, media:Lcom/android/mms/model/MediaModel;
    if-eqz v31, :cond_5

    .line 381
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v6

    if-nez v6, :cond_6

    .line 382
    check-cast v45, Lorg/w3c/dom/events/EventTarget;

    .end local v45           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 384
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 392
    const/16 v49, 0x1

    .line 375
    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 387
    .restart local v45       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    const/16 v27, 0x1

    .line 388
    const v6, 0x7f09005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_6

    .line 426
    .end local v23           #internalMediaNodes:Lorg/w3c/dom/NodeList;
    .end local v24           #internalMediaNum:I
    .end local v25           #internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v26           #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    .end local v29           #k:I
    .end local v31           #media:Lcom/android/mms/model/MediaModel;
    .end local v45           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v21

    .line 427
    .local v21, e:Landroid/drm/mobile1/DrmException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    .end local v21           #e:Landroid/drm/mobile1/DrmException;
    :cond_7
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 396
    .restart local v23       #internalMediaNodes:Lorg/w3c/dom/NodeList;
    .restart local v24       #internalMediaNum:I
    .restart local v25       #internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .restart local v26       #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v29       #k:I
    :cond_8
    :try_start_1
    new-instance v40, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 397
    .local v40, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 398
    check-cast v26, Lorg/w3c/dom/events/EventTarget;

    .end local v26           #internalPar:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 399
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_7

    .line 428
    .end local v23           #internalMediaNodes:Lorg/w3c/dom/NodeList;
    .end local v24           #internalMediaNum:I
    .end local v25           #internalMediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v29           #k:I
    .end local v40           #slide:Lcom/android/mms/model/SlideModel;
    :catch_1
    move-exception v21

    .line 429
    .local v21, e:Ljava/io/IOException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 402
    .end local v21           #e:Ljava/io/IOException;
    :cond_9
    :try_start_2
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    check-cast v45, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 405
    .restart local v45       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v30

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/MediaModel;

    move-result-object v31

    .line 409
    .restart local v31       #media:Lcom/android/mms/model/MediaModel;
    if-eqz v31, :cond_7

    .line 411
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v6

    if-nez v6, :cond_a

    .line 412
    check-cast v45, Lorg/w3c/dom/events/EventTarget;

    .end local v45           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v45

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 414
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_8
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/model/MediaModel;->isUnsupportedMedia()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 422
    const/16 v49, 0x1

    goto :goto_7

    .line 417
    .restart local v45       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    const/16 v27, 0x1

    .line 418
    const v6, 0x7f09005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_8

    .line 430
    .end local v31           #media:Lcom/android/mms/model/MediaModel;
    .end local v45           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_2
    move-exception v21

    .line 431
    .local v21, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 432
    .end local v21           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v21

    .line 433
    .local v21, e:Ljava/lang/ClassCastException;
    const-string v6, "SlideshowModel"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/16 v48, 0x1

    .line 439
    .end local v21           #e:Ljava/lang/ClassCastException;
    :cond_b
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_d

    if-nez v27, :cond_d

    .line 440
    :cond_c
    new-instance v40, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 441
    .restart local v40       #slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 442
    check-cast v36, Lorg/w3c/dom/events/EventTarget;

    .end local v36           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 443
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v40           #slide:Lcom/android/mms/model/SlideModel;
    :cond_d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 447
    .end local v27           #isForwardLockMediaExisted:Z
    .end local v28           #j:I
    .end local v32           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v33           #mediaNum:I
    .end local v34           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_e
    new-instance v44, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    move-object/from16 v2, v42

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 448
    .local v44, slideshow:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, v44

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 449
    move/from16 v0, v49

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/mms/model/SlideshowModel;->mUnsupportedMedia:Z

    .line 450
    return-object v44
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/mms/model/SlideModel;->resetUriList()V

    .line 98
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0}, Lcom/android/mms/model/SlideshowModel;-><init>()V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 629
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 631
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 632
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 634
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 636
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 27
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 483
    new-instance v18, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 485
    .local v18, pb:Lcom/google/android/mms/pdu/PduBody;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v3, aCIDLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 488
    .local v9, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/model/SlideModel;

    .line 489
    .local v19, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/model/MediaModel;

    .line 490
    .local v14, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_2

    .line 491
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z

    move-result v24

    if-nez v24, :cond_2

    .line 492
    const/4 v9, 0x1

    .line 493
    goto :goto_0

    .line 498
    :cond_2
    const-string v17, ""

    .line 499
    .local v17, pattern:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 500
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 501
    :cond_3
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 502
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 504
    :cond_4
    const-string v24, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 505
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 508
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_5
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 515
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v24, v14

    .line 516
    check-cast v24, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v24

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 520
    :cond_6
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 522
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v21

    .line 523
    .local v21, src:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, cid:Ljava/lang/String;
    const-string v24, "cid:"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    .line 527
    .local v22, startWithContentId:Z
    if-eqz v22, :cond_c

    .line 528
    const-string v24, "cid:"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 533
    .local v13, location:Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_7

    .line 534
    move-object/from16 v6, v21

    .line 536
    :cond_7
    const-string v24, "cid:"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    .line 537
    if-eqz v22, :cond_8

    .line 538
    const-string v24, "cid:"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 542
    :cond_8
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 546
    if-nez v22, :cond_9

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 550
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 559
    :goto_2
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 560
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v23

    .line 561
    .local v23, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 562
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 571
    .end local v23           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_3
    const/4 v4, 0x0

    .line 572
    .local v4, bRemove:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEmptyTextPar()Z

    move-result v24

    if-nez v24, :cond_b

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 573
    check-cast v14, Lcom/android/mms/model/TextModel;

    .end local v14           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v14}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 574
    .local v5, br:[B
    if-eqz v5, :cond_a

    array-length v0, v5

    move/from16 v24, v0

    if-nez v24, :cond_b

    .line 575
    :cond_a
    const/4 v4, 0x1

    .line 577
    .end local v5           #br:[B
    :cond_b
    if-nez v4, :cond_1

    .line 578
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 530
    .end local v4           #bRemove:Z
    .end local v13           #location:Ljava/lang/String;
    .restart local v14       #media:Lcom/android/mms/model/MediaModel;
    :cond_c
    move-object/from16 v13, v21

    .restart local v13       #location:Ljava/lang/String;
    goto/16 :goto_1

    .line 553
    :cond_d
    const-string v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 554
    .local v12, index:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_e

    move-object v7, v6

    .line 556
    .local v7, contentId:Ljava/lang/String;
    :goto_4
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 554
    .end local v7           #contentId:Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 563
    .end local v12           #index:I
    :cond_f
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_10

    move-object/from16 v24, v14

    .line 564
    check-cast v24, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 565
    :cond_10
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v24

    if-nez v24, :cond_11

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v24

    if-nez v24, :cond_11

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 566
    :cond_11
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 568
    :cond_12
    const-string v24, "SlideshowModel"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unsupport media: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 583
    .end local v6           #cid:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #location:Ljava/lang/String;
    .end local v14           #media:Lcom/android/mms/model/MediaModel;
    .end local v16           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v17           #pattern:Ljava/lang/String;
    .end local v19           #slide:Lcom/android/mms/model/SlideModel;
    .end local v21           #src:Ljava/lang/String;
    .end local v22           #startWithContentId:Z
    :cond_13
    if-eqz v9, :cond_14

    if-eqz p3, :cond_14

    if-eqz p1, :cond_14

    .line 584
    const v24, 0x7f09005b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 587
    invoke-static/range {v18 .. v18}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 591
    :cond_14
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 592
    .local v15, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 593
    new-instance v20, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 594
    .local v20, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v24, "smil"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 595
    const-string v24, "smil.xml"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 596
    const-string v24, "application/smil"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 597
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 598
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 600
    if-eqz v15, :cond_15

    .line 602
    :try_start_0
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_15
    :goto_5
    return-object v18

    .line 603
    :catch_0
    move-exception v8

    .line 605
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 479
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 752
    if-eqz p2, :cond_1

    .line 753
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 754
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 756
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 758
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 759
    iget-object v3, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 760
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 762
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 764
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 668
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 669
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 671
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 673
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 674
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 675
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 677
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 680
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMessageSize(I)V
    .locals 2
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 903
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    invoke-interface {v0, v1, p1}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(II)V

    .line 904
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 688
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 689
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 690
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 691
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 692
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 695
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->clear()V

    goto :goto_0

    .line 698
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 699
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 700
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 702
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 655
    if-lez p1, :cond_0

    .line 656
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 658
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 775
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getFirstImage()Lcom/android/mms/model/ImageModel;
    .locals 3

    .prologue
    .line 955
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 956
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 959
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public hasOnlyOneImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 941
    const/4 v1, 0x0

    .line 942
    .local v1, imageNumber:I
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 943
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 944
    add-int/lit8 v1, v1, 0x1

    .line 945
    :cond_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasUnsupportedMedia()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVCalendar()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 952
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    :goto_0
    return v3

    .line 949
    :cond_3
    if-ne v1, v4, :cond_2

    move v3, v4

    .line 950
    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 649
    if-lez p1, :cond_0

    .line 650
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 652
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isContainUnsupportedFormat()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedFormat:Z

    return v0
.end method

.method public isContainUnsupportedMedia()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/android/mms/model/SlideshowModel;->mUnsupportedMedia:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExceedMMSTextSize(I)Z
    .locals 9
    .parameter "tmplimit"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, bresult:Z
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 918
    const/4 v3, 0x0

    .line 921
    .local v3, tTotalTextByteCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 922
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 923
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 925
    .local v5, ts:Ljava/lang/String;
    const/4 v4, 0x0

    .line 927
    .local v4, tcountUTF8:I
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_1
    add-int/2addr v3, v4

    .line 921
    .end local v4           #tcountUTF8:I
    .end local v5           #ts:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    .restart local v4       #tcountUTF8:I
    .restart local v5       #ts:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 929
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SlideshowModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception in isExceedMMSTextSize >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 934
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #tcountUTF8:I
    .end local v5           #ts:Ljava/lang/String;
    :cond_1
    if-le v3, p1, :cond_2

    .line 935
    const/4 v0, 0x1

    .line 938
    .end local v0           #bresult:Z
    .end local v2           #i:I
    .end local v3           #tTotalTextByteCount:I
    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 614
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 873
    if-eqz p2, :cond_0

    .line 874
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 875
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 877
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 846
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 848
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 849
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 851
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 796
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeSlideUrl()V

    .line 800
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 801
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 802
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 721
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 722
    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 723
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 724
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 725
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 728
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 732
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 880
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 881
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 882
    return-void
.end method

.method public replaceMedia(Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/ImageModel;)Z
    .locals 3
    .parameter "image"
    .parameter "newImage"

    .prologue
    .line 966
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 967
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    invoke-virtual {p1}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 970
    invoke-virtual {v1, p2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 971
    const/4 v2, 0x1

    .line 974
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .parameter "location"
    .parameter "object"

    .prologue
    .line 808
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 809
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 810
    const/4 v3, 0x0

    .line 811
    .local v3, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 812
    .local v0, addSize:I
    if-eqz v4, :cond_0

    .line 813
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 815
    :cond_0
    if-le v0, v3, :cond_3

    .line 816
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 817
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 823
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 824
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 825
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 828
    :cond_2
    if-eqz p2, :cond_4

    .line 829
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 830
    iget-object v5, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 831
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 819
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0       #addSize:I
    .restart local v3       #removeSize:I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 835
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 836
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 641
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 642
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 6
    .parameter "pb"

    .prologue
    .line 885
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 886
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 887
    .local v2, media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x0

    .line 889
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 890
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->convertCID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 894
    :goto_1
    if-eqz v3, :cond_1

    .line 895
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 892
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    goto :goto_1

    .line 899
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 748
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 471
    invoke-static {p0, v1, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 473
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 621
    invoke-static {p0, v1, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 867
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 868
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 870
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 856
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 858
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 859
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 861
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
