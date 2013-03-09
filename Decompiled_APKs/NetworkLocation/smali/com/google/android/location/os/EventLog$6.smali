.class Lcom/google/android/location/os/EventLog$6;
.super Lcom/google/android/location/os/EventLog$Entry;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/os/EventLog;->addCellSignalStrength(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/EventLog;

.field final synthetic val$strength:I


# direct methods
.method constructor <init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JI)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$6;->this$0:Lcom/google/android/location/os/EventLog;

    iput p5, p0, Lcom/google/android/location/os/EventLog$6;->val$strength:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    return-void
.end method


# virtual methods
.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 260
    iget v0, p0, Lcom/google/android/location/os/EventLog$6;->val$strength:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 261
    return-void
.end method
