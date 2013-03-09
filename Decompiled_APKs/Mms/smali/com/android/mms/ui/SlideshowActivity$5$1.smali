.class Lcom/android/mms/ui/SlideshowActivity$5$1;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideshowActivity$5;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$5$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$5$1;->this$1:Lcom/android/mms/ui/SlideshowActivity$5;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->present(ZZ)V

    .line 339
    return-void
.end method
