.class Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;
.super Ljava/lang/Object;
.source "PreloadedFrequentTab.java"

# interfaces
.implements Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/PreloadedFrequentTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadedFrequentTabClassifier"
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/htc/launcher/PreloadedFrequentTab;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/PreloadedFrequentTab;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->this$0:Lcom/htc/launcher/PreloadedFrequentTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/PreloadedFrequentTab;Lcom/htc/launcher/PreloadedFrequentTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;-><init>(Lcom/htc/launcher/PreloadedFrequentTab;)V

    return-void
.end method

.method private inPreloadedList(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 4
    .parameter "app"

    .prologue
    .line 74
    iget-object v3, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 76
    .local v0, compName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->this$0:Lcom/htc/launcher/PreloadedFrequentTab;

    invoke-virtual {v3}, Lcom/htc/launcher/PreloadedFrequentTab;->getAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/OperatorTabCore$Application;

    .line 77
    .local v2, in:Lcom/htc/launcher/OperatorTabCore$Application;
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore$Application;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x1

    .line 82
    .end local v2           #in:Lcom/htc/launcher/OperatorTabCore$Application;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public classified(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 2
    .parameter "app"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->count:I

    iget-object v1, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->this$0:Lcom/htc/launcher/PreloadedFrequentTab;

    #getter for: Lcom/htc/launcher/PreloadedFrequentTab;->CAPACITY:I
    invoke-static {v1}, Lcom/htc/launcher/PreloadedFrequentTab;->access$200(Lcom/htc/launcher/PreloadedFrequentTab;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    iget v0, p1, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->inPreloadedList(Lcom/htc/launcher/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget v0, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->count:I

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabClassifier;->count:I

    .line 57
    return-void
.end method
