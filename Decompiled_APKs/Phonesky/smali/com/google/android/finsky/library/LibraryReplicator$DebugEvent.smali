.class Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugEvent"
.end annotation


# instance fields
.field private libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

.field private tag:Ljava/lang/String;

.field private timestampMs:J

.field private type:I

.field private volleyError:Lcom/android/volley/VolleyError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;-><init>()V

    return-void
.end method

.method static synthetic access$1502(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput-wide p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->timestampMs:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->type:I

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->volleyError:Lcom/android/volley/VolleyError;

    return-object p1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 563
    packed-switch p0, :pswitch_data_0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (FIXME)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 565
    :pswitch_0
    const-string v0, "APPLY_LIBRARY_UPDATE"

    goto :goto_0

    .line 567
    :pswitch_1
    const-string v0, "SCHEDULE_REPLICATION"

    goto :goto_0

    .line 569
    :pswitch_2
    const-string v0, "REPLICATE"

    goto :goto_0

    .line 571
    :pswitch_3
    const-string v0, "ERROR_VOLLEY"

    goto :goto_0

    .line 573
    :pswitch_4
    const-string v0, "ERROR_TOKEN_CHANGED"

    goto :goto_0

    .line 575
    :pswitch_5
    const-string v0, "ERROR_UNSUPPORTED_LIBRARY"

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public dumpState(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 585
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Event {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->type:I

    invoke-static {v2}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  timestampMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->timestampMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MM-dd hh:mm:ss"

    iget-wide v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->timestampMs:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    if-eqz v0, :cond_1

    .line 594
    const-string v0, "LibraryUpdate"

    const-class v1, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    invoke-static {v0, v1, v2}, Lcom/google/android/volley/MicroProtoPrinter;->prettyPrint(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v0, "FinskyLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  libraryUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 599
    const-string v4, "FinskyLibrary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->volleyError:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_2

    .line 603
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  volleyError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->volleyError:Lcom/android/volley/VolleyError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2
    const-string v0, "FinskyLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method
