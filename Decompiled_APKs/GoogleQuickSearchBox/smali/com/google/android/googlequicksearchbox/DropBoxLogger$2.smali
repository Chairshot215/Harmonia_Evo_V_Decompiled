.class Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;
.super Ljava/lang/Object;
.source "DropBoxLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/DropBoxLogger;->addLogEntry(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

.field final synthetic val$entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;->this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;->val$entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;->this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    const/4 v1, 0x0

    #calls: Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->access$100(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Z)V

    .line 321
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;->this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    #getter for: Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mLogEntries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->access$200(Lcom/google/android/googlequicksearchbox/DropBoxLogger;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$2;->val$entry:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->addLogItem(Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntry;)Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    .line 322
    return-void
.end method
