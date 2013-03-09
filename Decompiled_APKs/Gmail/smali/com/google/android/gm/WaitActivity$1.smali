.class Lcom/google/android/gm/WaitActivity$1;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/WaitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$1;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$1;->this$0:Lcom/google/android/gm/WaitActivity;

    #calls: Lcom/google/android/gm/WaitActivity;->showWaitingToSyncMessage()V
    invoke-static {v0}, Lcom/google/android/gm/WaitActivity;->access$000(Lcom/google/android/gm/WaitActivity;)V

    .line 76
    return-void
.end method
