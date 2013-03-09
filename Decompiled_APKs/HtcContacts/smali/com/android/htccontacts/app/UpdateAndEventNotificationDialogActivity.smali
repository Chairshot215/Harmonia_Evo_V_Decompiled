.class public final Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UpdateAndEventNotificationDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_EVENT_ENABLED:Ljava/lang/String; = "EVENT_ENABLED"

.field public static final EXTRA_UPDATE_ENABLED:Ljava/lang/String; = "UPDATE_ENABLED"

.field private static final TAG:Ljava/lang/String; = "UpdateAndEventNotificationDialogActivity"


# instance fields
.field protected mHtcAlert:Lcom/htc/app/HtcAlertController;

.field protected mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

.field protected mListView:Landroid/widget/ListView;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 101
    if-ne p2, v7, :cond_0

    move v1, v4

    .line 102
    .local v1, positiveResult:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 103
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "EVENT_ENABLED"

    iget-object v3, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v6, "UPDATE_ENABLED"

    iget-object v3, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v7, v2}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    iget-object v6, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "une_event"

    iget-object v3, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v3, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "une_update"

    iget-object v7, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_4
    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PEOPLE_UNE_NOTIFICATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    .end local v0           #i:Landroid/content/Intent;
    .end local v2           #resultIntent:Landroid/content/Intent;
    :goto_5
    invoke-virtual {p0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->finish()V

    .line 117
    return-void

    .end local v1           #positiveResult:Z
    :cond_0
    move v1, v5

    .line 101
    goto :goto_0

    .restart local v1       #positiveResult:Z
    .restart local v2       #resultIntent:Landroid/content/Intent;
    :cond_1
    move v3, v5

    .line 104
    goto :goto_1

    :cond_2
    move v3, v5

    .line 105
    goto :goto_2

    :cond_3
    move v3, v5

    .line 108
    goto :goto_3

    :cond_4
    move v4, v5

    .line 109
    goto :goto_4

    .line 113
    .end local v2           #resultIntent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->setResult(I)V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->requestWindowFeature(I)Z

    .line 60
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 62
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    new-instance v4, Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-direct {v4, p0, p0, v7}, Lcom/htc/app/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    .line 65
    new-instance v4, Lcom/htc/app/HtcAlertController$AlertParams;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 67
    iget-object v3, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 68
    .local v3, p:Lcom/htc/app/HtcAlertController$AlertParams;
    iput-boolean v5, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    .line 69
    const v4, 0x7f0a00d6

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 70
    iput-object p0, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    const v4, 0x7f0a010c

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 74
    new-array v4, v8, [Ljava/lang/CharSequence;

    iput-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 75
    iget-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v7, 0x7f0a0036

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 76
    iget-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v7, 0x7f0a0037

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0a0035

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->setupAlert()V

    .line 82
    iget-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v4}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    .line 83
    iget-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "une_event"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, isEventEnabled:I
    iget-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "une_update"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 90
    .local v2, isUpdateEnabled:I
    iget-object v7, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    if-ne v1, v5, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v6, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 91
    iget-object v4, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mListView:Landroid/widget/ListView;

    if-ne v2, v5, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 92
    return-void

    :cond_1
    move v4, v6

    .line 90
    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 96
    iget-object v0, p0, Lcom/android/htccontacts/app/UpdateAndEventNotificationDialogActivity;->mHtcAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->installContent()V

    .line 97
    return-void
.end method
