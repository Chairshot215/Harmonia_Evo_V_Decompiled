.class public Lcom/google/android/location/data/LocatorResult;
.super Ljava/lang/Object;
.source "LocatorResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/data/LocatorResult$ResultStatus;
    }
.end annotation


# static fields
.field public static SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/data/LocatorResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final position:Lcom/google/android/location/data/Position;

.field public final reportTime:J

.field public final status:Lcom/google/android/location/data/LocatorResult$ResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/location/data/LocatorResult$1;

    invoke-direct {v0}, Lcom/google/android/location/data/LocatorResult$1;-><init>()V

    sput-object v0, Lcom/google/android/location/data/LocatorResult;->SAVER:Lcom/google/android/location/data/Persistent;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/data/Position;Lcom/google/android/location/data/LocatorResult$ResultStatus;J)V
    .locals 3
    .parameter "position"
    .parameter "status"
    .parameter "reportTime"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    .line 38
    iput-object p2, p0, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    .line 39
    iput-wide p3, p0, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    .line 40
    sget-object v2, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    if-ne p2, v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 40
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 43
    :cond_2
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/LocatorResult;)V
    .locals 2
    .parameter "sb"
    .parameter "locatorResult"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "LocatorResult [position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    invoke-static {p0, v0}, Lcom/google/android/location/data/Position;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/Position;)V

    .line 58
    const-string v0, ", status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, ", reportTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v0, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/LocatorResult;)V
    .locals 2
    .parameter "out"
    .parameter "locatorResult"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "LocatorResult [position="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    invoke-static {p0, v0}, Lcom/google/android/location/data/Position;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/Position;)V

    .line 72
    const-string v0, ", status="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget-object v0, p1, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 74
    const-string v0, ", reportTime="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p1, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 76
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocatorResult [position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/LocatorResult;->position:Lcom/google/android/location/data/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/LocatorResult;->status:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/data/LocatorResult;->reportTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
