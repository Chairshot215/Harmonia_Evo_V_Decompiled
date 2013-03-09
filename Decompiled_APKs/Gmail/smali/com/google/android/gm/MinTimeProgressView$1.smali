.class Lcom/google/android/gm/MinTimeProgressView$1;
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
    .line 42
    iput-object p1, p0, Lcom/google/android/gm/MinTimeProgressView$1;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressView$1;->this$0:Lcom/google/android/gm/MinTimeProgressView;

    const/16 v1, 0x8

    #calls: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {v0, v1}, Lcom/google/android/gm/MinTimeProgressView;->access$001(Lcom/google/android/gm/MinTimeProgressView;I)V

    .line 45
    return-void
.end method
