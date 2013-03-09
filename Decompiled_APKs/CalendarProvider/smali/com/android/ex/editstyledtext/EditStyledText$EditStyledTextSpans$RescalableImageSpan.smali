.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;
.super Landroid/text/style/ImageSpan;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalableImageSpan"
.end annotation


# instance fields
.field private final MAXWIDTH:I

.field mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field public mIntrinsicHeight:I

.field public mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resourceId"
    .parameter "maxwidth"

    .prologue
    const/4 v0, -0x1

    .line 2617
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 2605
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    .line 2606
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    .line 2618
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    .line 2619
    iput p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    .line 2620
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "maxwidth"

    .prologue
    const/4 v0, -0x1

    .line 2610
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2605
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    .line 2606
    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    .line 2611
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    .line 2612
    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    .line 2613
    iput p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    .line 2614
    return-void
.end method

.method private rescaleBigImage(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "image"

    .prologue
    const/4 v5, 0x0

    .line 2679
    const-string v2, "EditStyledTextSpan"

    const-string v3, "--- rescaleBigImage:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-gez v2, :cond_0

    .line 2695
    :goto_0
    return-void

    .line 2684
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2685
    .local v1, image_width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2687
    .local v0, image_height:I
    const-string v2, "EditStyledTextSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- rescaleBigImage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-le v1, v2, :cond_1

    .line 2691
    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    .line 2692
    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    mul-int/2addr v2, v0

    div-int v0, v2, v1

    .line 2694
    :cond_1
    invoke-virtual {p1, v5, v5, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2624
    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    .line 2625
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2666
    :goto_0
    return-object v7

    .line 2626
    :cond_0
    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    if-eqz v8, :cond_2

    .line 2627
    const/4 v0, 0x0

    .line 2628
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2630
    :try_start_0
    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2632
    .local v3, is:Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2633
    .local v4, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2634
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2635
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2636
    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2638
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2639
    .local v6, width:I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2640
    .local v2, height:I
    iput v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    .line 2641
    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    .line 2642
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-le v8, v9, :cond_1

    .line 2643
    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    .line 2644
    iget v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    mul-int/2addr v8, v2

    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v2, v8, v9

    .line 2645
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2646
    .local v5, padding:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-static {v3, v5, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2650
    .end local v5           #padding:Landroid/graphics/Rect;
    :goto_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2651
    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2652
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2666
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #width:I
    :goto_2
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2648
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #height:I
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #width:I
    :cond_1
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 2653
    .end local v2           #height:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #width:I
    :catch_0
    move-exception v1

    .line 2654
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "EditStyledTextSpan"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to loaded content "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2656
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2657
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "EditStyledTextSpan"

    const-string v9, "OutOfMemoryError"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2661
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-super {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2662
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->rescaleBigImage(Landroid/graphics/drawable/Drawable;)V

    .line 2663
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicWidth:I

    .line 2664
    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->mIntrinsicHeight:I

    goto :goto_2
.end method

.method public isOverSize()Z
    .locals 2

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->MAXWIDTH:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
