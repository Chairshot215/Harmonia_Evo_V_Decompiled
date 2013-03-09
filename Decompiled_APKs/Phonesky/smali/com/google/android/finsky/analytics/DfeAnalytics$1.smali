.class Lcom/google/android/finsky/analytics/DfeAnalytics$1;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Log$LogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

.field final synthetic val$currentLogCount:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$1;->this$0:Lcom/google/android/finsky/analytics/DfeAnalytics;

    iput p2, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$1;->val$currentLogCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 150
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "Logged %d analytics events successfully."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/analytics/DfeAnalytics$1;->val$currentLogCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/analytics/DfeAnalytics$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)V

    return-void
.end method
