.class public Lcom/htc/android/htcime/util/HandwritePatternToWord;
.super Lcom/htc/android/htcime/util/IMEWithListViewActivity;
.source "HandwritePatternToWord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;,
        Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;
    }
.end annotation


# static fields
.field public static final GES_FILE_PATH:Ljava/lang/String; = "data/com.htc.android.htcime/app_hwr/gestures"


# instance fields
.field final DEBUG:Z

.field private final GES_PATH_COLOR:I

.field private final GES_PIC_BG_COLOR:I

.field private final GES_PIC_EDGE:I

.field final TAG:Ljava/lang/String;

.field private delStr:Ljava/lang/String;

.field private gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

.field gesFile:Ljava/io/File;

.field private final gesPicBG:Landroid/graphics/Rect;

.field lib:Landroid/gesture/GestureLibrary;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

.field private m_bRecognizerHasBeenInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->DEBUG:Z

    .line 63
    iput-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    .line 64
    iput-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mPaint:Landroid/graphics/Paint;

    .line 69
    const/16 v0, -0x100

    iput v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->GES_PATH_COLOR:I

    .line 70
    const v0, -0x777778

    iput v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->GES_PIC_BG_COLOR:I

    .line 71
    iput v3, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->GES_PIC_EDGE:I

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesPicBG:Landroid/graphics/Rect;

    .line 75
    iput-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 76
    iput-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 77
    iput-boolean v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    .line 351
    return-void
.end method

.method private editPattern(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.ui.AddHandwritePatternWord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v1, "gestureName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method private loadGestures()V
    .locals 13

    .prologue
    .line 239
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    if-nez v9, :cond_0

    .line 279
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    iget-object v9, v9, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 246
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesFile:Ljava/io/File;

    invoke-static {v9}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    .line 248
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 249
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v9

    if-nez v9, :cond_2

    .line 250
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->TAG:Ljava/lang/String;

    const-string v10, "[loadGestures], Gesture library load fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    invoke-virtual {v9}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 252
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 254
    .local v4, en:[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v9, v4

    if-ge v6, v9, :cond_1

    .line 255
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 257
    new-instance v7, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;

    invoke-direct {v7, p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;-><init>(Lcom/htc/android/htcime/util/HandwritePatternToWord;)V

    .line 258
    .local v7, item:Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;
    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternName:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Gesture;

    .line 261
    .local v5, gs:Landroid/gesture/Gesture;
    const/16 v9, 0x40

    const/16 v10, 0x40

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 264
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesPicBG:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 v10, 0x40a0

    const/high16 v11, 0x40a0

    iget-object v12, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 265
    const/16 v9, 0x40

    const/16 v10, 0x40

    const/16 v11, 0xc

    const/16 v12, -0x100

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/gesture/Gesture;->toBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    iput-object v1, v7, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternPic:Landroid/graphics/Bitmap;

    .line 267
    const/4 v2, 0x0

    .line 269
    iget-object v9, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    iget-object v9, v9, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->_PatternList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 254
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v5           #gs:Landroid/gesture/Gesture;
    .end local v7           #item:Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 274
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v4           #en:[Ljava/lang/Object;
    .end local v6           #i:I
    .end local v8           #j:I
    :catch_0
    move-exception v3

    .line 275
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private removeAIrecord(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    iget-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->removeAIrecord(I)Z

    .line 364
    :cond_1
    return-void
.end method

.method private removePatternsCommit()V
    .locals 9

    .prologue
    .line 157
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 161
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 163
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 164
    .local v6, word_pos:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    invoke-virtual {v7, v6}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, delWord:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 170
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesFile:Ljava/io/File;

    invoke-static {v7}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    .line 172
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v7

    if-nez v7, :cond_3

    .line 175
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->TAG:Ljava/lang/String;

    const-string v8, "[removePatternsCommit], Gesture library load fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v3

    .line 180
    .local v3, en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7, v1}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 183
    iget-object v8, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/Gesture;

    invoke-virtual {v8, v1, v7}, Landroid/gesture/GestureLibrary;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 187
    :cond_4
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->lib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->save()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900b4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->showToast(Ljava/lang/String;)V

    .line 189
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->removeAIrecord(I)V

    goto/16 :goto_1

    .line 191
    :cond_5
    iget-object v7, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->TAG:Ljava/lang/String;

    const-string v8, "[removePatternsCommit], Gesture library save fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 201
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v1           #delWord:Ljava/lang/String;
    .end local v3           #en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #i:I
    .end local v6           #word_pos:I
    :cond_6
    invoke-direct {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->loadGestures()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected ItemClick(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    invoke-virtual {v0, p3}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->editPattern(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addNewAction()V
    .locals 1

    .prologue
    .line 123
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->editPattern(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method protected createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    invoke-direct {v0, p0, p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;-><init>(Lcom/htc/android/htcime/util/HandwritePatternToWord;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    return-object v0
.end method

.method protected deleteItemClick(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 151
    const v1, 0x7f0e0014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 152
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    invoke-virtual {p0, v0, p3}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->removeWordCommit(Landroid/widget/CheckBox;I)V

    .line 154
    return-void

    .line 152
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected leftCmdBtnAction()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->removePatternsCommit()V

    .line 130
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->normalMode()V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    .line 83
    .local v0, imm:Lcom/htc/android/htcime/HTCIMEService;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->currMode:I

    if-ne v3, v1, :cond_3

    .line 89
    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setHeaderBarText(I)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 95
    const v1, 0x20c01fc

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setLeftCmdBarBtnText(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setLeftCmdBarBtnEnabled(Z)V

    .line 102
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "data/com.htc.android.htcime/app_hwr/gestures"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesFile:Ljava/io/File;

    .line 104
    invoke-direct {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->loadGestures()V

    .line 106
    iget-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-nez v1, :cond_2

    .line 107
    new-instance v1, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-direct {v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 108
    iput-boolean v4, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    .line 110
    :cond_2
    return-void

    .line 91
    :cond_3
    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setHeaderBarMultiDelText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->finish()Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->m_bRecognizerHasBeenInitialized:Z

    .line 290
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onDestroy()V

    .line 291
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewActivity;->onStart()V

    .line 233
    invoke-direct {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->loadGestures()V

    .line 234
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->gesAdapter:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->notifyDataSetChanged()V

    .line 235
    return-void
.end method

.method protected removeWordCommit(Landroid/widget/CheckBox;I)V
    .locals 5
    .parameter "cb"
    .parameter "position"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 211
    .local v1, selectedCount:I
    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 213
    .local v0, enable:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 214
    const v2, 0x20c01fc

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    .line 217
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->delStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setLeftCmdBarBtnText(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->setLeftCmdBarBtnEnabled(Z)V

    .line 219
    return-void

    .line 208
    .end local v0           #enable:Z
    .end local v1           #selectedCount:I
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 211
    .restart local v1       #selectedCount:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected rightCmdBtnAction()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->normalMode()V

    .line 137
    return-void
.end method
