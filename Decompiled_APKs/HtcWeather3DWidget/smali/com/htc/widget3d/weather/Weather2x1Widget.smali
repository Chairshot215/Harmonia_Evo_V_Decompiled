.class public Lcom/htc/widget3d/weather/Weather2x1Widget;
.super Lcom/htc/widget3d/weather/Weather2x2Widget;
.source "Weather2x1Widget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather2x2Widget;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 10
    const-string v0, "Port/Weather_2x1.m10"

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x1Widget;->SZ_DEFAULT_M10PATH:Ljava/lang/String;

    .line 11
    const-string v0, "Land/Weather_2x1_land.m10"

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather2x1Widget;->SZ_DEFAULT_M10PATH_LAND:Ljava/lang/String;

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget3d/weather/Weather2x1Widget;->mWidgetID:I

    .line 13
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/Weather2x2Widget;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
