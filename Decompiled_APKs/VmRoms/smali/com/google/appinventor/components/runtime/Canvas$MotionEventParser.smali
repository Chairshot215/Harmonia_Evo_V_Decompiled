.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field public static final TAP_THRESHOLD:I = 0x1e

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v9, v0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v10, v0

    new-instance v0, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    const/4 v1, 0x0

    float-to-int v2, v9

    const/16 v3, 0xc

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    float-to-int v4, v10

    const/16 v6, 0xc

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v3, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    float-to-int v6, v9

    add-int/lit8 v6, v6, 0xc

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-double v5, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    float-to-int v8, v10

    add-int/lit8 v8, v8, 0xc

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v9, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iput v10, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iput v9, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iput v10, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "Canvas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    sub-float v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    #getter for: Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/Sprite;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v7, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    const/4 v0, 0x1

    :goto_4
    move v7, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    iput v9, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iput v10, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {p1, v0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    :cond_b
    move v0, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
