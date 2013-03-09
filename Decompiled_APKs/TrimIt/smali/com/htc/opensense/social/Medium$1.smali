.class final Lcom/htc/opensense/social/Medium$1;
.super Ljava/lang/Object;
.source "Medium.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/Medium;
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
        "Lcom/htc/opensense/social/Medium;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Medium;
    .locals 1
    .parameter "source"

    .prologue
    .line 30
    new-instance v0, Lcom/htc/opensense/social/Medium;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/Medium;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Medium$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/opensense/social/Medium;
    .locals 1
    .parameter "size"

    .prologue
    .line 34
    new-array v0, p1, [Lcom/htc/opensense/social/Medium;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/Medium$1;->newArray(I)[Lcom/htc/opensense/social/Medium;

    move-result-object v0

    return-object v0
.end method
