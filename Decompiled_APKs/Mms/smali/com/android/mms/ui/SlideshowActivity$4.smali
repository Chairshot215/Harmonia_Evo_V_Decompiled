.class Lcom/android/mms/ui/SlideshowActivity$4;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->access$900()Lcom/android/mms/ui/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->access$900()Lcom/android/mms/ui/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaController;->show()V

    .line 288
    :cond_0
    return-void
.end method
