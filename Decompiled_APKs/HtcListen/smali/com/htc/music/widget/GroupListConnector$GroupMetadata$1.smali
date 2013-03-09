.class final Lcom/htc/music/widget/GroupListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "GroupListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
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
        "Lcom/htc/music/widget/GroupListConnector$GroupMetadata;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    .locals 2

    new-instance v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/htc/music/widget/GroupListConnector$GroupMetadata;->gPos:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/music/widget/GroupListConnector$GroupMetadata;
    .locals 1

    new-array v0, p1, [Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListConnector$GroupMetadata$1;->newArray(I)[Lcom/htc/music/widget/GroupListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method
