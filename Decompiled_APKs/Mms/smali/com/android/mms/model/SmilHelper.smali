.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final ELEMENT_TAG_AUDIO:Ljava/lang/String; = "audio"

.field public static final ELEMENT_TAG_IMAGE:Ljava/lang/String; = "img"

.field public static final ELEMENT_TAG_REF:Ljava/lang/String; = "ref"

.field public static final ELEMENT_TAG_TEXT:Ljava/lang/String; = "text"

.field public static final ELEMENT_TAG_VIDEO:Ljava/lang/String; = "video"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SmilHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 441
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 442
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 443
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 444
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 445
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter "document"

    .prologue
    .line 150
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 152
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 153
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 154
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 451
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 452
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 453
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 1
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 159
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 161
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v0, p2}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;
    .locals 27
    .parameter "slideshow"
    .parameter "bSlideshow"
    .parameter "bRemoveNonStdRegions"

    .prologue
    .line 288
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 291
    .local v7, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v24, "smil"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/SMILElement;

    .line 292
    .local v22, smilElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 295
    const-string v24, "head"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 296
    .local v9, headElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 299
    const-string v24, "layout"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 301
    .local v12, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v12}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 304
    const-string v24, "root-layout"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 306
    .local v19, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v13

    .line 307
    .local v13, layouts:Lcom/android/mms/model/LayoutModel;
    if-eqz p2, :cond_0

    .line 308
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->removeNonStdRegions()V

    .line 309
    :cond_0
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 310
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 311
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, bgColor:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 313
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 315
    :cond_1
    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 318
    invoke-virtual {v13}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/List;

    move-result-object v18

    .line 319
    .local v18, regions:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/model/RegionModel;

    .line 320
    .local v16, r:Lcom/android/mms/model/RegionModel;
    const-string v24, "region"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 322
    .local v17, regionElement:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 324
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 325
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 326
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 327
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 332
    .end local v16           #r:Lcom/android/mms/model/RegionModel;
    .end local v17           #regionElement:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_2
    const-string v24, "body"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILElement;

    .line 333
    .local v5, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/model/SlideModel;

    .line 337
    .local v20, slide:Lcom/android/mms/model/SlideModel;
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 338
    .local v15, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    move/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v24, v15

    .line 340
    check-cast v24, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 343
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/model/MediaModel;

    .line 344
    .local v14, media:Lcom/android/mms/model/MediaModel;
    const/16 v21, 0x0

    .line 346
    .local v21, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v24

    const-string v25, "&"

    const-string v26, "&amp;"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 349
    .local v23, src:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportUsingCID()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_5

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 351
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getCID()Ljava/lang/String;

    move-result-object v24

    const-string v25, "&"

    const-string v26, "&amp;"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 355
    :cond_5
    instance-of v0, v14, Lcom/android/mms/model/TextModel;

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 357
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEmptyTextPar()Z

    move-result v24

    if-nez v24, :cond_7

    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v24, v14

    .line 358
    check-cast v24, Lcom/android/mms/model/TextModel;

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 359
    .local v6, br:[B
    if-eqz v6, :cond_6

    array-length v0, v6

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 360
    :cond_6
    const-string v24, "SmilHelper"

    const-string v25, "Skip empty text media"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 365
    .end local v6           #br:[B
    :cond_7
    const-string v24, "text"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v24, v21

    .line 367
    check-cast v24, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v25, "Text"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 393
    :goto_2
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v3

    .line 394
    .local v3, begin:I
    if-eqz v3, :cond_8

    .line 395
    const-string v24, "begin"

    div-int/lit16 v0, v3, 0x3e8

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_8
    invoke-virtual {v14}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 400
    .local v8, duration:I
    if-eqz p1, :cond_9

    sub-int v24, v8, v3

    if-gtz v24, :cond_9

    .line 402
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v8

    .line 406
    :cond_9
    if-eqz v8, :cond_a

    .line 407
    int-to-float v0, v8

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 409
    :cond_a
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 411
    check-cast v21, Lorg/w3c/dom/events/EventTarget;

    .end local v21           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto/16 :goto_1

    .line 369
    .end local v3           #begin:I
    .end local v8           #duration:I
    .restart local v21       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_b
    instance-of v0, v14, Lcom/android/mms/model/ImageModel;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 370
    const-string v24, "img"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v24, v21

    .line 372
    check-cast v24, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v25, "Image"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    goto :goto_2

    .line 374
    :cond_c
    instance-of v0, v14, Lcom/android/mms/model/VideoModel;

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 375
    const-string v24, "video"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v24, v21

    .line 377
    check-cast v24, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v25, "Image"

    move-object/from16 v0, v25

    invoke-static {v12, v0}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    goto/16 :goto_2

    .line 379
    :cond_d
    instance-of v0, v14, Lcom/android/mms/model/AudioModel;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 380
    const-string v24, "audio"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    goto/16 :goto_2

    .line 382
    :cond_e
    instance-of v0, v14, Lcom/android/mms/model/UnsupportedMediaModel;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 385
    const-string v24, "ref"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    .line 387
    const-string v24, "SmilHelper"

    const-string v25, "unsupport media type"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 421
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #media:Lcom/android/mms/model/MediaModel;
    .end local v15           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v20           #slide:Lcom/android/mms/model/SlideModel;
    .end local v21           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v23           #src:Ljava/lang/String;
    :cond_f
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 27
    .parameter "pb"

    .prologue
    .line 170
    new-instance v6, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 174
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v23, "smil"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILElement;

    .line 175
    .local v19, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v23, "xmlns"

    const-string v24, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 179
    const-string v23, "head"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILElement;

    .line 180
    .local v11, head:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 182
    const-string v23, "layout"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 183
    .local v14, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v11, v14}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    const-string v23, "body"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILElement;

    .line 187
    .local v4, body:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    .line 192
    .local v17, partsNum:I
    if-nez v17, :cond_1

    .line 278
    :cond_0
    return-object v6

    .line 196
    :cond_1
    const/4 v15, 0x0

    .line 197
    .local v15, par:Lorg/w3c/dom/smil/SMILParElement;
    const/4 v10, 0x0

    .line 198
    .local v10, hasText:Z
    const/4 v9, 0x0

    .line 199
    .local v9, hasMedia:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 201
    if-eqz v15, :cond_2

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 202
    :cond_2
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v9, 0x0

    .line 207
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 208
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 209
    .local v5, contentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 212
    :try_start_0
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v7, v5, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 214
    .local v7, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 223
    .end local v7           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_4
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v23

    const-string v24, "&"

    const-string v25, "&amp;"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 224
    .local v20, src:Ljava/lang/String;
    const-string v23, "cid:<"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, ">"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 225
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cid:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 227
    :cond_5
    const-string v23, "text/plain"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 229
    :cond_6
    const-string v23, "text"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    .line 231
    .local v21, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 232
    const/4 v10, 0x1

    .line 234
    const/4 v15, 0x0

    .line 199
    .end local v21           #textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 215
    .end local v20           #src:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 216
    .local v8, e:Landroid/drm/mobile1/DrmException;
    const-string v23, "SmilHelper"

    invoke-virtual {v8}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 217
    .end local v8           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v8

    .line 218
    .local v8, e:Ljava/io/IOException;
    const-string v23, "SmilHelper"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 236
    .end local v8           #e:Ljava/io/IOException;
    .restart local v20       #src:Ljava/lang/String;
    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 237
    const-string v23, "img"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    .line 239
    .local v13, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v13}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 240
    const/4 v9, 0x1

    .line 242
    const/4 v15, 0x0

    .line 244
    goto :goto_2

    .end local v13           #imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 245
    const-string v23, "video"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 247
    .local v22, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 248
    const/4 v9, 0x1

    .line 250
    const/4 v15, 0x0

    .line 252
    goto :goto_2

    .end local v22           #videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_a
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 253
    const-string v23, "audio"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    .line 255
    .local v3, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 256
    const/4 v9, 0x1

    .line 258
    const/4 v15, 0x0

    .line 260
    goto :goto_2

    .line 261
    .end local v3           #audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_b
    const-string v23, "SmilHelper"

    const-string v24, "unsupport media type"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    cmpl-double v23, v23, v25

    if-ltz v23, :cond_7

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    const-string v23, "text/html"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 265
    :cond_c
    const-string v23, "ref"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v18

    .line 267
    .local v18, refElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 268
    const/4 v9, 0x1

    .line 270
    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method private static findRegionElementById(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 5
    .parameter "layoutElement"
    .parameter "rId"

    .prologue
    .line 426
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 427
    .local v2, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 428
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 429
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 430
    .local v3, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    .end local v3           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_1
    return-object v3

    .line 428
    .restart local v3       #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .end local v3           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 105
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 107
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 105
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "model"
    .parameter "bSlideshow"
    .parameter "bRemoveNonStdRegions"

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;ZZ)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .parameter "pb"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 79
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 82
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 83
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 88
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 91
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .parameter "smilPart"

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 129
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 137
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 146
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljava/io/IOException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 141
    :catch_1
    move-exception v3

    .line 142
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 143
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 144
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "SmilHelper"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "in"

    .prologue
    .line 118
    return-object p0
.end method
