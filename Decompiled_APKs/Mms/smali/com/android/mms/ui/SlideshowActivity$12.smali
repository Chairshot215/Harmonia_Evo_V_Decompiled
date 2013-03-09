.class Lcom/android/mms/ui/SlideshowActivity$12;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$12;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$12;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$12;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, type:Ljava/lang/String;
    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$12;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 712
    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->access$900()Lcom/android/mms/ui/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MediaController;->hide()V

    .line 713
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$12;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 715
    :cond_0
    return-void
.end method
