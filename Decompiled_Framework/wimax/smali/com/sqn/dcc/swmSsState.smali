.class public Lcom/sqn/dcc/swmSsState;
.super Ljava/lang/Object;
.source "swmSsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sqn/dcc/swmSsState$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sqn/dcc/swmSsState;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWM_SS_ABORTED:I = 0xf

.field public static final SWM_SS_AUTHORIZATION:I = 0x7

.field public static final SWM_SS_CAPABILITIES_NEGOTIATION:I = 0x6

.field public static final SWM_SS_DHCP:I = 0x9

.field public static final SWM_SS_DL_SYNCHRONIZATION:I = 0x1

.field public static final SWM_SS_HANDOVER_DL_ACQ:I = 0x2

.field public static final SWM_SS_HANDOVER_RANGING:I = 0x5

.field public static final SWM_SS_IDLE:I = 0xe

.field public static final SWM_SS_INIT:I = 0x0

.field public static final SWM_SS_INVALID:I = 0x10

.field public static final SWM_SS_OPERATIONAL:I = 0xc

.field public static final SWM_SS_RANGING:I = 0x4

.field public static final SWM_SS_REGISTRATION:I = 0x8

.field public static final SWM_SS_SLEEP:I = 0xd

.field public static final SWM_SS_STATE_QTY:I = 0x11

.field public static final SWM_SS_TFTP:I = 0xb

.field public static final SWM_SS_TOD:I = 0xa

.field public static final SWM_SS_UL_ACQUISITION:I = 0x3

.field public static final stateStringArray:[Ljava/lang/String;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "INIT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DL_SYNCHRONIZATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HANDOVER_DL_ACQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UL_ACQUISITION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RANGING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HANDOVER_RANGING"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CAPABILITIES_NEGOTIATION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AUTHORIZATION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REGISTRATION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DHCP"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TOD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TFTP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "OPERATIONAL"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SLEEP"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "IDLE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ABORTED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sqn/dcc/swmSsState;->stateStringArray:[Ljava/lang/String;

    new-instance v0, Lcom/sqn/dcc/swmSsState$1;

    invoke-direct {v0}, Lcom/sqn/dcc/swmSsState$1;-><init>()V

    sput-object v0, Lcom/sqn/dcc/swmSsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sqn/dcc/swmSsState;->value:I

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmSsState;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsState;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/swmSsState;->value:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x11

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/sqn/dcc/swmSsState;->stateStringArray:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sqn/dcc/swmSsState;->stateStringArray:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmSsState;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmSsState;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/sqn/dcc/swmSsState;->value:I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnumState()Lcom/sqn/dcc/swmSsState$State;
    .locals 1

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INIT:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DL_SYNCHRONIZATION:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_DL_ACQ:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_UL_ACQUISITION:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_RANGING:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_RANGING:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_CAPABILITIES_NEGOTIATION:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_AUTHORIZATION:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_REGISTRATION:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DHCP:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TOD:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TFTP:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_OPERATIONAL:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_SLEEP:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_IDLE:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_ABORTED:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getStateIdx()I
    .locals 1

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    return v0
.end method

.method public isAbortedState()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorizationState()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectToBs()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDlSynchronizationState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sqn/dcc/swmSsState;->value:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandoverRanging()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleState()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitState()Z
    .locals 1

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidState()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOperationalState()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUlAcquisition()Z
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/sqn/dcc/swmSsState;->stateStringArray:[Ljava/lang/String;

    iget v1, p0, Lcom/sqn/dcc/swmSsState;->value:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sqn/dcc/swmSsState;->stateStringArray:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/sqn/dcc/swmSsState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
