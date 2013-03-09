.class Lcom/google/android/location/os/EventLog$1;
.super Lcom/google/android/location/os/EventLog$Entry;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/os/EventLog;->addSetPeriod(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/EventLog;

.field final synthetic val$periodSecs:I

.field final synthetic val$trigger:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JIZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$1;->this$0:Lcom/google/android/location/os/EventLog;

    iput p5, p0, Lcom/google/android/location/os/EventLog$1;->val$periodSecs:I

    iput-boolean p6, p0, Lcom/google/android/location/os/EventLog$1;->val$trigger:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    return-void
.end method


# virtual methods
.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 208
    iget v0, p0, Lcom/google/android/location/os/EventLog$1;->val$periodSecs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 209
    const-string v0, " trigger "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/google/android/location/os/EventLog$1;->val$trigger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 211
    return-void
.end method
