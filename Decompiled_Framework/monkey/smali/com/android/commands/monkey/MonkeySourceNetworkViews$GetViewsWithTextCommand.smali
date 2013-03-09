.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;
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
    name = "GetViewsWithTextCommand"
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

    sget v8, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    if-gez v8, :cond_1

    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v8, 0x0

    const-string v9, "Failed to connect to AccessibilityService, try restarting Monkey"

    invoke-direct {v6, v8, v9}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v8

    sget v9, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sConnectionId:I

    invoke-virtual {v8, v9, v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewTextInActiveWindow(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v2, v4, v0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;->query(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v10, v8}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_0
.end method
