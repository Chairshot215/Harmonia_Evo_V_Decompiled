.class public Lcom/htc/ml/PhotoLockScreen/LiveGallery;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenService;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "brian_LiveGallery_IdleScreen"

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery;->sLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onCreateEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {v0, p0, p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;-><init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    return-object v0
.end method
