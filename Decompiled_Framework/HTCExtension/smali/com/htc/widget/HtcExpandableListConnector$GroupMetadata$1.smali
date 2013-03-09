.class final Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "HtcExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
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
        "Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;
    .locals 1

    new-array v0, p1, [Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata$1;->newArray(I)[Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method
