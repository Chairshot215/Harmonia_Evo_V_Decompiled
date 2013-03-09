.class Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearWakeLockTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;Lcom/google/android/gsf/gtalkservice/Endpoint$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;-><init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    const-string v1, "GTalkService/wake"

    const-string v2, "##### clear wakelock timer fired #####"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->releaseAsyncWakeLock()V

    .line 156
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Endpoint$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->access$108(Lcom/google/android/gsf/gtalkservice/Endpoint;)I

    .line 158
    return-void
.end method
