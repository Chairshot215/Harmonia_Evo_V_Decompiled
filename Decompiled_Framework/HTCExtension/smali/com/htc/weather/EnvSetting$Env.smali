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

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x140

    iput v0, p0, Lcom/htc/weather/EnvSetting$Env;->width_:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/htc/weather/EnvSetting$Env;->height_:I

    iput v2, p0, Lcom/htc/weather/EnvSetting$Env;->offset_x_:I

    iput v2, p0, Lcom/htc/weather/EnvSetting$Env;->offset_y_:I

    iput v1, p0, Lcom/htc/weather/EnvSetting$Env;->scale_x_:F

    iput v1, p0, Lcom/htc/weather/EnvSetting$Env;->scale_y_:F

    return-void
.end method
