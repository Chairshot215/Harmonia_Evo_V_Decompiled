.class Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;
.super Landroid/os/AsyncTask;
.source "DropBoxLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/DropBoxLogger;->maybeFlushLogs(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

.field final synthetic val$entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/DropBoxLogger;Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->val$entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 267
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->this$0:Lcom/google/android/googlequicksearchbox/DropBoxLogger;

    #getter for: Lcom/google/android/googlequicksearchbox/DropBoxLogger;->mDropboxManager:Landroid/os/DropBoxManager;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/DropBoxLogger;->access$000(Lcom/google/android/googlequicksearchbox/DropBoxLogger;)Landroid/os/DropBoxManager;

    move-result-object v0

    const-string v1, "qsb_event"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/DropBoxLogger$1;->val$entries:Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/QsbLogProto$LogEntrySet;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method
