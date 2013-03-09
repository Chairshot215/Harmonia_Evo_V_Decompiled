.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryViewCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v8, :cond_6

    sget v7, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-gez v7, :cond_0

    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Failed to connect to AccessibilityService, try restarting Monkey"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    :goto_0
    return-object v7

    :cond_0
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    if-nez v4, :cond_1

    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "No accessibility event has occured yet"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v10}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "viewid"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    :try_start_0
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v4}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$300(Ljava/lang/String;Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Lcom/android/commands/monkey/MonkeyViewException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v5, :cond_4

    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v8, "Node with given ID does not exist"

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v7, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyViewException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "accessibilityids"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    :try_start_1
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    #calls: Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v7, v8}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {p1, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0

    :cond_3
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->access$500()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;

    if-eqz v2, :cond_5

    invoke-interface {v2, v5, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0

    :cond_6
    sget-object v7, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto/16 :goto_0
.end method
