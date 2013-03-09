.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;
.super Ljava/lang/Object;
.source "DcbDebugActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;

    #calls: Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->updateStatus()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;->access$000(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugActivity;)V

    .line 63
    return-void
.end method
