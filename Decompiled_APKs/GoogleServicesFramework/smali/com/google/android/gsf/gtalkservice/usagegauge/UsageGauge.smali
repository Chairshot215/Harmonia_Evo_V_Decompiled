.class public Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;
.super Ljava/lang/Object;
.source "UsageGauge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    }
.end annotation


# static fields
.field private static final PACKET_COUNT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final PACKET_SIZE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static final TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

.field private static sInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    .line 74
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    .line 78
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 79
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 80
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 81
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    sget-wide v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 34
    .parameter "out"

    .prologue
    .line 172
    const-class v29, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v29

    :try_start_0
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Transmission statistics: (last "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    const-wide/16 v32, 0x3e8

    div-long v30, v30, v32

    const-wide/16 v32, 0xe10

    div-long v30, v30, v32

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " hours)"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    const-string v28, "----------------------------------------"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v11

    .line 176
    .local v11, receivedCount:J
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v15

    .line 177
    .local v15, sentCount:J
    add-long v23, v11, v15

    .line 178
    .local v23, totalCount:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Packet count (received/sent/total): "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v13

    .line 182
    .local v13, receivedSize:J
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v17

    .line 183
    .local v17, sentSize:J
    add-long v25, v13, v17

    .line 184
    .local v25, totalSize:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Packet size (received/sent/total): "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Average packet size (received/sent/total): "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-wide/from16 v0, v17

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-wide/from16 v0, v25

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string v28, "Packet breakdown by types (type: count/count percentage/size percentage): "

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 195
    .local v10, map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 196
    .local v27, type:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 197
    .local v6, countMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    sget-object v28, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    .line 198
    .local v21, sizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ":"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 200
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 201
    .local v22, subtype:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v4

    .line 202
    .local v4, count:J
    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->get()J

    move-result-wide v19

    .line 203
    .local v19, size:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "    "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ": "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x64

    mul-long v30, v30, v4

    move-wide/from16 v0, v30

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "% / "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x64

    mul-long v30, v30, v19

    move-wide/from16 v0, v30

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getQuotientString(JJ)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "%"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 172
    .end local v4           #count:J
    .end local v6           #countMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #map:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    .end local v11           #receivedCount:J
    .end local v13           #receivedSize:J
    .end local v15           #sentCount:J
    .end local v17           #sentSize:J
    .end local v19           #size:J
    .end local v21           #sizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    .end local v22           #subtype:Ljava/lang/String;
    .end local v23           #totalCount:J
    .end local v25           #totalSize:J
    .end local v27           #type:Ljava/lang/String;
    :catchall_0
    move-exception v28

    monitor-exit v29

    throw v28

    .line 209
    .restart local v11       #receivedCount:J
    .restart local v13       #receivedSize:J
    .restart local v15       #sentCount:J
    .restart local v17       #sentSize:J
    .restart local v23       #totalCount:J
    .restart local v25       #totalSize:J
    :cond_1
    monitor-exit v29

    return-void
.end method

.method private static getDataMessageTarget(Lorg/jivesoftware/smack/packet/DataMessage;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPacketUsageType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    .locals 3
    .parameter "packet"

    .prologue
    .line 130
    if-eqz p0, :cond_a

    .line 132
    instance-of v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    .end local p0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getOriginalPacket()Lorg/jivesoftware/smack/packet/Packet;

    move-result-object p0

    .line 135
    .restart local p0
    :cond_0
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_2

    .line 136
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "data message"

    check-cast p0, Lorg/jivesoftware/smack/packet/DataMessage;

    .end local p0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getDataMessageTarget(Lorg/jivesoftware/smack/packet/DataMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local p0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "chat"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/Presence;

    if-nez v0, :cond_3

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;

    if-eqz v0, :cond_4

    .line 142
    :cond_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "presence"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_4
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_6

    .line 144
    instance-of v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;

    if-eqz v0, :cond_5

    .line 145
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "connection"

    const-string v2, "login"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_5
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "talk"

    const-string v2, "iq"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_6
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/LoginRequest;

    if-nez v0, :cond_7

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/LoginResponse;

    if-eqz v0, :cond_8

    .line 149
    :cond_7
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "connection"

    const-string v2, "login"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_8
    instance-of v0, p0, Lorg/jivesoftware/smack/packet/HttpRequest;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/jivesoftware/smack/packet/HttpResponse;

    if-eqz v0, :cond_a

    .line 151
    :cond_9
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    const-string v1, "miscellaneous"

    const-string v2, "tunnelled http"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getQuotientString(JJ)Ljava/lang/String;
    .locals 2
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 164
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "-"

    .line 167
    :goto_0
    return-object v0

    :cond_0
    div-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized update(Lorg/jivesoftware/smack/packet/Packet;JZ)V
    .locals 7
    .parameter "packet"
    .parameter "size"
    .parameter "received"

    .prologue
    .line 87
    const-class v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->getPacketUsageType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;

    move-result-object v0

    .line 89
    .local v0, type:Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    if-eqz v0, :cond_0

    .line 90
    sget-object v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->subtype:Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 91
    sget-object v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;->subtype:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateTotalStats(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v2

    return-void

    .line 87
    .end local v0           #type:Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge$UsageType;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized updateHeartbeat(JZ)V
    .locals 6
    .parameter "size"
    .parameter "received"

    .prologue
    .line 98
    const-class v1, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_COUNT_MAP:Ljava/util/Map;

    const-string v2, "connection"

    const-string v3, "heartbeat"

    const-wide/16 v4, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 99
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->PACKET_SIZE_MAP:Ljava/util/Map;

    const-string v2, "connection"

    const-string v3, "heartbeat"

    invoke-static {v0, v2, v3, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V

    .line 101
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateTotalStats(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v1

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static updateStatInMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter "type"
    .parameter "subtype"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 117
    .local v1, typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/util/TreeMap;

    .end local v1           #typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 119
    .restart local v1       #typeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;>;"
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .line 122
    .local v0, stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    .end local v0           #stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    sget-wide v2, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->sInterval:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;-><init>(J)V

    .line 124
    .restart local v0       #stat:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 127
    return-void
.end method

.method private static updateTotalStats(JZ)V
    .locals 3
    .parameter "size"
    .parameter "received"

    .prologue
    const-wide/16 v1, 0x1

    .line 105
    if-eqz p2, :cond_0

    .line 106
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 107
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_RECEIVED_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_COUNT:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    .line 110
    sget-object v0, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->TOTAL_SENT_PACKET_SIZE:Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/usagegauge/Stat;->incBy(J)V

    goto :goto_0
.end method
