.class public Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;
.super Ljava/lang/Object;
.source "MyContactLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadContactInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    iget-object v0, v0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcProfileContactInfo;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcProfileContactInfo;->buildAllInfo()V

    .line 353
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mLoadComplete:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$102(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;Z)Z

    .line 355
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    #getter for: Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$200(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_0
    return-void
.end method
