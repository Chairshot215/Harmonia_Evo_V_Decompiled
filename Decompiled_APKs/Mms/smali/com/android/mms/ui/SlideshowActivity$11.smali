.class Lcom/android/mms/ui/SlideshowActivity$11;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onResume()V
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
    .line 520
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$11;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 523
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$11;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 525
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$11;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    .line 527
    return-void
.end method
