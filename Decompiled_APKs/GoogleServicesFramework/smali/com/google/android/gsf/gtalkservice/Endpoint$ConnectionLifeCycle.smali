.class Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
.super Ljava/lang/Object;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionLifeCycle"
.end annotation


# instance fields
.field mConnectionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field mConnectionUptime:J

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionEvents:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    return-void
.end method


# virtual methods
.method appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 9
    .parameter "out"

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x0

    .line 1451
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;

    .line 1452
    .local v0, e:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 1454
    const-string v3, "] "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    .end local v0           #e:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionEvent;
    :cond_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    const/4 v2, 0x0

    .line 1461
    .local v2, updateTimeStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    #getter for: Lcom/google/android/gsf/gtalkservice/Endpoint;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->access$300(Lcom/google/android/gsf/gtalkservice/Endpoint;)Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;

    move-result-object v3

    if-eq p0, v3, :cond_4

    .line 1462
    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 1463
    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->mConnectionUptime:J

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 1472
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection uptime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    :cond_2
    return-void

    .line 1465
    :cond_3
    const-string v2, "0"

    goto :goto_1

    .line 1467
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    #getter for: Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->access$400(Lcom/google/android/gsf/gtalkservice/Endpoint;)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ConnectionLifeCycle;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    #getter for: Lcom/google/android/gsf/gtalkservice/Endpoint;->mConnectionStartTime:J
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/Endpoint;->access$400(Lcom/google/android/gsf/gtalkservice/Endpoint;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
