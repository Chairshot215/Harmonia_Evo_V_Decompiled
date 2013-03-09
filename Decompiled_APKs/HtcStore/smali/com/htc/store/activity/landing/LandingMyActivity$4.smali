.class Lcom/htc/store/activity/landing/LandingMyActivity$4;
.super Ljava/lang/Object;
.source "LandingMyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x2

    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, doUpdate:Z
    packed-switch p2, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 524
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1000(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/store/module/PreferenceManager;->setFilterTypeInMyActivity(I)V

    .line 525
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilter:Landroid/widget/Filter;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1100(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/widget/Filter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilter:Landroid/widget/Filter;
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1100(Lcom/htc/store/activity/landing/LandingMyActivity;)Landroid/widget/Filter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    iget-object v2, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v2

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->setSecondaryTitle(I)V
    invoke-static {v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1200(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 530
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 531
    return-void

    .line 496
    :pswitch_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$902(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 498
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    :pswitch_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 510
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$902(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 511
    const/4 v0, 0x1

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$900(Lcom/htc/store/activity/landing/LandingMyActivity;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 518
    iget-object v1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$4;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mFilterType:I
    invoke-static {v1, v2}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$902(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 519
    const/4 v0, 0x1

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
