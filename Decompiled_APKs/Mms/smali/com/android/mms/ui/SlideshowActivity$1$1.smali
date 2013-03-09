.class Lcom/android/mms/ui/SlideshowActivity$1$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideshowActivity$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$1$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #calls: Lcom/android/mms/ui/SlideshowActivity;->releaseBackLightLock()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$1$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$1;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$1;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0, v1, v1}, Lcom/android/mms/ui/SlideshowPresenter;->present(ZZ)V

    .line 118
    return-void
.end method
