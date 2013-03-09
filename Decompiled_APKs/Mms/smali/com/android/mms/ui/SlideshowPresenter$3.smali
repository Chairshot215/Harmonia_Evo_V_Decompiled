.class Lcom/android/mms/ui/SlideshowPresenter$3;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->goForward()V

    .line 494
    return-void
.end method
