.class Lcom/google/android/googlequicksearchbox/GservicesConfig$1;
.super Ljava/lang/Object;
.source "GservicesConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/GservicesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;->this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig$1;->this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;

    #calls: Lcom/google/android/googlequicksearchbox/GservicesConfig;->updateCache()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->access$000(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V

    .line 393
    return-void
.end method
