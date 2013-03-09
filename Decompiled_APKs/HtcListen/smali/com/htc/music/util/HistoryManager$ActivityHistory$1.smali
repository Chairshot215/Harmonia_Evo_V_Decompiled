.class final Lcom/htc/music/util/HistoryManager$ActivityHistory$1;
.super Ljava/lang/Object;
.source "HistoryManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HistoryManager$ActivityHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/music/util/HistoryManager$ActivityHistory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    new-instance v0, Lcom/htc/music/util/HistoryManager$ActivityHistory;

    invoke-direct {v0, v4, v2, v3}, Lcom/htc/music/util/HistoryManager$ActivityHistory;-><init>(Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/util/HistoryManager$ActivityHistory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .locals 1

    new-array v0, p1, [Lcom/htc/music/util/HistoryManager$ActivityHistory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/util/HistoryManager$ActivityHistory$1;->newArray(I)[Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v0

    return-object v0
.end method
