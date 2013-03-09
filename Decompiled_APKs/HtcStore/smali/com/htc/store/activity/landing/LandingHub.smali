.class public Lcom/htc/store/activity/landing/LandingHub;
.super Lcom/htc/store/activity/landing/LandingNavigation;
.source "LandingHub.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/htc/store/activity/landing/LandingHub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/LandingHub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;-><init>()V

    return-void
.end method


# virtual methods
.method getCategoryId()J
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lcom/htc/store/activity/landing/LandingHub;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "return LandingHub Id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/htc/store/activity/landing/LandingNavigation;->onPause()V

    .line 13
    return-void
.end method
