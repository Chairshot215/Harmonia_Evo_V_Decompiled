.class public Lcom/htc/net/wimax/ParcelableBoolean;
.super Ljava/lang/Object;
.source "ParcelableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/ParcelableBoolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/wimax/ParcelableBoolean$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/ParcelableBoolean$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/ParcelableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableBoolean;->bValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
