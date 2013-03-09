.class Lcom/sqn/dcc/DeviceController$dcpHeader;
.super Ljava/lang/Object;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dcpHeader"
.end annotation


# static fields
.field static final _proVersion:I = 0x105


# instance fields
.field _handle:I

.field _size:I

.field _status:I

.field _type:I

.field final synthetic this$0:Lcom/sqn/dcc/DeviceController;


# direct methods
.method constructor <init>(Lcom/sqn/dcc/DeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/sqn/dcc/DeviceController;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->this$0:Lcom/sqn/dcc/DeviceController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    iput p3, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    iput p4, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_handle:I

    iput p5, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    return-void
.end method


# virtual methods
.method dump()V
    .locals 3

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v0, v0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->this$0:Lcom/sqn/dcc/DeviceController;

    iget-object v0, v0, Lcom/sqn/dcc/DeviceController;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCP Header : type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_handle:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method marshall()[B
    .locals 4

    const/16 v2, 0x10

    new-array v0, v2, [B

    new-instance v1, Lcom/sqn/dcc/OutValue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    const/16 v2, 0x105

    invoke-static {v0, v2, v1}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    invoke-static {v0, v2, v1}, Lcom/sqn/dcc/Util;->Copy16ToBuffer([BILcom/sqn/dcc/OutValue;)V

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_handle:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    return-object v0
.end method

.method processHeader([B)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/DeviceController$dcpHeader;->unmarshall([B)Z

    move-result v0

    return v0
.end method

.method unmarshall([B)Z
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v1

    const/16 v3, 0x105

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p1, v0}, Lcom/sqn/dcc/Util;->Copy16FromBuffer([BLcom/sqn/dcc/OutValue;)I

    move-result v3

    iput v3, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    iget v3, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_size:I

    const/16 v4, 0x4000

    if-ge v3, v4, :cond_0

    invoke-static {p1, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_type:I

    invoke-static {p1, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_handle:I

    invoke-static {p1, v0}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sqn/dcc/DeviceController$dcpHeader;->_status:I

    const/4 v2, 0x1

    goto :goto_0
.end method
