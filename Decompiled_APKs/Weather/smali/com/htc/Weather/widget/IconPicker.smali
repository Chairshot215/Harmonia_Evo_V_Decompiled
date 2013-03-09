.class public Lcom/htc/Weather/widget/IconPicker;
.super Ljava/lang/Object;
.source "IconPicker.java"


# static fields
.field public static stateRes:Lcom/htc/weather/StateResources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "strId"

    .prologue
    .line 36
    invoke-static {p0}, Lcom/htc/Weather/widget/IconPicker;->setResources(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0, p1}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getForecastIconId(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/htc/Weather/widget/IconPicker;->setResources(Landroid/content/Context;)V

    .line 19
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getForecastLargeIconId(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/htc/Weather/widget/IconPicker;->setResources(Landroid/content/Context;)V

    .line 29
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static releaseResources()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0}, Lcom/htc/weather/StateResources;->clear()V

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    .line 49
    return-void
.end method

.method public static setResources(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 10
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    sput-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    .line 12
    sget-object v0, Lcom/htc/Weather/widget/IconPicker;->stateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v0, p0}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 14
    :cond_0
    return-void
.end method
