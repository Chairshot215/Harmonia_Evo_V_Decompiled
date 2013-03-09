.class public final Lcom/google/android/location/os/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/os/EventLog$Timestamper;,
        Lcom/google/android/location/os/EventLog$Entry;
    }
.end annotation


# instance fields
.field private final date:Ljava/util/Date;

.field private final debugWriter:Ljava/io/PrintWriter;

.field private final endTime:[J

.field private final fieldPosition:Ljava/text/FieldPosition;

.field private lastCallbackTime:J

.field private final lastEvent:[Lcom/google/android/location/os/EventLog$Entry;

.field private final log:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/location/os/EventLog$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/google/android/location/os/LoggerInterface;

.field private final notLogged:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/android/location/os/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final numEvents:[I

.field private final simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private final stringBuffer:Ljava/lang/StringBuffer;

.field private final timestamper:Lcom/google/android/location/os/EventLog$Timestamper;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/EventLog$Timestamper;Lcom/google/android/location/os/LoggerInterface;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "timestamper"
    .parameter "logger"
    .parameter "debugWriter"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->date:Ljava/util/Date;

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->stringBuffer:Ljava/lang/StringBuffer;

    .line 97
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->fieldPosition:Ljava/text/FieldPosition;

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 100
    sget-object v0, Lcom/google/android/location/os/Event;->CELL_SIGNAL_STRENGTH:Lcom/google/android/location/os/Event;

    sget-object v1, Lcom/google/android/location/os/Event;->MILLIS_SINCE_BOOT:Lcom/google/android/location/os/Event;

    sget-object v2, Lcom/google/android/location/os/Event;->MILLIS_SINCE_EPOCH:Lcom/google/android/location/os/Event;

    sget-object v3, Lcom/google/android/location/os/Event;->LOG:Lcom/google/android/location/os/Event;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->notLogged:Ljava/util/EnumSet;

    .line 107
    invoke-static {}, Lcom/google/android/location/os/Event;->values()[Lcom/google/android/location/os/Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/location/os/EventLog$Entry;

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->lastEvent:[Lcom/google/android/location/os/EventLog$Entry;

    .line 109
    invoke-static {}, Lcom/google/android/location/os/Event;->values()[Lcom/google/android/location/os/Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->numEvents:[I

    .line 111
    invoke-static {}, Lcom/google/android/location/os/Event;->values()[Lcom/google/android/location/os/Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/location/os/EventLog;->endTime:[J

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/os/EventLog;->lastCallbackTime:J

    .line 120
    iput-object p1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    .line 121
    iput-object p2, p0, Lcom/google/android/location/os/EventLog;->logger:Lcom/google/android/location/os/LoggerInterface;

    .line 122
    iput-object p3, p0, Lcom/google/android/location/os/EventLog;->debugWriter:Ljava/io/PrintWriter;

    .line 123
    iget-object v0, p0, Lcom/google/android/location/os/EventLog;->endTime:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 124
    return-void
.end method

.method private declared-synchronized addEntry(Lcom/google/android/location/os/EventLog$Entry;)V
    .locals 8
    .parameter "entry"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/os/EventLog$Entry;

    .line 159
    .local v1, last:Lcom/google/android/location/os/EventLog$Entry;
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->endTime:[J

    iget-object v5, v1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    invoke-virtual {v5}, Lcom/google/android/location/os/Event;->ordinal()I

    move-result v5

    iget-wide v6, p1, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    aput-wide v6, v4, v5

    .line 161
    .end local v1           #last:Lcom/google/android/location/os/EventLog$Entry;
    :cond_0
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->lastEvent:[Lcom/google/android/location/os/EventLog$Entry;

    iget-object v5, p1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    invoke-virtual {v5}, Lcom/google/android/location/os/Event;->ordinal()I

    move-result v5

    aput-object p1, v4, v5

    .line 162
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->numEvents:[I

    iget-object v5, p1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    invoke-virtual {v5}, Lcom/google/android/location/os/Event;->ordinal()I

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 165
    iget-object v4, p1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    sget-object v5, Lcom/google/android/location/os/Event;->GPS_LOCATION:Lcom/google/android/location/os/Event;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/os/EventLog$Entry;

    iget-object v4, v4, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    sget-object v5, Lcom/google/android/location/os/Event;->GPS_LOCATION:Lcom/google/android/location/os/Event;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/os/EventLog$Entry;

    iget-object v4, v4, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    sget-object v5, Lcom/google/android/location/os/Event;->GPS_LOCATION:Lcom/google/android/location/os/Event;

    if-ne v4, v5, :cond_1

    .line 168
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 171
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_2

    .line 172
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 174
    :cond_2
    :try_start_1
    iget-object v4, p1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    iget-object v4, v4, Lcom/google/android/location/os/Event;->kind:Lcom/google/android/location/os/Event$Kind;

    sget-object v5, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    if-ne v4, v5, :cond_3

    .line 175
    iget-wide v4, p1, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    iput-wide v4, p0, Lcom/google/android/location/os/EventLog;->lastCallbackTime:J

    .line 177
    :cond_3
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->logger:Lcom/google/android/location/os/LoggerInterface;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->notLogged:Ljava/util/EnumSet;

    iget-object v5, p1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->logger:Lcom/google/android/location/os/LoggerInterface;

    const-string v5, "androidNlpEventLog"

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/google/android/location/os/LoggerInterface;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v3, pw:Ljava/io/PrintWriter;
    invoke-virtual {p1, v3}, Lcom/google/android/location/os/EventLog$Entry;->dump(Ljava/io/PrintWriter;)V

    .line 182
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->logger:Lcom/google/android/location/os/LoggerInterface;

    const-string v5, "androidNlpEventLog"

    invoke-interface {v4, v5, v2}, Lcom/google/android/location/os/LoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #pw:Ljava/io/PrintWriter;
    :cond_4
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->debugWriter:Ljava/io/PrintWriter;

    if-eqz v4, :cond_5

    .line 191
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->date:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 192
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 193
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/google/android/location/os/EventLog;->date:Ljava/util/Date;

    iget-object v6, p0, Lcom/google/android/location/os/EventLog;->stringBuffer:Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/google/android/location/os/EventLog;->fieldPosition:Ljava/text/FieldPosition;

    invoke-virtual {v4, v5, v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->debugWriter:Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/google/android/location/os/EventLog;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->debugWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v4}, Lcom/google/android/location/os/EventLog$Entry;->dump(Ljava/io/PrintWriter;)V

    .line 196
    iget-object v4, p0, Lcom/google/android/location/os/EventLog;->debugWriter:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_5
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addAirplaneModeChanged(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/location/os/EventLog$2;

    sget-object v2, Lcom/google/android/location/os/Event;->AIRPLANE_MODE_CHANGED:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$2;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JZ)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 222
    return-void
.end method

.method public addAlarmReset(IJ)V
    .locals 8
    .parameter "id"
    .parameter "alarmTime"

    .prologue
    .line 311
    new-instance v0, Lcom/google/android/location/os/EventLog$12;

    sget-object v2, Lcom/google/android/location/os/Event;->ALARM_RESET:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/os/EventLog$12;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JIJ)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 319
    return-void
.end method

.method public addAlarmRing(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/location/os/EventLog$3;

    sget-object v2, Lcom/google/android/location/os/Event;->ALARM_RING:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$3;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JI)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 231
    return-void
.end method

.method public addCellScanResults(Lcom/google/android/location/data/CellState;)V
    .locals 6
    .parameter "cellState"

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/location/os/EventLog$5;

    sget-object v2, Lcom/google/android/location/os/Event;->CELL_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$5;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLcom/google/android/location/data/CellState;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 254
    return-void
.end method

.method public addCellSignalStrength(I)V
    .locals 6
    .parameter "strength"

    .prologue
    .line 257
    new-instance v0, Lcom/google/android/location/os/EventLog$6;

    sget-object v2, Lcom/google/android/location/os/Event;->CELL_SIGNAL_STRENGTH:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$6;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JI)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 263
    return-void
.end method

.method public addEvent(Lcom/google/android/location/os/Event;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/location/os/EventLog$Entry;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 202
    return-void
.end method

.method public addLocationReport(Lcom/google/android/location/data/NetworkLocation;)V
    .locals 6
    .parameter "networkLocation"

    .prologue
    .line 331
    new-instance v0, Lcom/google/android/location/os/EventLog$14;

    sget-object v2, Lcom/google/android/location/os/Event;->LOCATION_REPORT:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$14;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLcom/google/android/location/data/NetworkLocation;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 337
    return-void
.end method

.method public addLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/location/os/EventLog$18;

    sget-object v2, Lcom/google/android/location/os/Event;->LOG:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/os/EventLog$18;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 375
    return-void
.end method

.method public addSetPeriod(IZ)V
    .locals 7
    .parameter "periodSecs"
    .parameter "trigger"

    .prologue
    .line 205
    new-instance v0, Lcom/google/android/location/os/EventLog$1;

    sget-object v2, Lcom/google/android/location/os/Event;->SET_PERIOD:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/os/EventLog$1;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JIZ)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 213
    return-void
.end method

.method public addWakeLockAcquire(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 349
    new-instance v0, Lcom/google/android/location/os/EventLog$16;

    sget-object v2, Lcom/google/android/location/os/Event;->WAKELOCK_ACQUIRE:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$16;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JI)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 355
    return-void
.end method

.method public addWakeLockRelease(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 358
    new-instance v0, Lcom/google/android/location/os/EventLog$17;

    sget-object v2, Lcom/google/android/location/os/Event;->WAKELOCK_RELEASE:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$17;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JI)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 364
    return-void
.end method

.method public addWifiScanResults(Lcom/google/android/location/data/WifiScan;)V
    .locals 6
    .parameter "wifiScan"

    .prologue
    .line 293
    new-instance v0, Lcom/google/android/location/os/EventLog$10;

    sget-object v2, Lcom/google/android/location/os/Event;->WIFI_SCAN_RESULTS:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$10;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLcom/google/android/location/data/WifiScan;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 299
    return-void
.end method

.method public addWifiStateChanged(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 302
    new-instance v0, Lcom/google/android/location/os/EventLog$11;

    sget-object v2, Lcom/google/android/location/os/Event;->WIFI_STATE_CHANGED:Lcom/google/android/location/os/Event;

    iget-object v1, p0, Lcom/google/android/location/os/EventLog;->timestamper:Lcom/google/android/location/os/EventLog$Timestamper;

    invoke-interface {v1}, Lcom/google/android/location/os/EventLog$Timestamper;->getNow()J

    move-result-wide v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/EventLog$11;-><init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JZ)V

    invoke-direct {p0, v0}, Lcom/google/android/location/os/EventLog;->addEntry(Lcom/google/android/location/os/EventLog$Entry;)V

    .line 308
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/EventLog$Entry;

    .line 390
    .local v0, entry:Lcom/google/android/location/os/EventLog$Entry;
    iget-object v2, v0, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    iget-object v2, v2, Lcom/google/android/location/os/Event;->kind:Lcom/google/android/location/os/Event$Kind;

    sget-object v3, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    if-ne v2, v3, :cond_0

    .line 391
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 393
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/location/os/EventLog$Entry;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    .end local v0           #entry:Lcom/google/android/location/os/EventLog$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 395
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dump(Ljava/text/Format;JJLjava/io/PrintWriter;)V
    .locals 7
    .parameter "format"
    .parameter "bootTime"
    .parameter "sinceBoot"
    .parameter "out"

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 407
    .local v0, date:Ljava/util/Date;
    const-wide/32 v5, 0x927c0

    sub-long v3, p4, v5

    .line 408
    .local v3, oldest:J
    iget-object v5, p0, Lcom/google/android/location/os/EventLog;->log:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/os/EventLog$Entry;

    .line 409
    .local v1, entry:Lcom/google/android/location/os/EventLog$Entry;
    iget-wide v5, v1, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_0

    .line 412
    iget-object v5, v1, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    iget-object v5, v5, Lcom/google/android/location/os/Event;->kind:Lcom/google/android/location/os/Event$Kind;

    sget-object v6, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    if-ne v5, v6, :cond_1

    .line 413
    const/16 v5, 0xa

    invoke-virtual {p6, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 415
    :cond_1
    invoke-virtual {v0, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 416
    invoke-virtual {v1, p1, v0, p6}, Lcom/google/android/location/os/EventLog$Entry;->dump(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #entry:Lcom/google/android/location/os/EventLog$Entry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #oldest:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 418
    .restart local v0       #date:Ljava/util/Date;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #oldest:J
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2710

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 382
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Lcom/google/android/location/os/EventLog;->dump(Ljava/io/PrintWriter;)V

    .line 384
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
