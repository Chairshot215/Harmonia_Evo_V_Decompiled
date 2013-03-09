.class Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GservicesConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/GservicesConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GservicesBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 905
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;->this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;Lcom/google/android/googlequicksearchbox/GservicesConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;-><init>(Lcom/google/android/googlequicksearchbox/GservicesConfig;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;->this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;

    #getter for: Lcom/google/android/googlequicksearchbox/GservicesConfig;->mGservicesQueryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->access$300(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/GservicesConfig$GservicesBroadcastReceiver;->this$0:Lcom/google/android/googlequicksearchbox/GservicesConfig;

    #getter for: Lcom/google/android/googlequicksearchbox/GservicesConfig;->mUpdateCacheTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/GservicesConfig;->access$200(Lcom/google/android/googlequicksearchbox/GservicesConfig;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 909
    return-void
.end method
