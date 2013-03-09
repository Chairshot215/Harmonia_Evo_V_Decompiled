.class public abstract enum Ljava/util/concurrent/TimeUnit;
.super Ljava/lang/Enum;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/concurrent/TimeUnit; = null

.field static final C0:J = 0x1L

.field static final C1:J = 0x3e8L

.field static final C2:J = 0xf4240L

.field static final C3:J = 0x3b9aca00L

.field static final C4:J = 0xdf8475800L

.field static final C5:J = 0x34630b8a000L

.field static final C6:J = 0x4e94914f0000L

.field public static final enum DAYS:Ljava/util/concurrent/TimeUnit; = null

.field public static final enum HOURS:Ljava/util/concurrent/TimeUnit; = null

.field static final MAX:J = 0x7fffffffffffffffL

.field public static final enum MICROSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MILLISECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum MINUTES:Ljava/util/concurrent/TimeUnit;

.field public static final enum NANOSECONDS:Ljava/util/concurrent/TimeUnit;

.field public static final enum SECONDS:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/concurrent/TimeUnit$1;

    const-string v1, "NANOSECONDS"

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/TimeUnit$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$2;

    const-string v1, "MICROSECONDS"

    invoke-direct {v0, v1, v4}, Ljava/util/concurrent/TimeUnit$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$3;

    const-string v1, "MILLISECONDS"

    invoke-direct {v0, v1, v5}, Ljava/util/concurrent/TimeUnit$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$4;

    const-string v1, "SECONDS"

    invoke-direct {v0, v1, v6}, Ljava/util/concurrent/TimeUnit$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$5;

    const-string v1, "MINUTES"

    invoke-direct {v0, v1, v7}, Ljava/util/concurrent/TimeUnit$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$6;

    const-string v1, "HOURS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Ljava/util/concurrent/TimeUnit$7;

    const-string v1, "DAYS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/TimeUnit$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/TimeUnit$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static values()[Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->$VALUES:[Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, [Ljava/util/concurrent/TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static x(JJJ)J
    .locals 2

    cmp-long v0, p0, p4

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    neg-long v0, p4

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x8000

    goto :goto_0

    :cond_1
    mul-long v0, p0, p2

    goto :goto_0
.end method


# virtual methods
.method public convert(JLjava/util/concurrent/TimeUnit;)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method abstract excessNanos(JJ)I
.end method

.method public sleep(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    :cond_0
    return-void
.end method

.method public timedJoin(Ljava/lang/Thread;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Thread;->join(JI)V

    :cond_0
    return-void
.end method

.method public timedWait(Ljava/lang/Object;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p2, p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->excessNanos(JJ)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    :cond_0
    return-void
.end method

.method public toDays(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toHours(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMicros(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMillis(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toMinutes(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toNanos(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method

.method public toSeconds(J)J
    .locals 1

    new-instance v0, Ljava/lang/AbstractMethodError;

    invoke-direct {v0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw v0
.end method
