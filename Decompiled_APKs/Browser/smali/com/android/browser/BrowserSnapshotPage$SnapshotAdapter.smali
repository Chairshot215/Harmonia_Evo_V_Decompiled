.class Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BrowserSnapshotPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserSnapshotPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotAdapter"
.end annotation


# instance fields
.field private mAnimateId:J

.field private mAnimation:Landroid/animation/AnimatorSet;

.field private mAnimationTarget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 217
    const v0, 0x7f040029

    invoke-direct {p0, p1, v0, p2, v5}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 218
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    .line 219
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 222
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 223
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 224
    iget-object v0, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter$1;-><init>(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    return-void

    .line 219
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public animateIn(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    .line 248
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 252
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 253
    .local v4, id:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimateId:J

    cmp-long v15, v4, v15

    if-nez v15, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_1

    .line 255
    const/4 v6, 0x0

    .line 256
    .local v6, scale:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getScaleX()F

    move-result v6

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    const/high16 v16, 0x3f80

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    .line 259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    const/high16 v16, 0x3f80

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    .line 261
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleY(F)V

    .line 264
    .end local v6           #scale:F
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 265
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimationTarget:Landroid/view/View;

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v15

    if-nez v15, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->mAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 271
    :cond_2
    const v15, 0x7f0d001d

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 272
    .local v11, thumbnail:Landroid/widget/ImageView;
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 273
    .local v10, thumbBlob:[B
    if-nez v10, :cond_4

    .line 274
    const v15, 0x7f02000e

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :goto_0
    const v15, 0x7f0d0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 281
    .local v14, title:Landroid/widget/TextView;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v15, 0x7f0d0066

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 283
    .local v7, size:Landroid/widget/TextView;
    if-eqz v7, :cond_3

    .line 284
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 285
    .local v8, stateLen:I
    const-string v15, "%.2fMB"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    int-to-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x4480

    div-float v18, v18, v19

    const/high16 v19, 0x4480

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .end local v8           #stateLen:I
    :cond_3
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 288
    .local v12, timestamp:J
    const v15, 0x7f0d0065

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    .local v2, date:Landroid/widget/TextView;
    const/4 v15, 0x3

    invoke-static {v15}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 290
    .local v3, dateFormat:Ljava/text/DateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void

    .line 276
    .end local v2           #date:Landroid/widget/TextView;
    .end local v3           #dateFormat:Ljava/text/DateFormat;
    .end local v7           #size:Landroid/widget/TextView;
    .end local v12           #timestamp:J
    .end local v14           #title:Landroid/widget/TextView;
    :cond_4
    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 278
    .local v9, thumbBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1
    .parameter "position"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserSnapshotPage$SnapshotAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
