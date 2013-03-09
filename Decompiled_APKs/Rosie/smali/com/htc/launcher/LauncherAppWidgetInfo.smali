.class Lcom/htc/launcher/LauncherAppWidgetInfo;
.super Lcom/htc/launcher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# instance fields
.field appWidgetComponent:Landroid/content/ComponentName;

.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/htc/launcher/ItemInfo;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 43
    iput-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/launcher/ItemInfo;->itemType:I

    .line 46
    iput p1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 47
    return-void
.end method


# virtual methods
.method public createItem(Lcom/htc/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/htc/launcher/Draggee;
    .locals 1
    .parameter "launcher"
    .parameter "container"

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, ""

    .line 63
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    const-string v0, ""

    .line 71
    .local v0, ret:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method public getUlog()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, "none"

    .line 79
    .local v0, appTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", AppWidget"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/ItemInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, ret:Ljava/lang/String;
    iget v2, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/htc/launcher/ItemInfo;->screen:I

    sget v3, Lcom/htc/launcher/LauncherAppWidgetInfo;->max_screen:I

    if-le v2, v3, :cond_2

    .line 91
    :cond_1
    const-string v1, ""

    .line 93
    :cond_2
    return-object v1
.end method

.method public isTWM_Widget()Z
    .locals 4

    .prologue
    .line 97
    const-string v0, "com.taiwanmobile.pt.stock/com.taiwanmobile.pt.stock.appwidget.StockWidget"

    .line 98
    .local v0, TWM_WIDGET1:Ljava/lang/String;
    const-string v1, "com.taiwanmobile.pt.news/com.taiwanmobile.pt.news.appwidget.newsWidget"

    .line 99
    .local v1, TWM_WIDGET2:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, currentWidgetName:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/htc/launcher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 52
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v0, "intent"

    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
