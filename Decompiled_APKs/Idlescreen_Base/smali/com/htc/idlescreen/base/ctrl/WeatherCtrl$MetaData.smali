.class public Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;
.super Ljava/lang/Object;
.source "WeatherCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaData"
.end annotation


# instance fields
.field public CityName:Ljava/lang/String;

.field public CurCondition:I

.field public CurTemp:Ljava/lang/String;

.field public HTemp:Ljava/lang/String;

.field public LTemp:Ljava/lang/String;

.field public UpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CityName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->HTemp:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->LTemp:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurTemp:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->CurCondition:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MetaData;->UpdateTime:J

    return-void
.end method
