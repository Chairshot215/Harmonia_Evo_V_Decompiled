.class Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;

.field final synthetic val$progressBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;->this$1:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;

    iput-object p2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;->val$progressBar:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;->val$progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    invoke-static {}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactDetailLayerCarouselActivity"

    const-string v1, "Hide contact card loading layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_0
    return-void
.end method
