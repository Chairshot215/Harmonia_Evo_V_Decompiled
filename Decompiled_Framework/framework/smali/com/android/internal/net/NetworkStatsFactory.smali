.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_COUNTER_SET:Ljava/lang/String; = "cnt_set"

.field private static final KEY_IDX:Ljava/lang/String; = "idx"

.field private static final KEY_IFACE:Ljava/lang/String; = "iface"

.field private static final KEY_RX_BYTES:Ljava/lang/String; = "rx_bytes"

.field private static final KEY_RX_PACKETS:Ljava/lang/String; = "rx_packets"

.field private static final KEY_SNAP_RX_BYTES:Ljava/lang/String; = "snap_rx_bytes"

.field private static final KEY_SNAP_RX_PACKETS:Ljava/lang/String; = "snap_rx_packets"

.field private static final KEY_SNAP_TX_BYTES:Ljava/lang/String; = "snap_tx_bytes"

.field private static final KEY_SNAP_TX_PACKETS:Ljava/lang/String; = "snap_tx_packets"

.field private static final KEY_TAG_HEX:Ljava/lang/String; = "acct_tag_hex"

.field private static final KEY_TX_BYTES:Ljava/lang/String; = "tx_bytes"

.field private static final KEY_TX_PACKETS:Ljava/lang/String; = "tx_packets"

.field private static final KEY_UID:Ljava/lang/String; = "uid_tag_int"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"


# instance fields
.field private final mStatsIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIface:Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/dev"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    return-void
.end method

.method private static fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private static parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v18, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const/16 v22, 0x6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->fileListWithoutNull(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_2

    aget-object v11, v7, v10

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIface:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    const-string v21, "active"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v20, 0x1

    cmp-long v20, v4, v20

    if-nez v20, :cond_1

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    iput-object v11, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "rx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_bytes"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    new-instance v20, Ljava/io/File;

    const-string/jumbo v21, "tx_packets"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Lcom/android/internal/net/NetworkStatsFactory;->readSingleLongFromFile(Ljava/io/File;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v4, v20

    if-nez v20, :cond_0

    invoke-virtual {v13, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v16, 0x0

    :try_start_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsIface:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    :cond_3
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v20, 0x0

    :try_start_2
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v9, Landroid/net/NetworkStats$Entry;->tag:I

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const/16 v20, 0x9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    const/16 v20, 0xa

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_3
    const-string v20, "NetworkStatsFactory"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats row \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\': "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_1
    move-exception v8

    move-object/from16 v16, v17

    :goto_3
    :try_start_4
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v20

    :goto_4
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v20

    :cond_4
    :try_start_5
    iget-object v0, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v8

    move-object/from16 v16, v17

    :goto_5
    :try_start_6
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    :catch_3
    move-exception v8

    :goto_6
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "problem parsing stats: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v18

    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    goto :goto_4

    :catch_4
    move-exception v8

    goto :goto_5

    :catch_5
    move-exception v8

    move-object/from16 v16, v17

    goto :goto_6

    :catch_6
    move-exception v8

    goto :goto_3
.end method

.method private readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;
    .locals 14

    new-instance v8, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x6

    invoke-direct {v8, v10, v11, v12}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "iface"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "active"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "snap_rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "snap_rx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "snap_tx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "snap_tx_packets"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "rx_bytes"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "rx_packets"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string/jumbo v12, "tx_bytes"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string/jumbo v12, "tx_packets"

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    iget-object v11, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, v9}, Lcom/android/internal/net/NetworkStatsFactory;->splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v3, v9, v5}, Lcom/android/internal/net/NetworkStatsFactory;->parseLine(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    const-string/jumbo v10, "iface"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v10, -0x1

    iput v10, v2, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v10, 0x0

    iput v10, v2, Landroid/net/NetworkStats$Entry;->tag:I

    const-string/jumbo v10, "snap_rx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-string/jumbo v10, "snap_rx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-string/jumbo v10, "snap_tx_bytes"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-string/jumbo v10, "snap_tx_packets"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-string v10, "active"

    invoke-static {v5, v10}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-string/jumbo v12, "rx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-string/jumbo v12, "rx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-string/jumbo v12, "tx_bytes"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-string/jumbo v12, "tx_packets"

    invoke-static {v5, v12}, Lcom/android/internal/net/NetworkStatsFactory;->getParsedLong(Ljava/util/HashMap;Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    :cond_0
    invoke-virtual {v8, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v6, v7

    :goto_2
    :try_start_2
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v10

    :goto_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_4
    :try_start_3
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :catch_2
    move-exception v1

    :goto_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "problem parsing stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v8

    :catchall_1
    move-exception v10

    move-object v6, v7

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v6, v7

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static readSingleLongFromFile(Ljava/io/File;)J
    .locals 5

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static splitLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " \t\n\r\u000c:"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 v9, 0x18

    invoke-direct {v6, v7, v8, v9}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    add-int/lit8 v7, v3, 0x1

    if-eq v2, v7, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inconsistent idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " after lastIdx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_0
    move-exception v0

    move-object v4, v5

    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_0
    move v3, v2

    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v7

    iput v7, v1, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    iget v7, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v7, :cond_2

    :cond_1
    invoke-virtual {v6, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_2
    move-exception v0

    :goto_4
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing idx "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v6

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method public readNetworkStatsSummary()Landroid/net/NetworkStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummarySingleFile()Landroid/net/NetworkStats;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryMultipleFiles()Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_0
.end method
