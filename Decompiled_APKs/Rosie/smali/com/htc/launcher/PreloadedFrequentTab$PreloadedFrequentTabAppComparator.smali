.class Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;
.super Ljava/lang/Object;
.source "PreloadedFrequentTab.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/PreloadedFrequentTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadedFrequentTabAppComparator"
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
.field final synthetic this$0:Lcom/htc/launcher/PreloadedFrequentTab;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/PreloadedFrequentTab;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;->this$0:Lcom/htc/launcher/PreloadedFrequentTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/PreloadedFrequentTab;Lcom/htc/launcher/PreloadedFrequentTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;-><init>(Lcom/htc/launcher/PreloadedFrequentTab;)V

    return-void
.end method

.method private getPriority(Lcom/htc/launcher/ApplicationInfo;)I
    .locals 4
    .parameter "app"

    .prologue
    .line 109
    iget-object v3, p1, Lcom/htc/launcher/FxShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 111
    .local v0, compName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;->this$0:Lcom/htc/launcher/PreloadedFrequentTab;

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

    .line 112
    .local v2, in:Lcom/htc/launcher/OperatorTabCore$Application;
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore$Application;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget v3, v2, Lcom/htc/launcher/OperatorTabCore$Application;->priority:I

    .line 117
    .end local v2           #in:Lcom/htc/launcher/OperatorTabCore$Application;
    :goto_0
    return v3

    :cond_1
    const v3, 0x7fffffff

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 6
    .parameter "l"
    .parameter "r"

    .prologue
    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, ret:I
    iget v3, p1, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    if-nez v3, :cond_0

    iget v3, p2, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    if-eqz v3, :cond_2

    .line 94
    :cond_0
    iget v3, p2, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    iget v4, p1, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    sub-int v2, v3, v4

    .line 101
    :goto_0
    if-nez v2, :cond_1

    .line 103
    sget-object v3, Lcom/htc/launcher/Utilities;->sCollator:Ljava/text/Collator;

    iget-object v4, p1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v5, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 105
    :cond_1
    return v2

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;->getPriority(Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    .line 98
    .local v0, l_priority:I
    invoke-direct {p0, p2}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;->getPriority(Lcom/htc/launcher/ApplicationInfo;)I

    move-result v1

    .line 99
    .local v1, r_priority:I
    sub-int v2, v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/PreloadedFrequentTab$PreloadedFrequentTabAppComparator;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
