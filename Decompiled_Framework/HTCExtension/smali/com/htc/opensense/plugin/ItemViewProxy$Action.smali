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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    return-void
.end method

.method static obtain(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Lcom/htc/opensense/plugin/ItemViewProxy$Action;
    .locals 5
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

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    move-object v1, v0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;

    invoke-direct {v1}, Lcom/htc/opensense/plugin/ItemViewProxy$Action;-><init>()V

    :cond_1
    iput-object p0, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    iput-object p1, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    iput-object p2, v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    return-object v1

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

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19

    :try_start_0
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

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

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_9

    :try_start_3
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v9, v10

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

    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    new-instance v3, Lcom/htc/opensense/plugin/DrawableTextCallback;

    invoke-direct {v3, v15}, Lcom/htc/opensense/plugin/DrawableTextCallback;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V

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

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->setUrlDrawableSpansCallback(Ljava/lang/CharSequence;Lcom/htc/opensense/plugin/DrawableTextCallback;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_1
    return-void

    :catchall_0
    move-exception v18

    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v18

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

    :catch_0
    move-exception v4

    move-object v9, v10

    :goto_2
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :cond_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    if-nez v8, :cond_0

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

    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v18

    :catch_1
    move-exception v4

    goto :goto_2

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

    :catch_2
    move-exception v4

    move-object v10, v9

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v2, v11

    array-length v7, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_5

    aget-object v14, v2, v6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

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

    if-nez v10, :cond_6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    sget-object v19, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    monitor-enter v19
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_c

    :try_start_d
    sget-object v18, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->mMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :goto_5
    :try_start_e
    monitor-enter v9
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_c

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :catch_3
    move-exception v5

    :goto_6
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

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

    :catch_4
    move-exception v5

    :goto_7
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :catch_5
    move-exception v5

    move-object v9, v10

    :goto_8
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_5
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :catch_6
    move-exception v4

    :goto_9
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :catch_7
    move-exception v4

    :goto_a
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :catch_8
    move-exception v4

    :goto_b
    new-instance v18, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/htc/opensense/plugin/ItemViewProxy$ViewProxyException;-><init>(Ljava/lang/Exception;)V

    throw v18

    :catch_9
    move-exception v4

    move-object v9, v10

    goto :goto_b

    :catch_a
    move-exception v4

    move-object v9, v10

    goto :goto_a

    :catch_b
    move-exception v4

    move-object v9, v10

    goto :goto_9

    :catch_c
    move-exception v5

    goto :goto_8

    :catch_d
    move-exception v5

    move-object v9, v10

    goto :goto_7

    :catch_e
    move-exception v5

    move-object v9, v10

    goto :goto_6

    :catch_f
    move-exception v4

    goto/16 :goto_3

    :cond_6
    move-object v9, v10

    goto :goto_5
.end method

.method recycle()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->methodName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->type:Ljava/lang/Class;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->value:Ljava/lang/Object;

    sget-object v1, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/opensense/plugin/ItemViewProxy$Action;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
