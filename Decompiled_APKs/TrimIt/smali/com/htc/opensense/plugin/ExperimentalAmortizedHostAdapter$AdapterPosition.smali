.class public Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;
.super Ljava/lang/Object;
.source "ExperimentalAmortizedHostAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_POSITION:I


# instance fields
.field public observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

.field public position:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->setData(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V
    .locals 0
    .parameter "observer"
    .parameter "pos"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->setData(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V

    .line 45
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    .line 60
    return-void
.end method

.method public compareTo(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemOrderKey(I)Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v3, p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemOrderKey(I)Ljava/lang/Comparable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ExperimentalAmortizedHostAdapter"

    const-string v2, "listitems cannot be compared!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->compareTo(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v3, p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    .line 79
    .local v0, other:Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;
    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iget v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #other:Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;
    :cond_3
    move v1, v2

    .line 82
    goto :goto_0
.end method

.method setData(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 53
    iget-object v0, p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 54
    iget v0, p1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iput v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    .line 55
    return-void
.end method

.method setData(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V
    .locals 0
    .parameter "observer"
    .parameter "pos"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    .line 49
    iput p2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    const-string v0, "AdapterPosition(%d, %d, %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v4, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v3, v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemOrderKey(I)Ljava/lang/Comparable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
