.class Lcom/google/android/gm/MinTimeProgressView$2;
.super Ljava/lang/Object;
.source "MinTimeProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MinTimeProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MinTimeProgressView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MinTimeProgressView;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gm/MinTimeProgressView$2;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressView$2;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    #getter for: Lcom/google/android/gm/MinTimeProgressView;->mDismissed:Z
    invoke-static {v0}, Lcom/google/android/gm/MinTimeProgressView;->access$100(Lcom/google/android/gm/MinTimeProgressView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressView$2;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/MinTimeProgressView;->access$202(Lcom/google/android/gm/MinTimeProgressView;J)J

    .line 52
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressView$2;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    const/4 v1, 0x0

    #calls: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/gm/MinTimeProgressView;->access$301(Lcom/google/android/gm/MinTimeProgressView;I)V

    .line 54
    :cond_0
    return-void
.end method
