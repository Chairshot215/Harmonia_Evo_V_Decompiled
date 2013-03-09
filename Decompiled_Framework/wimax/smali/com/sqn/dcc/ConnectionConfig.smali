.class public Lcom/sqn/dcc/ConnectionConfig;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sqn/dcc/ConnectionConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accurateBestNapSelection:Z

.field public accurateBestNspSelection:Z

.field public autoConnect:Z

.field public autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

.field public autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

.field public caplPolicy:J

.field public raplPolicy:J

.field public roamingEnabled:Z

.field public useAutodetectEntryCriteria:Z

.field public useAutodetectExitCriteria:Z

.field public waitBeforeScan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/ConnectionConfig$1;

    invoke-direct {v0}, Lcom/sqn/dcc/ConnectionConfig$1;-><init>()V

    sput-object v0, Lcom/sqn/dcc/ConnectionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    iput-wide v1, p0, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    iput-wide v1, p0, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    iput v0, p0, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    new-instance v0, Lcom/sqn/dcc/AutodetectEntryCriteria;

    invoke-direct {v0}, Lcom/sqn/dcc/AutodetectEntryCriteria;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    new-instance v0, Lcom/sqn/dcc/AutodetectExitCriteria;

    invoke-direct {v0}, Lcom/sqn/dcc/AutodetectExitCriteria;-><init>()V

    iput-object v0, p0, Lcom/sqn/dcc/ConnectionConfig;->autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

    return-void
.end method

.method public constructor <init>(ZZJJZZI)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    iput-boolean p2, p0, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    iput-wide p3, p0, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    iput-wide p5, p0, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    iput-boolean p7, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    iput-boolean p8, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    iput p9, p0, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ConnectionConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    if-ge v2, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget v1, p1, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectEntryCriteria:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/AutodetectEntryCriteria;->marshall([BLcom/sqn/dcc/AutodetectEntryCriteria;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectExitCriteria:Z

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    iget-object v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/AutodetectExitCriteria;->marshall([BLcom/sqn/dcc/AutodetectExitCriteria;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/ConnectionConfig;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    array-length v4, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    if-ge v4, v1, :cond_0

    const v1, -0xfffb

    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p1, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectEntryCriteria:Z

    iget-object v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autodetectEntryCriteria:Lcom/sqn/dcc/AutodetectEntryCriteria;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/AutodetectEntryCriteria;->unmarshall([BLcom/sqn/dcc/AutodetectEntryCriteria;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_7

    :goto_6
    iput-boolean v2, p1, Lcom/sqn/dcc/ConnectionConfig;->useAutodetectExitCriteria:Z

    iget-object v1, p1, Lcom/sqn/dcc/ConnectionConfig;->autodetectExitCriteria:Lcom/sqn/dcc/AutodetectExitCriteria;

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/AutodetectExitCriteria;->unmarshall([BLcom/sqn/dcc/AutodetectExitCriteria;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_6

    :cond_8
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<none>"

    const-string v2, "autoConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "roamingEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", caplPolicy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", raplPolicy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", accurateBestNapSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", accurateBestNspSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", waitBeforeScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->autoConnect:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->roamingEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->caplPolicy:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/sqn/dcc/ConnectionConfig;->raplPolicy:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNapSelection:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sqn/dcc/ConnectionConfig;->accurateBestNspSelection:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/sqn/dcc/ConnectionConfig;->waitBeforeScan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
