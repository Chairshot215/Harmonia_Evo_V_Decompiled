.class final Lcom/htc/clientprofileservice/Group$1;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clientprofileservice/Group;
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
        "Lcom/htc/clientprofileservice/Group;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/Group;
    .locals 1

    new-instance v0, Lcom/htc/clientprofileservice/Group;

    invoke-direct {v0, p1}, Lcom/htc/clientprofileservice/Group;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Group$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/clientprofileservice/Group;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/clientprofileservice/Group;
    .locals 1

    new-array v0, p1, [Lcom/htc/clientprofileservice/Group;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/Group$1;->newArray(I)[Lcom/htc/clientprofileservice/Group;

    move-result-object v0

    return-object v0
.end method
