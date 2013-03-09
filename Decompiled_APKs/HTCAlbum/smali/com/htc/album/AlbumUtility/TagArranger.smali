.class public Lcom/htc/album/AlbumUtility/TagArranger;
.super Ljava/lang/Object;
.source "TagArranger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagArranger"


# instance fields
.field private dockHeight:I

.field private dockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private dockRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private intHeight:I

.field private multiple:Z

.field private rectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private wa:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumUtility/TagArranger;-><init>(Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "multiple"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    .line 22
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    .line 35
    iput-boolean p1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    .line 36
    return-void
.end method

.method private isEmpty(Ljava/util/Collection;)Z
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
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    .line 316
    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 322
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private remove(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_1

    .line 119
    const-string v2, "TagArranger"

    const-string v3, "Rectangle not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    iget-boolean v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v2, :cond_2

    .line 123
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 124
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 126
    .end local v0           #index:I
    :cond_2
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 127
    .restart local v0       #index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addTag(IIILjava/lang/String;)Landroid/graphics/Rect;
    .locals 14
    .parameter "tagX"
    .parameter "tagY"
    .parameter "tagWidth"
    .parameter "key"

    .prologue
    .line 147
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    move/from16 v0, p2

    if-ge v0, v10, :cond_0

    .line 148
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 p2, v0

    .line 149
    const-string v10, "TagArranger"

    const-string v11, "Coordinate Y over top bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, p2

    if-le v0, v10, :cond_1

    .line 153
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 p2, v0

    .line 154
    const-string v10, "TagArranger"

    const-string v11, "Coordinate Y over bottom bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v10

    .line 159
    .local v6, relY:I
    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int v1, v10, v11

    .line 161
    .local v1, gap:I
    div-int v3, v6, v1

    .line 163
    .local v3, index:I
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge p1, v10, :cond_2

    .line 164
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget p1, v10, Landroid/graphics/Rect;->left:I

    .line 165
    const-string v10, "TagArranger"

    const-string v11, "Coordinate X over left bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    add-int v10, p1, p3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_3

    .line 169
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int p1, v10, p3

    .line 170
    const-string v10, "TagArranger"

    const-string v11, "Coordinate X over right bound."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 174
    .local v8, tag:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 175
    .local v7, stop:Z
    iget-boolean v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v10, :cond_12

    .line 178
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    move/from16 v0, p2

    if-lt v0, v10, :cond_c

    .line 181
    rem-int v10, v6, v1

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    if-le v10, v11, :cond_4

    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 185
    :cond_4
    :goto_0
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_a

    if-nez v7, :cond_a

    .line 187
    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    .line 189
    .local v9, top:I
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 190
    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_5

    .line 191
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    const/4 v7, 0x1

    .line 193
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 220
    goto :goto_0

    .line 197
    :cond_6
    const/4 v4, 0x0

    .line 199
    .local v4, intersect:Z
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 201
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 203
    .local v5, rect:Landroid/graphics/Rect;
    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_8

    .line 204
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v3, v10, 0x1

    goto :goto_2

    .line 207
    :cond_8
    invoke-static {v5, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 208
    const/4 v4, 0x1

    goto :goto_2

    .line 213
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_9
    if-nez v4, :cond_5

    .line 214
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v7, 0x1

    goto :goto_1

    .line 222
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #intersect:Z
    .end local v9           #top:I
    :cond_a
    if-nez v7, :cond_b

    .line 223
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    sub-int/2addr v10, v11

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    :cond_b
    :goto_3
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v10, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-object v8

    .line 227
    :cond_c
    :goto_4
    if-lez v3, :cond_11

    if-nez v7, :cond_11

    .line 229
    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    .line 231
    .restart local v9       #top:I
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_e

    .line 234
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    const/4 v7, 0x1

    .line 236
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_d
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 253
    goto :goto_4

    .line 239
    :cond_e
    const/4 v4, 0x0

    .line 240
    .restart local v4       #intersect:Z
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 241
    .restart local v5       #rect:Landroid/graphics/Rect;
    invoke-static {v5, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 242
    const/4 v4, 0x1

    goto :goto_6

    .line 246
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_10
    if-nez v4, :cond_d

    .line 247
    const/4 v7, 0x1

    .line 248
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 255
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #intersect:Z
    .end local v9           #top:I
    :cond_11
    if-nez v7, :cond_b

    .line 256
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v12, v13

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 261
    :cond_12
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    move/from16 v0, p2

    if-lt v0, v10, :cond_16

    .line 263
    rem-int v10, v6, v1

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    if-le v10, v11, :cond_13

    .line 264
    add-int/lit8 v3, v3, 0x1

    .line 266
    :cond_13
    :goto_7
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_15

    if-nez v7, :cond_15

    .line 268
    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    .line 270
    .restart local v9       #top:I
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_14

    .line 271
    iget v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v10, v9

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v11, :cond_14

    .line 272
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    const/4 v7, 0x1

    .line 274
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 278
    goto :goto_7

    .line 280
    .end local v9           #top:I
    :cond_15
    if-nez v7, :cond_b

    .line 281
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    sub-int/2addr v10, v11

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 285
    :cond_16
    :goto_8
    if-lez v3, :cond_18

    if-nez v7, :cond_18

    .line 287
    mul-int v10, v1, v3

    iget-object v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int v9, v10, v11

    .line 289
    .restart local v9       #top:I
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_17

    .line 290
    add-int v10, p1, p3

    iget v11, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v8, p1, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 291
    const/4 v7, 0x1

    .line 292
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v10, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_17
    add-int/lit8 v3, v3, -0x1

    .line 295
    goto :goto_8

    .line 297
    .end local v9           #top:I
    :cond_18
    if-nez v7, :cond_b

    .line 298
    iget-object v10, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int v11, p1, p3

    iget-object v12, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget v13, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    add-int/2addr v12, v13

    invoke-virtual {v8, p1, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3
.end method

.method public clearTags()V
    .locals 5

    .prologue
    .line 86
    iget-boolean v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 89
    .local v2, rList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 93
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/htc/album/AlbumUtility/TagArranger;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 101
    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/htc/album/AlbumUtility/TagArranger;->remove(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setup(Landroid/graphics/Rect;II)V
    .locals 8
    .parameter "workingArea"
    .parameter "dockAreaHeight"
    .parameter "intervalHeight"

    .prologue
    const/4 v7, 0x5

    .line 48
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    .line 49
    iput p2, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    .line 50
    iput p3, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    .line 51
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->rectMap:Ljava/util/Map;

    .line 52
    iget v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockHeight:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/TagArranger;->intHeight:I

    add-int v1, v5, v6

    .line 53
    .local v1, gap:I
    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/htc/album/AlbumUtility/TagArranger;->wa:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v4, v5, v6

    .line 54
    .local v4, waHeight:I
    div-int v0, v4, v1

    .line 56
    .local v0, dockNum:I
    iget-boolean v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->multiple:Z

    if-eqz v5, :cond_2

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    .line 61
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v3, rectList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #rectList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    :cond_0
    rem-int v5, v4, v1

    if-lez v5, :cond_1

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .restart local v3       #rectList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3           #rectList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    :cond_1
    return-void

    .line 71
    .end local v2           #i:I
    :cond_2
    rem-int v5, v4, v1

    if-lez v5, :cond_3

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    .line 75
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 76
    iget-object v5, p0, Lcom/htc/album/AlbumUtility/TagArranger;->dockRectList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
