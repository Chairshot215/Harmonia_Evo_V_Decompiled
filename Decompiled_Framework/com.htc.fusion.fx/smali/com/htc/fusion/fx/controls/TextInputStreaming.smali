.class public Lcom/htc/fusion/fx/controls/TextInputStreaming;
.super Landroid/widget/EditText;
.source "TextInputStreaming.java"


# instance fields
.field private m_Bundle:Landroid/os/Bundle;

.field private m_CursorRect:Landroid/graphics/Rect;

.field private m_HighlightPath:Landroid/graphics/Path;

.field private m_HightlightRectF:Landroid/graphics/RectF;

.field private m_InputManager:Landroid/view/inputmethod/InputMethodManager;

.field private m_TextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

.field private m_bDrawing:Z

.field private m_bReloadTexture:Z

.field private m_bUsingStreamingTexture:Z

.field private m_screenshot:Landroid/graphics/Bitmap;

.field private m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

.field private m_windowHeight:I

.field private m_windowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowHeight:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowWidth:I

    const-string v1, "TextInputStreaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/htc/fusion/fx/controls/TextInputStreaming;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/fusion/fx/controls/TextInputStreaming;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    return v0
.end method

.method private disableSuperToUpdateCursorPosition(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_Bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_Bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_Bundle:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_Bundle:Landroid/os/Bundle;

    const-string v1, "Fusion_update_cursor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCursorPosition(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionStart()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getSelectionEnd()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_TextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxTextInput;->getCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    :cond_0
    if-ne v13, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v13, v1, v14}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/4 v1, 0x2

    new-array v8, v1, [F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v1, 0x2

    new-array v10, v1, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLocationInWindow([I)V

    const/4 v1, 0x2

    new-array v11, v1, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLocationOnScreen([I)V

    const/4 v1, 0x2

    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v11, v2

    const/4 v3, 0x0

    aget v3, v10, v3

    sub-int/2addr v2, v3

    aput v2, v9, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v11, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    sub-int/2addr v2, v3

    aput v2, v9, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    add-double/2addr v3, v5

    double-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v4, v15

    double-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HightlightRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v5, v15

    double-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_CursorRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_HighlightPath:Landroid/graphics/Path;

    invoke-virtual {v7, v13, v12, v1}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public disableStreamingTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableSuperToUpdateCursorPosition(Z)V

    return-void
.end method

.method public enableStreamingTexture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    invoke-direct {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableSuperToUpdateCursorPosition(Z)V

    return-void
.end method

.method public hideSoftInput()V
    .locals 3

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bDrawing:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->backBuffer()Ljava/util/concurrent/Future;

    move-result-object v5

    const-wide/16 v18, 0x3e8

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-interface {v5, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    :cond_0
    :goto_0
    const-string v18, "TextInputStreaming"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " View.width: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " View.height: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Canvas.width: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Canvas.height: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_screenshot:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    const-string v18, "TextInputStreaming"

    const-string v19, "m_screenshot is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    new-instance v15, Ljava/io/StringWriter;

    invoke-direct {v15}, Ljava/io/StringWriter;-><init>()V

    new-instance v18, Ljava/io/PrintWriter;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v18, "TextInputStreaming"

    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_screenshot:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v11, v0, [F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v18, 0x2

    aget v12, v11, v18

    const/16 v18, 0x5

    aget v13, v11, v18

    const-string v18, "TextInputStreaming"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "systemCanvasX: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " systemCanvasY: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v8, v0, [F

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v18, 0x2

    aget v9, v8, v18

    const/16 v18, 0x5

    aget v10, v8, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLocationInWindow([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_windowWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    add-float v16, v9, v12

    add-float v17, v10, v13

    :goto_2
    const-string v18, "TextInputStreaming"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "windowLocation, xShift: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " yShift: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bDrawing:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->draw(Landroid/graphics/Canvas;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bDrawing:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_TextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_screenshot:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/fusion/fx/controls/FxTextInput;->loadTexture(Landroid/graphics/Bitmap;)V

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->swap()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/concurrent/Future;

    const-wide/16 v19, 0x3e8

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v18 .. v21}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "TextInputStreaming"

    const-string v19, "Failed to swap buffers"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->updateCursorPosition(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    :cond_7
    const/16 v18, 0x0

    aget v18, v14, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    sub-float v16, v9, v18

    const/16 v18, 0x1

    aget v18, v14, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v13

    sub-float v17, v10, v18

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_TextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextInput;->loadTexture(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z

    :cond_9
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/FxStreamingTexture;->flushCanvas(Landroid/graphics/Canvas;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTexture(Lcom/htc/fusion/fx/controls/FxStreamingTexture;Lcom/htc/fusion/fx/controls/FxTextInput;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_tex:Lcom/htc/fusion/fx/controls/FxStreamingTexture;

    iput-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bDrawing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bUsingStreamingTexture:Z

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_TextInput:Lcom/htc/fusion/fx/controls/FxTextInput;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_screenshot:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_bReloadTexture:Z

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputStreaming$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/TextInputStreaming$1;-><init>(Lcom/htc/fusion/fx/controls/TextInputStreaming;)V

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public showSoftInput()V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputStreaming;->m_InputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
