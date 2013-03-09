.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 729
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactDetailLayerCarouselActivity"

    const-string v1, "onDestory - close and destroy contact info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoBase;->closeAllCursors()V

    .line 731
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$3;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoBase;->destroy()V

    .line 732
    return-void
.end method
