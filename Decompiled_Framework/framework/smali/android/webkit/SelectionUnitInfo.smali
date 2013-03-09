.class Landroid/webkit/SelectionUnitInfo;
.super Ljava/lang/Object;
.source "SelectionUnitInfo.java"


# static fields
.field private static final FIRST_LETTER_SELECTION_OFFSET:I = 0x2

.field private static final LAST_LETTER_SELECTION_OFFSET:I = 0x3


# instance fields
.field bound:Landroid/graphics/Rect;

.field boxNodeBound:Landroid/graphics/Rect;

.field endIndex:I

.field isOneChar:Z

.field node:I

.field sb:Ljava/lang/StringBuffer;

.field startIndex:I

.field type:I

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private set(IIIIIII)V
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v4, p1, v5, p1, v5}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iput p1, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iput p2, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iput p3, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1, p4, p5, p6, p7}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v1, p3, p2

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v4}, Landroid/webkit/HTCWebCore;->nativeFindParagraphBoundByNode(IZLandroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, p1, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/webkit/SelectionUnitInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/webkit/SelectionUnitInfo;

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iget v3, v0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method selectLeft()I
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method selectRight()I
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method set(Landroid/webkit/SelectionUnitInfo;)V
    .locals 3

    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->node:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    iget v0, p1, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iput v0, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iput-boolean v0, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p1, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxNodeBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method trimToHead()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v3, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    goto :goto_0
.end method

.method trimToTail()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v2, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v3, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    iget v1, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    goto :goto_0
.end method

.method update()V
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v5, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v6, p0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v4, v5, v6, v0}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v5, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget v6, p0, Landroid/webkit/SelectionUnitInfo;->endIndex:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6, v3}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v5, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    iget-object v6, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v7, v6}, Landroid/webkit/HTCWebCore;->nativeFindParagraphBoundByNode(IZLandroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->webView:Landroid/webkit/WebView;

    iget-object v4, v4, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget v5, p0, Landroid/webkit/SelectionUnitInfo;->node:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Landroid/webkit/SelectionUnitInfo;->boxNodeBound:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
