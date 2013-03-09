.class public Lcom/htc/weather/EnvSetting$Env;
.super Ljava/lang/Object;
.source "EnvSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weather/EnvSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Env"
.end annotation


# instance fields
.field public height_:I

.field public offset_x_:I

.field public offset_y_:I

.field public scale_x_:F

.field public scale_y_:F

.field public width_:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x140

    iput v0, p0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    .line 34
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    .line 35
    iput v2, p0, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    .line 36
    iput v2, p0, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    .line 37
    iput v1, p0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    .line 38
    iput v1, p0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    .line 39
    return-void
.end method
