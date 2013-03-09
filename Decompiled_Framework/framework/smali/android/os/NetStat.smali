.class public Landroid/os/NetStat;
.super Ljava/lang/Object;
.source "NetStat.java"


# static fields
.field private static final MOBILE_RX_BYTES:[[Ljava/lang/Object; = null

.field private static final MOBILE_RX_PACKETS:[[Ljava/lang/Object; = null

.field private static final MOBILE_TX_BYTES:[[Ljava/lang/Object; = null

.field private static final MOBILE_TX_PACKETS:[[Ljava/lang/Object; = null

.field private static final SYS_CLASS_NET_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "netstat"

.field private static final buf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v8, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet0/statistics/tx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet0/statistics/tx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/ppp0/statistics/tx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/ppp0/statistics/tx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet1/statistics/tx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet1/statistics/tx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet2/statistics/tx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet2/statistics/tx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/NetStat;->MOBILE_TX_PACKETS:[[Ljava/lang/Object;

    new-array v0, v8, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet0/statistics/rx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet0/statistics/rx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/ppp0/statistics/rx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/ppp0/statistics/rx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet1/statistics/rx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet1/statistics/rx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet2/statistics/rx_packets"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet2/statistics/rx_packets"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/NetStat;->MOBILE_RX_PACKETS:[[Ljava/lang/Object;

    new-array v0, v8, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet0/statistics/tx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet0/statistics/tx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/ppp0/statistics/tx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/ppp0/statistics/tx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet1/statistics/tx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet1/statistics/tx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet2/statistics/tx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet2/statistics/tx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/NetStat;->MOBILE_TX_BYTES:[[Ljava/lang/Object;

    new-array v0, v8, [[Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet0/statistics/rx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet0/statistics/rx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/ppp0/statistics/rx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/ppp0/statistics/rx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet1/statistics/rx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet1/statistics/rx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/rmnet2/statistics/rx_bytes"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    const-string v2, "/sys/class/net/rmnet2/statistics/rx_bytes"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Landroid/os/NetStat;->MOBILE_RX_BYTES:[[Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/net"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/NetStat;->SYS_CLASS_NET_DIR:Ljava/io/File;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Landroid/os/NetStat;->buf:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "netstat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception opening TCP statistics file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMobileRxBytes()J
    .locals 2

    sget-object v0, Landroid/os/NetStat;->MOBILE_RX_BYTES:[[Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileRxPkts()J
    .locals 2

    sget-object v0, Landroid/os/NetStat;->MOBILE_RX_PACKETS:[[Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMobileStat([[Ljava/lang/Object;)J
    .locals 7

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    aget-object v4, p0, v2

    const/4 v5, 0x0

    aget-object v1, v4, v5

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget-object v4, p0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/NetStat;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_2
    return-wide v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "netstat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception opening TCP statistics file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method public static getMobileTxBytes()J
    .locals 2

    sget-object v0, Landroid/os/NetStat;->MOBILE_TX_BYTES:[[Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxPkts()J
    .locals 2

    sget-object v0, Landroid/os/NetStat;->MOBILE_TX_PACKETS:[[Ljava/lang/Object;

    invoke-static {v0}, Landroid/os/NetStat;->getMobileStat([[Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    .locals 9

    const-class v5, Landroid/os/NetStat;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/os/NetStat;->buf:[B

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    sget-object v4, Landroid/os/NetStat;->buf:[B

    array-length v4, v4

    if-ge v1, v4, :cond_1

    sget-object v4, Landroid/os/NetStat;->buf:[B

    aget-byte v4, v4, v1

    const/16 v6, 0x30

    if-lt v4, v6, :cond_1

    sget-object v4, Landroid/os/NetStat;->buf:[B

    aget-byte v4, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v6, 0x39

    if-le v4, v6, :cond_3

    :cond_1
    :goto_2
    monitor-exit v5

    return-wide v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "netstat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting TCP bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v4, "netstat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_1
    move-exception v4

    if-eqz p0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    :try_start_7
    throw v4

    :cond_3
    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    sget-object v4, Landroid/os/NetStat;->buf:[B

    aget-byte v4, v4, v1

    add-int/lit8 v4, v4, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v6, "netstat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string/jumbo v4, "netstat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method private static getNumberFromFilePath(Ljava/lang/String;)J
    .locals 3

    invoke-static {p0}, Landroid/os/NetStat;->getFile(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0, p0}, Landroid/os/NetStat;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    const-string/jumbo v0, "rx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPkts()J
    .locals 2

    const-string/jumbo v0, "rx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTotalStat(Ljava/lang/String;)J
    .locals 11

    new-instance v4, Ljava/io/File;

    const-string v9, "/sys/class/net"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/NetStat;->SYS_CLASS_NET_DIR:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    const-wide/16 v7, 0x0

    :cond_0
    return-wide v7

    :cond_1
    const-wide/16 v7, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "statistics"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getTotalTxBytes()J
    .locals 2

    const-string/jumbo v0, "tx_bytes"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPkts()J
    .locals 2

    const-string/jumbo v0, "tx_packets"

    invoke-static {v0}, Landroid/os/NetStat;->getTotalStat(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/uid_stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_rcv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/uid_stat/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_snd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/NetStat;->getNumberFromFilePath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static mobileFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 5

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/rmnet0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/ppp0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/rmnet1/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/rmnet2/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method
