.class final Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;
.super Ljava/lang/Object;
.source "DLNAServiceDirectory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
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
        "Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    .locals 1
    .parameter "in"

    .prologue
    .line 307
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    .locals 1
    .parameter "size"

    .prologue
    .line 312
    new-array v0, p1, [Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;->newArray(I)[Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    move-result-object v0

    return-object v0
.end method
