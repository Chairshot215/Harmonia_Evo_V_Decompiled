.class final Lcom/google/android/feedback/SystemLogFetcher$1;
.super Ljava/lang/Object;
.source "SystemLogFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feedback/SystemLogFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 49
    #calls: Lcom/google/android/feedback/SystemLogFetcher;->killLogcat()V
    invoke-static {}, Lcom/google/android/feedback/SystemLogFetcher;->access$000()V

    .line 50
    return-void
.end method
