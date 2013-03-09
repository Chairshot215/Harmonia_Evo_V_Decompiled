.class public abstract Lcom/htc/Weather/animation/AbstractWeatherAnim;
.super Ljava/lang/Object;
.source "AbstractWeatherAnim.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractWeatherAnim"

.field protected static mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "nop"

    sput-object v0, Lcom/htc/Weather/animation/AbstractWeatherAnim;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changeCondition(ILjava/lang/String;)Z
.end method

.method public abstract changeConfig(ZZ)Z
.end method

.method public abstract getCurrentPath()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/RelativeLayout;ZZ)I
.end method

.method public abstract pause()I
.end method

.method public abstract play(ILjava/lang/String;)I
.end method

.method public abstract prepare()I
.end method

.method public abstract release()I
.end method

.method public abstract reset()I
.end method

.method public abstract resume()I
.end method

.method public abstract stop()I
.end method
