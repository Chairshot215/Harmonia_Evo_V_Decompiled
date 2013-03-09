.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final MODEL_CARKIT:I = 0xb

.field public static final MODEL_HID:I = 0xc

.field public static final MODEL_HID_MOUSE:I = 0xd

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_BPP:I = 0x3

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 5

    const/high16 v2, 0x20

    const/4 v4, 0x3

    const/16 v3, 0x500

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    const/high16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    move v0, v1

    goto :goto_0

    :cond_5
    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-eq p1, v2, :cond_7

    const/4 v2, 0x5

    if-ne p1, v2, :cond_8

    :cond_7
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x300

    const/16 v3, 0x300

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :cond_9
    const/16 v2, 0xb

    if-ne p1, v2, :cond_b

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x420

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v3, 0xffe000

    and-int/2addr v2, v3

    const/high16 v3, 0x24

    if-eq v2, v3, :cond_a

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xc

    if-ne p1, v2, :cond_d

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-ne v2, v3, :cond_c

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_4

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xd

    if-ne p1, v2, :cond_f

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-ne v2, v3, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x580

    if-eq v2, v3, :cond_0

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
        0x200 -> :sswitch_0
        0x204 -> :sswitch_0
        0x208 -> :sswitch_0
        0x20c -> :sswitch_0
        0x210 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_0
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x408 -> :sswitch_0
        0x420 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x508 -> :sswitch_0
        0x540 -> :sswitch_0
        0x580 -> :sswitch_0
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
