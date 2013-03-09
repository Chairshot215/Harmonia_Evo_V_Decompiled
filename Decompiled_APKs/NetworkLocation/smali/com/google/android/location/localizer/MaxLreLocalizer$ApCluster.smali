.class Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;
.super Ljava/lang/Object;
.source "MaxLreLocalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApCluster"
.end annotation


# instance fields
.field private apCluster:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->apCluster:Ljava/util/List;

    .line 510
    return-void
.end method

.method constructor <init>(Lcom/google/android/location/data/Pair;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, initiaEntry:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->apCluster:Ljava/util/List;

    .line 514
    iget-object v0, p0, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->apCluster:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    return-void
.end method


# virtual methods
.method public getApCluster()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->apCluster:Ljava/util/List;

    return-object v0
.end method
