.class public Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItemListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field CubeTLListener:[Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

.field img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field final synthetic this$0:Lcom/htc/photowidget3d/grid/M10Operator;

.field tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 429
    const-class v0, Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 429
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    .line 431
    new-array v0, v1, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 432
    new-array v0, v1, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 433
    new-array v0, v1, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 434
    new-array v0, v1, [Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->CubeTLListener:[Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 9
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 438
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 439
    .local v2, item:Lcom/htc/fusion/fx/controls/FxListItem;
    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v1

    .line 441
    .local v1, index:I
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v3, :cond_2

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item is created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->listItemControlNames:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 446
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v0, v6

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v1

    .line 447
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 448
    :cond_0
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->CubeTLListener:[Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

    new-instance v4, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

    iget-object v5, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {v4, v5, v8}, Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V

    aput-object v4, v3, v1

    .line 449
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->CubeTLListener:[Lcom/htc/photowidget3d/grid/M10Operator$CubeTLListener;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 450
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v0, v7

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v1

    .line 451
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 452
    :cond_1
    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v1

    .line 453
    sget-boolean v3, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 455
    .end local v0           #controls:[Lcom/htc/fusion/fx/FxObject;
    :cond_2
    const/16 v3, 0xa

    iget v4, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v3, v4, :cond_5

    .line 458
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #getter for: Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z
    invoke-static {v3}, Lcom/htc/photowidget3d/grid/M10Operator;->access$400(Lcom/htc/photowidget3d/grid/M10Operator;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    :cond_3
    :goto_0
    return-void

    .line 463
    :cond_4
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-virtual {v3, v1}, Lcom/htc/photowidget3d/grid/M10Operator;->handleGridClicked(I)V

    goto :goto_0

    .line 465
    :cond_5
    const/16 v3, 0x16

    iget v4, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v3, v4, :cond_3

    .line 466
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    if-nez v3, :cond_a

    .line 468
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->isDecError()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 470
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 480
    :goto_1
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 482
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->isDecError()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 484
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 485
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 486
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    .line 500
    :goto_2
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    const-string v4, "cube_trans"

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0

    .line 472
    :cond_6
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_7

    .line 474
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    const-string v4, "unloaded_intro"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 478
    :cond_7
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 488
    :cond_8
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_9

    .line 490
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    const-string v4, "unloaded_intro"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 492
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    goto :goto_2

    .line 496
    :cond_9
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 497
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    goto/16 :goto_2

    .line 504
    :cond_a
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->isDecError()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 506
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 516
    :goto_3
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 518
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->isDecError()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 520
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 521
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 522
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v7}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    .line 536
    :goto_4
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->tlCube:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    const-string v4, "cube_trans"

    const/high16 v5, -0x4080

    invoke-virtual {v3, v4, v6, v5, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto/16 :goto_0

    .line 508
    :cond_b
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_c

    .line 510
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    const-string v4, "unloaded_intro"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    goto :goto_3

    .line 514
    :cond_c
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img02:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 524
    :cond_d
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_e

    .line 526
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    const-string v4, "unloaded_intro"

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v8}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    goto :goto_4

    .line 532
    :cond_e
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->img01:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 533
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v4, v4, Lcom/htc/photowidget3d/grid/M10Operator;->CurrentBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/photowidget3d/grid/BitmapArray;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v3, p0, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iget-object v3, v3, Lcom/htc/photowidget3d/grid/M10Operator;->PreviousBmp:[Lcom/htc/photowidget3d/grid/BitmapArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Lcom/htc/photowidget3d/grid/BitmapArray;->setDecError(Z)V

    goto/16 :goto_4
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$ListItemListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
