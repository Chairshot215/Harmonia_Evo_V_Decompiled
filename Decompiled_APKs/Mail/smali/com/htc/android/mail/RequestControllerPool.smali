.class public Lcom/htc/android/mail/RequestControllerPool;
.super Ljava/lang/Object;
.source "RequestControllerPool.java"


# static fields
.field private static mRequestControllerPool:Lcom/htc/android/mail/RequestControllerPool;


# instance fields
.field private mRequestControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/android/mail/AbsRequestController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/RequestControllerPool;->mRequestControllerPool:Lcom/htc/android/mail/RequestControllerPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/RequestControllerPool;->mRequestControllerMap:Ljava/util/Map;

    .line 21
    return-void
.end method
