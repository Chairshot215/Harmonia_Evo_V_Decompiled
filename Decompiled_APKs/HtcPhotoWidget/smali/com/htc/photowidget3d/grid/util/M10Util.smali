.class public Lcom/htc/photowidget3d/grid/util/M10Util;
.super Ljava/lang/Object;
.source "M10Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetListItemScenePath(I)Ljava/lang/String;
    .locals 3
    .parameter "orientationType"

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    .local v0, scenePath:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    .line 35
    const-string v0, "Port/Photo_grid_4x4_listItem.m10"

    .line 43
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetScenePath, scenePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 45
    return-object v0

    .line 40
    :cond_0
    const-string v0, "Land/Photo_grid_4x4_listItem.m10"

    goto :goto_0
.end method

.method public static getWidgetScenePath(I)Ljava/lang/String;
    .locals 3
    .parameter "orientationType"

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 12
    .local v0, scenePath:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    .line 15
    const-string v0, "Port/Photo_grid_4x4_listView.m10"

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetScenePath, scenePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/photowidget3d/grid/util/HtcLog;->log_d(Ljava/lang/String;)V

    .line 25
    return-object v0

    .line 20
    :cond_0
    const-string v0, "Land/Photo_grid_4x4_listView.m10"

    goto :goto_0
.end method
