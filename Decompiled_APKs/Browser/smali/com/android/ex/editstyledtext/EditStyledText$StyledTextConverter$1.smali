.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    .line 1928
    const-string v11, "EditStyledText"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- sethtml: src="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const-string v11, "content://"

    invoke-virtual {p1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1930
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1932
    .local v8, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1933
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 1934
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1935
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1937
    .local v5, is:Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1938
    .local v6, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1939
    const/4 v11, 0x0

    invoke-static {v5, v11, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1940
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1941
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1943
    iget v9, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1944
    .local v9, width:I
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1945
    .local v4, height:I
    iget v11, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v12, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v12, v12, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I
    invoke-static {v12}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1946
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v9

    .line 1947
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    iget-object v11, v11, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    #calls: Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v11

    mul-int/2addr v11, v4

    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v4, v11, v12

    .line 1948
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1949
    .local v7, padding:Landroid/graphics/Rect;
    const/4 v11, 0x0

    invoke-static {v5, v7, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1953
    .end local v7           #padding:Landroid/graphics/Rect;
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v2, v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1955
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v2, v11, v12, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1956
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1968
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #height:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #width:I
    :goto_1
    return-object v2

    .line 1951
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #height:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #width:I
    :cond_0
    :try_start_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1958
    .end local v4           #height:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #opt:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #width:I
    :catch_0
    move-exception v3

    .line 1959
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v11, "EditStyledText"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- set html: Failed to loaded content "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v10

    .line 1960
    goto :goto_1

    .line 1961
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1962
    .local v3, e:Ljava/lang/OutOfMemoryError;
    :goto_3
    const-string v11, "EditStyledText"

    const-string v12, "OutOfMemoryError"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v11, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter$1;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    #getter for: Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;
    invoke-static {v11}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/android/ex/editstyledtext/EditStyledText;->setHint(I)V

    move-object v2, v10

    .line 1965
    goto :goto_1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    move-object v2, v10

    .line 1968
    goto :goto_1

    .line 1961
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #height:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #opt:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #width:I
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1958
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method
