.class public Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;
.super Ljava/lang/Object;
.source "FourGManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioInfoTemperature"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private current:I

.field private isOverHeat:Z

.field private max:I

.field private min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature$1;

    invoke-direct {v0}, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature$1;-><init>()V

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/net/FourG/FourGManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    return v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    return v0
.end method

.method public isRadioOverheat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refresh(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public resetMinMax(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    return-void
.end method

.method public setRadioOverheat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->current:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->min:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGManager$RadioInfoTemperature;->isOverHeat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
