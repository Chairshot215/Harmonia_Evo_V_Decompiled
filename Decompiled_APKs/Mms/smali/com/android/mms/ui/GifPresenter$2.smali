.class Lcom/android/mms/ui/GifPresenter$2;
.super Ljava/lang/Object;
.source "GifPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/GifPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/GifPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/GifPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/mms/ui/GifPresenter$2;->this$0:Lcom/android/mms/ui/GifPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/GifPresenter$2;->this$0:Lcom/android/mms/ui/GifPresenter;

    #calls: Lcom/android/mms/ui/GifPresenter;->DisplayNextFrame()V
    invoke-static {v0}, Lcom/android/mms/ui/GifPresenter;->access$900(Lcom/android/mms/ui/GifPresenter;)V

    .line 227
    return-void
.end method
