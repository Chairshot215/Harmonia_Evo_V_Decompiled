.class Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountRecentLabelSpinner.java"

# interfaces
.implements Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;
.implements Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;",
        "Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;"
    }
.end annotation


# instance fields
.field private final mNotSyncedString:Ljava/lang/String;

.field private mShowAccounts:Z

.field final synthetic this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/AccountRecentLabelSpinner;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    .line 382
    const v0, 0x7f040003

    const v1, 0x7f0f0010

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 383
    const v0, 0x7f0c015f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 384
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public canSelect(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->mShowAccounts:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 420
    const v5, 0x7f040002

    .line 421
    .local v5, res:I
    invoke-virtual {p0, v5}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->setDropDownViewResource(I)V

    .line 422
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 424
    .local v8, view:Landroid/view/View;
    const v9, 0x7f0f0012

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 425
    .local v7, unreadView:Landroid/widget/TextView;
    const v9, 0x7f0f0011

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 428
    .local v4, inboxView:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 429
    .local v0, accountName:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v9}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->getAccountInboxMap()Ljava/util/Map;

    move-result-object v2

    .line 430
    .local v2, inboxMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gm/provider/Label;

    move-object v1, v9

    .line 431
    .local v1, inboxLabel:Lcom/google/android/gm/provider/Label;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, inboxName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    if-eqz v1, :cond_4

    .line 436
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->labelCountsInitialized()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getNumUnreadConversations()I

    move-result v6

    .line 439
    .local v6, unreadCount:I
    :goto_2
    if-lez v6, :cond_3

    .line 440
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/google/android/gm/Utils;->getUnreadCountString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    .end local v6           #unreadCount:I
    :goto_3
    return-object v8

    .line 430
    .end local v1           #inboxLabel:Lcom/google/android/gm/provider/Label;
    .end local v3           #inboxName:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 431
    .restart local v1       #inboxLabel:Lcom/google/android/gm/provider/Label;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->mNotSyncedString:Ljava/lang/String;

    goto :goto_1

    .restart local v3       #inboxName:Ljava/lang/String;
    :cond_2
    move v6, v10

    .line 436
    goto :goto_2

    .line 443
    .restart local v6       #unreadCount:I
    :cond_3
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 446
    .end local v6           #unreadCount:I
    :cond_4
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 459
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mCurrentAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$900(Lcom/google/android/gm/AccountRecentLabelSpinner;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->getAccountInboxMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->getAccountInboxMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Label;

    move-object v0, v1

    .line 463
    .local v0, inboxLabel:Lcom/google/android/gm/provider/Label;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->getCurrentLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->navigateToLabel(Ljava/lang/String;)V

    .line 470
    .end local v0           #inboxLabel:Lcom/google/android/gm/provider/Label;
    :cond_0
    :goto_1
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->this$0:Lcom/google/android/gm/AccountRecentLabelSpinner;

    #getter for: Lcom/google/android/gm/AccountRecentLabelSpinner;->mController:Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
    invoke-static {v1}, Lcom/google/android/gm/AccountRecentLabelSpinner;->access$500(Lcom/google/android/gm/AccountRecentLabelSpinner;)Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;->navigateToAccount(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->notifyDataSetChanged()V

    .line 480
    return-void
.end method

.method public onShowPopup()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method public setAccounts([Ljava/lang/String;)V
    .locals 2
    .parameter "accounts"

    .prologue
    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->clear()V

    .line 388
    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->mShowAccounts:Z

    .line 389
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->addAll([Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gm/AccountRecentLabelSpinner$AccountAdapter;->notifyDataSetChanged()V

    .line 391
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
