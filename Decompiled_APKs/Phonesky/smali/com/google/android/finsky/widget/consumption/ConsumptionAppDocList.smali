.class public Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
.super Ljava/util/ArrayList;
.source "ConsumptionAppDocList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEWEST_FIRST:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ba8f2c820b780f2L


# instance fields
.field private final mBackend:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    new-instance v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$2;

    invoke-direct {v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->NEWEST_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "backend"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->mBackend:I

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .parameter "backend"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->addAll(Ljava/util/Collection;)Z

    .line 34
    return-void
.end method

.method public static createFromBundles(ILjava/util/List;)Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    .locals 4
    .parameter "backend"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, docBundles:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    .local v2, newData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 39
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    new-instance v3, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v3, p0, v2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;-><init>(ILjava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/services/ConsumptionAppDoc;)Z
    .locals 3
    .parameter "doc"

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string v1, "Not adding a null document"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->add(Lcom/google/android/finsky/services/ConsumptionAppDoc;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/google/android/finsky/services/ConsumptionAppDoc;>;"
    const/4 v2, 0x1

    .line 57
    .local v2, success:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .line 58
    .local v0, doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->add(Lcom/google/android/finsky/services/ConsumptionAppDoc;)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0

    .line 60
    .end local v0           #doc:Lcom/google/android/finsky/services/ConsumptionAppDoc;
    :cond_0
    return v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getBackend()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->mBackend:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->mBackend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    return-void
.end method
