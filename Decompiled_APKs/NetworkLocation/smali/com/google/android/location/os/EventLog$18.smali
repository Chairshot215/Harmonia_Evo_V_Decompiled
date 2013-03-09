.class Lcom/google/android/location/os/EventLog$18;
.super Lcom/google/android/location/os/EventLog$Entry;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/location/os/EventLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/os/EventLog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/EventLog;Lcom/google/android/location/os/Event;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$18;->this$0:Lcom/google/android/location/os/EventLog;

    iput-object p5, p0, Lcom/google/android/location/os/EventLog$18;->val$tag:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/location/os/EventLog$18;->val$msg:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/EventLog$Entry;-><init>(Lcom/google/android/location/os/Event;J)V

    return-void
.end method


# virtual methods
.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/location/os/EventLog$18;->val$tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 372
    iget-object v0, p0, Lcom/google/android/location/os/EventLog$18;->val$msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    return-void
.end method
