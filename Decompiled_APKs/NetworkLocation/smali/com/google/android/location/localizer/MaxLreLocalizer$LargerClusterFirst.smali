.class Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;
.super Ljava/lang/Object;
.source "MaxLreLocalizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargerClusterFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/localizer/MaxLreLocalizer;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/MaxLreLocalizer;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;->this$0:Lcom/google/android/location/localizer/MaxLreLocalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/MaxLreLocalizer;Lcom/google/android/location/localizer/MaxLreLocalizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;-><init>(Lcom/google/android/location/localizer/MaxLreLocalizer;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 541
    invoke-virtual {p2}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;->getApCluster()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    check-cast p1, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    .end local p1
    check-cast p2, Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/MaxLreLocalizer$LargerClusterFirst;->compare(Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;Lcom/google/android/location/localizer/MaxLreLocalizer$ApCluster;)I

    move-result v0

    return v0
.end method
