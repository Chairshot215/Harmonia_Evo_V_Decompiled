.class final Lcom/htc/opensense/social/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/Tag;
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
        "Lcom/htc/opensense/social/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Tag;
    .locals 1
    .parameter "source"

    .prologue
    .line 19
    new-instance v0, Lcom/htc/opensense/social/Tag;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/Tag;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Tag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Tag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense/social/Tag;
    .locals 1
    .parameter "size"

    .prologue
    .line 23
    new-array v0, p1, [Lcom/htc/opensense/social/Tag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Tag$1;->newArray(I)[Lcom/htc/opensense/social/Tag;

    move-result-object v0

    return-object v0
.end method
