.class public Lcom/android/mms/dom/smil/SmilRegionElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source "SmilRegionElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/SMILRegionElement;


# static fields
.field private static final BACKGROUND_COLOR_ATTRIBUTE_NAME:Ljava/lang/String; = "backgroundColor"

.field private static final BOTTOM_ATTRIBUTE_NAME:Ljava/lang/String; = "bottom"

.field private static final DEBUG:Z = false

.field private static final FILL_ATTRIBUTE:Ljava/lang/String; = "fill"

.field private static final FIT_ATTRIBUTE_NAME:Ljava/lang/String; = "fit"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final HIDDEN_ATTRIBUTE:Ljava/lang/String; = "hidden"

.field private static final ID_ATTRIBUTE_NAME:Ljava/lang/String; = "id"

.field private static final LEFT_ATTRIBUTE_NAME:Ljava/lang/String; = "left"

.field private static final LOCAL_LOGV:Z = false

.field private static final MEET_ATTRIBUTE:Ljava/lang/String; = "meet"

.field private static final RIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "right"

.field private static final SCROLL_ATTRIBUTE:Ljava/lang/String; = "scroll"

.field private static final SLICE_ATTRIBUTE:Ljava/lang/String; = "slice"

.field private static final TAG:Ljava/lang/String; = "SmilRegionElementImpl"

.field private static final TITLE_ATTRIBUTE_NAME:Ljava/lang/String; = "title"

.field private static final TOP_ATTRIBUTE_NAME:Ljava/lang/String; = "top"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"

.field private static final Z_INDEX_ATTRIBUTE_NAME:Ljava/lang/String; = "z-index"


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "tagName"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private parseRegionLength(Ljava/lang/String;Z)I
    .locals 6
    .parameter "length"
    .parameter "horizontal"

    .prologue
    const/4 v5, 0x0

    .line 249
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 261
    :goto_0
    return v2

    .line 252
    :cond_0
    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    const-wide v2, 0x3f847ae147ae147bL

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    mul-double v0, v2, v4

    .line 254
    .local v0, value:D
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 259
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    goto :goto_1

    .line 261
    .end local v0           #value:D
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    const-string v1, "fit"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, fit:Ljava/lang/String;
    const-string v1, "fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "fill"

    .line 73
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const-string v1, "meet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "meet"

    goto :goto_0

    .line 68
    :cond_1
    const-string v1, "scroll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    const-string v1, "scroll"

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "slice"

    goto :goto_0

    .line 73
    :cond_3
    const-string v1, "hidden"

    goto :goto_0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 160
    :try_start_0
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v1

    .line 166
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 168
    .local v0, bbh:I
    :try_start_1
    const-string v1, "top"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 175
    :goto_1
    :try_start_2
    const-string v1, "bottom"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    goto :goto_0

    .line 169
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()I
    .locals 5

    .prologue
    .line 79
    :try_start_0
    const-string v3, "left"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 95
    :goto_0
    return v3

    .line 80
    :catch_0
    move-exception v3

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 87
    .local v0, bbw:I
    const-string v3, "right"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 88
    .local v1, right:I
    const-string v3, "width"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 89
    .local v2, width:I
    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    goto :goto_0

    .line 90
    .end local v0           #bbw:I
    .end local v1           #right:I
    .end local v2           #width:I
    :catch_1
    move-exception v3

    .line 95
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTop()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 100
    :try_start_0
    const-string v3, "top"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 116
    :goto_0
    return v3

    .line 101
    :catch_0
    move-exception v3

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v0

    .line 108
    .local v0, bbh:I
    const-string v3, "bottom"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I

    move-result v1

    .line 109
    .local v1, bottom:I
    const-string v3, "height"

    invoke-virtual {p0, v3}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 110
    .local v2, height:I
    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    goto :goto_0

    .line 111
    .end local v0           #bbh:I
    .end local v1           #bottom:I
    .end local v2           #height:I
    :catch_1
    move-exception v3

    move v3, v4

    .line 116
    goto :goto_0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 190
    :try_start_0
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 211
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILDocument;

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v0

    .line 198
    .local v0, bbw:I
    :try_start_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    sub-int/2addr v0, v1

    .line 205
    :goto_1
    :try_start_2
    const-string v1, "right"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->parseRegionLength(Ljava/lang/String;Z)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v1

    goto :goto_0

    .line 199
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public getZIndex()I
    .locals 2

    .prologue
    .line 121
    :try_start_0
    const-string v1, "z-index"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, _:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .parameter "backgroundColor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .locals 2
    .parameter "fit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "scroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "fit"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "fit"

    const-string v1, "hidden"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 2
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v0, "height"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 241
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public setLeft(I)V
    .locals 2
    .parameter "left"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "left"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 223
    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setTop(I)V
    .locals 2
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "top"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public setWidth(I)V
    .locals 2
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setZIndex(I)V
    .locals 2
    .parameter "zIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 147
    if-lez p1, :cond_0

    .line 148
    const-string v0, "z-index"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "z-index"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilRegionElementImpl;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
