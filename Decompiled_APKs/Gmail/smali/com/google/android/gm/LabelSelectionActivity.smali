.class public Lcom/google/android/gm/LabelSelectionActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "LabelSelectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/LabelItemView$DropHandler;
.implements Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAppWidgetId:I

.field private mConfigureShortcut:Z

.field private mConfigureWidget:Z

.field private mSelectedLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAppWidgetId:I

    return-void
.end method

.method private createWidget()V
    .locals 4

    .prologue
    .line 181
    iget v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAppWidgetId:I

    iget-object v2, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/LabelSelectionActivity;->mSelectedLabel:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gm/widget/GmailWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, result:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gm/LabelSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->finish()V

    .line 186
    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSelectionActivity;->setResult(I)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->finish()V

    .line 110
    return-void
.end method


# virtual methods
.method public handleDrop(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter "event"
    .parameter "label"

    .prologue
    .line 201
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/android/gm/LabelSelectionActivity;->createWidget()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/LabelSelectionActivity;->doCancel()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/LabelSelectionActivity;->doCancel()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0f00ab
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v6, 0x7f04003f

    invoke-virtual {p0, v6}, Lcom/google/android/gm/LabelSelectionActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 56
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureShortcut:Z

    .line 58
    const-string v6, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureWidget:Z

    .line 59
    iget-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureShortcut:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureWidget:Z

    if-nez v6, :cond_0

    .line 60
    const-string v6, "Gmail"

    const-string v7, "unexpected intent: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 62
    :cond_0
    iget-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureShortcut:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureWidget:Z

    if-eqz v6, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 64
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_2

    .line 65
    const v6, 0x7f030001

    invoke-virtual {v1, v6}, Landroid/app/ActionBar;->setIcon(I)V

    .line 69
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :cond_2
    iget-boolean v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureWidget:Z

    if-eqz v6, :cond_3

    .line 70
    const-string v6, "appWidgetId"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAppWidgetId:I

    .line 72
    iget v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAppWidgetId:I

    if-nez v6, :cond_3

    .line 73
    const-string v6, "Gmail"

    const-string v7, "invalid widgetId"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    :cond_3
    const-string v6, "account-shortcut"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    .line 78
    const v6, 0x7f0f00ab

    invoke-virtual {p0, v6}, Lcom/google/android/gm/LabelSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 79
    .local v2, cancelButton:Landroid/widget/Button;
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 83
    .local v4, fragmentTransaction:Landroid/app/FragmentTransaction;
    iget-object v6, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/LabelListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gm/LabelListFragment;

    move-result-object v3

    .line 85
    .local v3, fragment:Landroid/app/Fragment;
    const v6, 0x7f0f00a5

    invoke-virtual {v4, v6, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 86
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 87
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gm/GmailBaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_0
    return-object v0

    .line 117
    .restart local v0       #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Lcom/google/android/gm/SyncForWidgetDialog;

    .end local v0           #dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/LabelSelectionActivity;->mSelectedLabel:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/google/android/gm/SyncForWidgetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f04003c
        :pswitch_0
    .end packed-switch
.end method

.method public onLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 191
    return-void
.end method

.method public onLabelSelected(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mSelectedLabel:Ljava/lang/String;

    .line 128
    iget-boolean v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureShortcut:Z

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/google/android/gm/Utils;->createViewConversationIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Landroid/content/Intent;

    move-result-object v1

    .line 136
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f030001

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/google/android/gm/provider/LabelManager;->getFreshLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 148
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/android/gm/ShortcutNameActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/high16 v3, 0x4200

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    const-string v3, "extra_label_click_intent"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    const-string v0, "extra_shortcut_name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/android/gm/LabelSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->finish()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/LabelSelectionActivity;->mConfigureWidget:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSelectionActivity;->showDialog(I)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/LabelSelectionActivity;->createWidget()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 95
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/LabelSelectionActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gm/persistence/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public supportsDrag(Landroid/view/DragEvent;Lcom/google/android/gm/provider/Label;)Z
    .locals 1
    .parameter "event"
    .parameter "label"

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
