.class Lcom/android/mms/ui/SlideshowActivity$8;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
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
    .line 404
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/mms/ui/SlideshowActivity;->IsView:Z
    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1102(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 410
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const-class v2, Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRACT_UNDER_PLAYING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1200(Lcom/android/mms/ui/SlideshowActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 417
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->RESUME_PLAY:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1300(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$8;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    #getter for: Lcom/android/mms/ui/SlideshowActivity;->NONE_PLAY:I
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1400(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
