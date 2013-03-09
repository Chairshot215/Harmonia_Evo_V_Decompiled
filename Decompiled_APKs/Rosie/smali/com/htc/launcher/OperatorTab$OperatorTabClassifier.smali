.class Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;
.super Ljava/lang/Object;
.source "OperatorTab.java"

# interfaces
.implements Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/OperatorTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperatorTabClassifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/OperatorTab;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/OperatorTab;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;->this$0:Lcom/htc/launcher/OperatorTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/OperatorTab;Lcom/htc/launcher/OperatorTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;-><init>(Lcom/htc/launcher/OperatorTab;)V

    return-void
.end method


# virtual methods
.method public classified(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 4
    .parameter "theApp"

    .prologue
    .line 79
    iget-object v3, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 81
    .local v1, theComp:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/htc/launcher/OperatorTab$OperatorTabClassifier;->this$0:Lcom/htc/launcher/OperatorTab;

    invoke-virtual {v3}, Lcom/htc/launcher/OperatorTab;->getAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/OperatorTabCore$Application;

    .line 83
    .local v2, tmp:Lcom/htc/launcher/OperatorTabCore$Application;
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore$Application;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const/4 v3, 0x1

    .line 87
    .end local v2           #tmp:Lcom/htc/launcher/OperatorTabCore$Application;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
