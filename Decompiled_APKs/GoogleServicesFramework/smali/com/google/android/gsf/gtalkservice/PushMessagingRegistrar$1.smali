.class Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;
.super Ljava/lang/Object;
.source "PushMessagingRegistrar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;->this$0:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 637
    return-void
.end method
