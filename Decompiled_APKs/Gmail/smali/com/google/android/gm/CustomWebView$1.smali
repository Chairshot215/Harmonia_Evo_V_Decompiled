.class Lcom/google/android/gm/CustomWebView$1;
.super Ljava/lang/Object;
.source "CustomWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/CustomWebView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/CustomWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gm/CustomWebView$1;->this$0:Lcom/google/android/gm/CustomWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView$1;->this$0:Lcom/google/android/gm/CustomWebView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/CustomWebView;->mUseSoftwareLayer:Z
    invoke-static {v0, v1}, Lcom/google/android/gm/CustomWebView;->access$002(Lcom/google/android/gm/CustomWebView;Z)Z

    .line 49
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView$1;->this$0:Lcom/google/android/gm/CustomWebView;

    #calls: Lcom/google/android/gm/CustomWebView;->destroyBitmap()V
    invoke-static {v0}, Lcom/google/android/gm/CustomWebView;->access$100(Lcom/google/android/gm/CustomWebView;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gm/CustomWebView$1;->this$0:Lcom/google/android/gm/CustomWebView;

    invoke-virtual {v0}, Lcom/google/android/gm/CustomWebView;->invalidate()V

    .line 51
    return-void
.end method
