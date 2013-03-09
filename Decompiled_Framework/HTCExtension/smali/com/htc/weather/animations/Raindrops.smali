.class public Lcom/htc/weather/animations/Raindrops;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Raindrops.java"


# static fields
.field private static DEFAULT_RAINDROPS:I


# instance fields
.field private raindrop01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop08:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop09:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop10:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop11:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop12:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop15:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop17:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop18:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop19:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop20:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop21:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrop22:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private wiper:Lcom/htc/weather/animations/Wiper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    sput v0, Lcom/htc/weather/animations/Raindrops;->DEFAULT_RAINDROPS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Raindrops$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$1;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$2;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$3;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$4;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$5;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$6;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$7;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$7;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop08:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$8;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$8;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop09:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$9;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$9;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop10:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$10;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$10;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop11:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$11;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$11;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop12:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$12;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$12;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop15:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$13;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$13;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop17:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$14;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$14;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop18:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$15;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$15;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop19:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$16;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$16;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop20:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$17;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$17;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop21:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$18;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$18;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop22:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/16 v0, -0x14

    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    new-instance v0, Lcom/htc/weather/animations/Wiper;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Wiper;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->wiper:Lcom/htc/weather/animations/Wiper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 10

    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    new-instance v0, Lcom/htc/weather/animations/Raindrops$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$1;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$2;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$3;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$4;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$5;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$6;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$7;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$7;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop08:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$8;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$8;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop09:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$9;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$9;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop10:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$10;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$10;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop11:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$11;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$11;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop12:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$12;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$12;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop15:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$13;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$13;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop17:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$14;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$14;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop18:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$15;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$15;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop19:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$16;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$16;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop20:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$17;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$17;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop21:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Raindrops$18;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Raindrops$18;-><init>(Lcom/htc/weather/animations/Raindrops;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->raindrop22:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/16 v0, -0x14

    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_x_:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/htc/weather/animations/WeatherAnimationData;->shift_y_:I

    new-instance v0, Lcom/htc/weather/animations/Wiper;

    const-wide/16 v8, 0x3c

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Wiper;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Raindrops;->wiper:Lcom/htc/weather/animations/Wiper;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 6

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->wiper:Lcom/htc/weather/animations/Wiper;

    invoke-virtual {v4}, Lcom/htc/weather/animations/Wiper;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    array-length v4, v3

    sget v5, Lcom/htc/weather/animations/Raindrops;->DEFAULT_RAINDROPS:I

    add-int/2addr v4, v5

    new-array v2, v4, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    aput-object v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop08:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop09:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop10:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop11:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop12:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop15:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop17:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop18:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop19:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop20:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop21:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Raindrops;->raindrop22:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    return-object v2
.end method

.method public setRainDrop(Landroid/view/animation/AnimationSet;JJ)V
    .locals 7

    sub-long/2addr p4, p2

    const-wide/16 v4, 0x4

    sub-long/2addr p4, v4

    const/4 v4, 0x4

    new-array v2, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    const/4 v4, 0x2

    const v5, 0x3f7d70a4

    iget v6, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v5, v6

    aput v5, v2, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    aput v5, v2, v4

    const/4 v4, 0x4

    new-array v3, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const v5, 0x3f7d70a4

    iget v6, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    const v5, 0x3f7d70a4

    iget v6, p0, Lcom/htc/weather/animations/WeatherAnimationData;->alpha_:F

    mul-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x4

    new-array v1, v4, [J

    const/4 v4, 0x0

    const-wide/16 v5, 0x21

    mul-long/2addr v5, p2

    aput-wide v5, v1, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0xa5

    aput-wide v5, v1, v4

    const/4 v4, 0x2

    const-wide/16 v5, 0x21

    mul-long/2addr v5, p4

    aput-wide v5, v1, v4

    const/4 v4, 0x3

    const-wide/16 v5, 0x21

    aput-wide v5, v1, v4

    new-instance v0, Lcom/htc/weather/animations/compoundAlphaAnimation;

    array-length v4, v2

    invoke-direct {v0, v4, v2, v3}, Lcom/htc/weather/animations/compoundAlphaAnimation;-><init>(I[F[F)V

    invoke-virtual {v0, v1}, Lcom/htc/weather/animations/compoundAlphaAnimation;->setDuration([J)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
