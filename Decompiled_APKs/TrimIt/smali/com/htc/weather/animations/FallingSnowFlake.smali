.class public Lcom/htc/weather/animations/FallingSnowFlake;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "FallingSnowFlake.java"


# instance fields
.field private fallSnowflake01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallSnowflake02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallSnowflake03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private mPivotX:F

.field private mPivotY:F

.field private mResName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IFFLcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 10
    .parameter "context"
    .parameter "snowResID"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "env"
    .parameter "shift_x"
    .parameter "shift_y"
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "alpha"
    .parameter "delay"

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-wide/from16 v8, p11

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 21
    const-string v0, "fall_snowflake"

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mResName:Ljava/lang/String;

    .line 22
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotX:F

    .line 23
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotY:F

    .line 51
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$1;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 140
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$2;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 228
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$3;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 39
    iput p3, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotX:F

    .line 40
    iput p4, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotY:F

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 2
    .parameter "context"
    .parameter "env"

    .prologue
    const/high16 v1, 0x3f00

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 21
    const-string v0, "fall_snowflake"

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mResName:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotX:F

    .line 23
    iput v1, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotY:F

    .line 51
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$1;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 140
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$2;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 228
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$3;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 2
    .parameter "context"
    .parameter "env"
    .parameter "shift_x"
    .parameter "shift_y"
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "alpha"
    .parameter "delay"

    .prologue
    const/high16 v1, 0x3f00

    .line 31
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 21
    const-string v0, "fall_snowflake"

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mResName:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotX:F

    .line 23
    iput v1, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotY:F

    .line 51
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$1;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 140
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$2;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 228
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/FallingSnowFlake$3;-><init>(Lcom/htc/weather/animations/FallingSnowFlake;)V

    iput-object v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/htc/weather/animations/FallingSnowFlake;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotX:F

    return v0
.end method

.method static synthetic access$100(Lcom/htc/weather/animations/FallingSnowFlake;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/weather/animations/FallingSnowFlake;->mPivotY:F

    return v0
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/FallingSnowFlake;->fallSnowflake03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method
