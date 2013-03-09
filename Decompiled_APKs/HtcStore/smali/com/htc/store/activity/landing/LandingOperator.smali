.class public Lcom/htc/store/activity/landing/LandingOperator;
.super Lcom/htc/store/activity/landing/LandingNavigation;
.source "LandingOperator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/store/activity/landing/LandingOperator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/LandingOperator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/htc/store/activity/landing/LandingNavigation;-><init>()V

    return-void
.end method


# virtual methods
.method getCategoryId()J
    .locals 4

    .prologue
    .line 19
    sget-object v0, Lcom/htc/store/activity/landing/LandingOperator;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "return LandingOperator Id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/htc/store/activity/landing/LandingNavigation;->onCreate(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method
