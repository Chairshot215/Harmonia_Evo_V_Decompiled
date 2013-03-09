.class public Lcom/htc/dockmode/widget/FlipUtils;
.super Ljava/lang/Object;
.source "FlipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFilterBitmap(Landroid/view/ViewGroup;Z)V
    .locals 6
    .parameter "view"
    .parameter "bFilter"

    .prologue
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 12
    .local v0, clazz:Ljava/lang/Class;
    const-string v5, "getCachePatint"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    .line 14
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #paint:Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v1

    .line 17
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 15
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
