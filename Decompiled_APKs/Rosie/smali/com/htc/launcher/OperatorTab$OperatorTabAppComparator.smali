.class Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;
.super Ljava/lang/Object;
.source "OperatorTab.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/OperatorTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorTabAppComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/launcher/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/OperatorTab;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/OperatorTab;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;->this$0:Lcom/htc/launcher/OperatorTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/OperatorTab;Lcom/htc/launcher/OperatorTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;-><init>(Lcom/htc/launcher/OperatorTab;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 8
    .parameter "left"
    .parameter "right"

    .prologue
    const v7, 0x7fffffff

    .line 95
    const v2, 0x7fffffff

    .line 96
    .local v2, leftPriority:I
    const v3, 0x7fffffff

    .line 98
    .local v3, rightPriority:I
    iget-object v5, p0, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;->this$0:Lcom/htc/launcher/OperatorTab;

    invoke-virtual {v5}, Lcom/htc/launcher/OperatorTab;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/launcher/OperatorTabCore$Application;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/launcher/OperatorTabCore$Application;

    .line 100
    .local v4, tmp:Lcom/htc/launcher/OperatorTabCore$Application;
    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabCore$Application;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    iget v2, v4, Lcom/htc/launcher/OperatorTabCore$Application;->priority:I

    .line 103
    :cond_1
    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabCore$Application;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p2, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    iget v3, v4, Lcom/htc/launcher/OperatorTabCore$Application;->priority:I

    .line 106
    :cond_2
    if-eq v7, v2, :cond_0

    if-eq v7, v3, :cond_0

    .line 111
    .end local v4           #tmp:Lcom/htc/launcher/OperatorTabCore$Application;
    :cond_3
    sub-int v5, v2, v3

    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/OperatorTab$OperatorTabAppComparator;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
