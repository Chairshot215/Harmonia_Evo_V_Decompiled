.class public Lcom/htc/net/wimax/HTCWimax4GConfiguration;
.super Lcom/htc/net/wimax/Wimax4GConfiguration;
.source "HTCWimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/HTCWimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/HTCWimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/wimax/HTCWimax4GConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/HTCWimax4GConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/wimax/Wimax4GConfiguration;-><init>(Lcom/htc/net/wimax/Wimax4GConfiguration;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GConfiguration;->username:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/net/wimax/Wimax4GConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
