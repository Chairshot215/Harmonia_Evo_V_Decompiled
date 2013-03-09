.class final Lcom/google/android/feedback/SystemLogFetcher$2;
.super Ljava/lang/Object;
.source "SystemLogFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/SystemLogFetcher;->reportResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventLog:Ljava/lang/String;

.field final synthetic val$systemLog:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/feedback/SystemLogFetcher$2;->val$systemLog:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/feedback/SystemLogFetcher$2;->val$eventLog:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->access$200()Lcom/google/android/feedback/SystemLogFetcher$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->access$200()Lcom/google/android/feedback/SystemLogFetcher$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/feedback/SystemLogFetcher$2;->val$systemLog:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/feedback/SystemLogFetcher$2;->val$eventLog:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/feedback/SystemLogFetcher$Listener;->onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
