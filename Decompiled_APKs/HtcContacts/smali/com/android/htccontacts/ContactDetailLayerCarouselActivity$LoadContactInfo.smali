.class public Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;
.super Ljava/lang/Object;
.source "ContactDetailLayerCarouselActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadContactInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1192
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1193
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoBase;->buildAllInfo()V

    .line 1194
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mLoadComplete:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->access$1102(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;Z)Z

    .line 1198
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1200
    .local v0, progressBar:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1203
    .local v1, visibility:I
    const/16 v2, 0x8

    if-eq v2, v1, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;->this$0:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;

    invoke-direct {v3, p0, v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo$1;-><init>(Lcom/android/htccontacts/ContactDetailLayerCarouselActivity$LoadContactInfo;Landroid/view/View;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    .end local v0           #progressBar:Landroid/view/View;
    .end local v1           #visibility:I
    :cond_0
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v2

    goto :goto_0
.end method
