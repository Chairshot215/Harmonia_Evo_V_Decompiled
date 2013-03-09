.class public Lcom/htc/launcher/WorkspaceInfoProvider;
.super Landroid/content/ContentProvider;
.source "WorkspaceInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.launcher.workspaceinfo"

.field private static final CELL_COLUMN_COUNT:I = 0x4

.field private static final CELL_ROW_COUNT:I = 0x4

.field public static final KEY_CELL_HEIGHT:Ljava/lang/String; = "cell_height"

.field public static final KEY_CELL_WIDTH:Ljava/lang/String; = "cell_width"

.field public static final KEY_MAX_SPAN_X:Ljava/lang/String; = "max_span_x"

.field public static final KEY_MAX_SPAN_Y:Ljava/lang/String; = "max_span_y"

.field public static final KEY_MAX_SPAN_Y_BY_SPAN_X:Ljava/lang/String; = "max_spany_by_spanx"

.field private static final TAG:Ljava/lang/String; = "WorkspaceInfoProvider"

.field private static final localLOGD:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 38
    new-instance v6, Landroid/database/MatrixCursor;

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "max_span_x"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "max_span_y"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "cell_width"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-string v21, "cell_height"

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string v21, "max_spany_by_spanx"

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 40
    .local v6, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 42
    .local v3, builder:Landroid/database/MatrixCursor$RowBuilder;
    sget-object v19, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/launcher/Launcher;

    .line 43
    .local v9, launcher:Lcom/htc/launcher/Launcher;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v12, v0, [I

    .line 44
    .local v12, maxSpanYBySpanX:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 45
    const/16 v19, 0x4

    aput v19, v12, v8

    .line 44
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/WorkspaceInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 48
    .local v5, cellWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/WorkspaceInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0001

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 50
    .local v4, cellHeight:I
    const/4 v10, 0x4

    .line 51
    .local v10, maxSpanX:I
    const/4 v11, 0x4

    .line 53
    .local v11, maxSpanY:I
    if-eqz v9, :cond_3

    .line 54
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v15

    .line 55
    .local v15, pagesManager:Lcom/htc/launcher/PagesManager;
    invoke-virtual {v15}, Lcom/htc/launcher/PagesManager;->getCurrentPagesCount()I

    move-result v14

    .line 56
    .local v14, pageCount:I
    const/16 v19, 0x7

    move/from16 v0, v19

    if-lt v14, v0, :cond_3

    .line 57
    const/16 v16, 0x0

    .line 58
    .local v16, validSpanY:I
    const/16 v17, 0x4

    .local v17, x:I
    :goto_1
    if-ltz v17, :cond_1

    .line 59
    aput v16, v12, v17

    .line 60
    if-nez v17, :cond_5

    .line 61
    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v12, v19

    .line 75
    :cond_1
    const/4 v10, 0x0

    .line 76
    const/4 v8, 0x4

    :goto_2
    if-lez v8, :cond_2

    .line 77
    aget v19, v12, v8

    if-eqz v19, :cond_8

    .line 78
    move v10, v8

    .line 82
    :cond_2
    const/16 v19, 0x1

    aget v11, v12, v19

    .line 89
    .end local v14           #pageCount:I
    .end local v15           #pagesManager:Lcom/htc/launcher/PagesManager;
    .end local v16           #validSpanY:I
    .end local v17           #x:I
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v13, maxSpanYBySpanXString:Ljava/lang/StringBuilder;
    const/4 v8, 0x1

    :goto_3
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_9

    .line 91
    aget v19, v12, v8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    array-length v0, v12

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_4

    .line 93
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 64
    .end local v13           #maxSpanYBySpanXString:Ljava/lang/StringBuilder;
    .restart local v14       #pageCount:I
    .restart local v15       #pagesManager:Lcom/htc/launcher/PagesManager;
    .restart local v16       #validSpanY:I
    .restart local v17       #x:I
    :cond_5
    const/16 v18, 0x4

    .local v18, y:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    .line 65
    iget-object v0, v9, Lcom/htc/launcher/Launcher;->mWorkspace:Lcom/htc/launcher/Workspace;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/launcher/Workspace;->hasRoomInAllScreen(II)Z

    move-result v7

    .line 67
    .local v7, hasRoom:Z
    if-eqz v7, :cond_7

    .line 68
    aput v18, v12, v17

    .line 69
    move/from16 v16, v18

    .line 58
    .end local v7           #hasRoom:Z
    :cond_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 64
    .restart local v7       #hasRoom:Z
    :cond_7
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    .line 76
    .end local v7           #hasRoom:Z
    .end local v18           #y:I
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 96
    .end local v14           #pageCount:I
    .end local v15           #pagesManager:Lcom/htc/launcher/PagesManager;
    .end local v16           #validSpanY:I
    .end local v17           #x:I
    .restart local v13       #maxSpanYBySpanXString:Ljava/lang/StringBuilder;
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v19

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 97
    return-object v6
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
