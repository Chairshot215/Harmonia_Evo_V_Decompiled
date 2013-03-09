.class public Lcom/htc/opensense/plugin/DrawableTextCallback;
.super Ljava/lang/Object;
.source "DrawableTextCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableTextCallback"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "who"

    .prologue
    .line 29
    instance-of v5, p1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-nez v5, :cond_0

    instance-of v5, p1, Lcom/htc/graphics/drawable/RecyclableUrlDrawable;

    if-eqz v5, :cond_2

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isDimChanged"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 34
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 35
    .local v4, result:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 36
    .local v2, isDimChanged:Z
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 37
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #result:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 40
    :cond_1
    if-eqz v2, :cond_3

    .line 41
    const-string v5, "DrawableTextCallback"

    const-string v6, "UrlDrawable requests TextView.setText() again"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-object v0, p1

    .line 45
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v5, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 68
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #isDimChanged:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_2
    :goto_0
    return-void

    .line 48
    .restart local v2       #isDimChanged:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_3
    const-string v5, "DrawableTextCallback"

    const-string v6, "UrlDrawable requests self.invalidate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v5, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 52
    .end local v2           #isDimChanged:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 58
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 60
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 72
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 76
    return-void
.end method
