.class public Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;
.super Ljava/lang/Object;
.source "FxWeatherVideoScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MarkStamp"
.end annotation


# instance fields
.field FRAME_L_FULL:I

.field FRAME_L_HALF:I

.field FRAME_P_FULL:I

.field FRAME_P_HALF:I

.field display_height:I

.field display_width:I

.field final synthetic this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;


# direct methods
.method public constructor <init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1343
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    .line 1345
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    .line 1346
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    .line 1347
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    .line 1348
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_width:I

    .line 1349
    iput v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    return-void
.end method


# virtual methods
.method public getDefValue(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 1352
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1354
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_width:I

    .line 1356
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    .line 1364
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_HALF:I

    .line 1366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_HALF:I

    .line 1368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_P_FULL:I

    .line 1370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->FRAME_L_FULL:I

    .line 1372
    return-void
.end method

.method public getDisplay(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 1375
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1377
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_width:I

    .line 1379
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$MarkStamp;->display_height:I

    .line 1385
    :cond_0
    return-void
.end method
