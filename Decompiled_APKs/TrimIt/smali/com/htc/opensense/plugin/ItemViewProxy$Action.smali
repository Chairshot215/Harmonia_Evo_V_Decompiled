.class public Lcom/htc/opensense/plugin/ItemViewProxy$Action;
.super Ljava/lang/Object;
.source "ItemViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/ItemViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field private static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public methodName:Ljava/lang/String;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    .line 39
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    return-void
.end method

.method static obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    .locals 5
    .parameter "name"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/htc/opensense/plugin/ItemViewProxy$Action;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 149
    .local v1, action:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    sget-object v3, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    monitor-enter v3

    .line 150
    :try_start_0
    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 151
    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-object v1, v0

    .line 153
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-nez v1, :cond_1

    .line 155
    new-instance v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    .end local v1           #action:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    invoke-direct {v1}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;-><init>()V

    .line 157
    .restart local v1       #action:Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    :cond_1
    iput-object p0, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    .line 158
    iput-object p1, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    .line 159
    iput-object p2, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    .line 161
    return-object v1

    .line 153
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method apply(Landroid/view/View;)V
    .locals 22
    .parameter "view"

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 52
    .local v17, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19

    .line 53
    :try_start_0
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 54
    .local v9, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-nez v9, :cond_1

    .line 58
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 60
    .local v8, method:Ljava/lang/reflect/Method;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8

    .line 61
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v10, methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_9

    .line 63
    :try_start_3
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v10

    .line 76
    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_0
    :goto_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "setText"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 77
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    .line 78
    .local v15, tv:Landroid/widget/TextView;
    new-instance v3, Lcom/htc/opensense/plugin/DrawableTextCallback;

    invoke-direct {v3, v15}, Lcom/htc/opensense/plugin/DrawableTextCallback;-><init>(Landroid/widget/TextView;)V

    .line 81
    .local v3, cb:Lcom/htc/opensense/plugin/DrawableTextCallback;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 82
    .local v13, oldText:Ljava/lang/CharSequence;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V

    .line 83
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 87
    .local v12, newText:Ljava/lang/CharSequence;
    invoke-static {v12, v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8

    .line 135
    .end local v3           #cb:Lcom/htc/opensense/plugin/DrawableTextCallback;
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v12           #newText:Ljava/lang/CharSequence;
    .end local v13           #oldText:Ljava/lang/CharSequence;
    .end local v15           #tv:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 54
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v18

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v18

    .line 64
    .restart local v8       #method:Ljava/lang/reflect/Method;
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_1
    move-exception v18

    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_9

    .line 91
    :catch_0
    move-exception v4

    move-object v9, v10

    .line 92
    .end local v8           #method:Ljava/lang/reflect/Method;
    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v4, e:Ljava/lang/SecurityException;
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_2
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 66
    .end local v4           #e:Ljava/lang/SecurityException;
    :cond_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 67
    .restart local v8       #method:Ljava/lang/reflect/Method;
    if-nez v8, :cond_0

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 70
    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_8

    .line 71
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v18

    .line 91
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 89
    .restart local v8       #method:Ljava/lang/reflect/Method;
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 93
    .end local v8           #method:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    move-object v10, v9

    .line 94
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v4, e:Ljava/lang/NoSuchMethodException;
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    .line 95
    .local v11, methods:[Ljava/lang/reflect/Method;
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/reflect/Method;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_4
    if-ge v6, v7, :cond_5

    aget-object v14, v2, v6

    .line 96
    .local v14, onemethod:Ljava/lang/reflect/Method;
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    .line 97
    .local v16, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    aget-object v18, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 101
    :cond_3
    const/16 v18, 0x1

    :try_start_b
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    if-nez v10, :cond_6

    .line 105
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_5

    .line 106
    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_c
    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_c

    .line 107
    :try_start_d
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 110
    :goto_5
    :try_start_e
    monitor-enter v9
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_c

    .line 111
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v9

    goto/16 :goto_1

    :catchall_3
    move-exception v18

    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v18
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_c

    .line 114
    :catch_3
    move-exception v5

    .line 115
    .local v5, e1:Ljava/lang/IllegalArgumentException;
    :goto_6
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 108
    .end local v5           #e1:Ljava/lang/IllegalArgumentException;
    :catchall_4
    move-exception v18

    :try_start_11
    monitor-exit v19
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v18
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_c

    .line 116
    :catch_4
    move-exception v5

    .line 117
    .local v5, e1:Ljava/lang/IllegalAccessException;
    :goto_7
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 118
    .end local v5           #e1:Ljava/lang/IllegalAccessException;
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_5
    move-exception v5

    move-object v9, v10

    .line 119
    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local v5, e1:Ljava/lang/reflect/InvocationTargetException;
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :goto_8
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 95
    .end local v5           #e1:Ljava/lang/reflect/InvocationTargetException;
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 126
    .end local v14           #onemethod:Ljava/lang/reflect/Method;
    .end local v16           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_5
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 127
    .end local v2           #arr$:[Ljava/lang/reflect/Method;
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v11           #methods:[Ljava/lang/reflect/Method;
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_6
    move-exception v4

    .line 129
    .local v4, e:Ljava/lang/IllegalArgumentException;
    :goto_9
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 130
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v4

    .line 131
    .local v4, e:Ljava/lang/IllegalAccessException;
    :goto_a
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 132
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v4

    .line 133
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    :goto_b
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 132
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v8       #method:Ljava/lang/reflect/Method;
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_9
    move-exception v4

    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_b

    .line 130
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_a
    move-exception v4

    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_a

    .line 127
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_b
    move-exception v4

    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_9

    .line 118
    .end local v8           #method:Ljava/lang/reflect/Method;
    .restart local v2       #arr$:[Ljava/lang/reflect/Method;
    .local v4, e:Ljava/lang/NoSuchMethodException;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v11       #methods:[Ljava/lang/reflect/Method;
    .restart local v14       #onemethod:Ljava/lang/reflect/Method;
    .restart local v16       #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_c
    move-exception v5

    goto :goto_8

    .line 116
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_d
    move-exception v5

    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_7

    .line 114
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_e
    move-exception v5

    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_6

    .line 93
    .end local v2           #arr$:[Ljava/lang/reflect/Method;
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v9           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v11           #methods:[Ljava/lang/reflect/Method;
    .end local v14           #onemethod:Ljava/lang/reflect/Method;
    .end local v16           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v8       #method:Ljava/lang/reflect/Method;
    .restart local v10       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catch_f
    move-exception v4

    goto/16 :goto_3

    .end local v8           #method:Ljava/lang/reflect/Method;
    .restart local v2       #arr$:[Ljava/lang/reflect/Method;
    .restart local v4       #e:Ljava/lang/NoSuchMethodException;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v11       #methods:[Ljava/lang/reflect/Method;
    .restart local v14       #onemethod:Ljava/lang/reflect/Method;
    .restart local v16       #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_6
    move-object v9, v10

    .end local v10           #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .restart local v9       #methodMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    goto :goto_5
.end method

.method recycle()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    .line 140
    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
