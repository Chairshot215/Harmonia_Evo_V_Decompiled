.class public Lcom/google/android/finsky/activities/PinEntryDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PinEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# instance fields
.field private mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mMatchPin:Ljava/lang/String;

.field private mPinEntryView:Landroid/widget/EditText;

.field private mPinWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 147
    new-instance v0, Lcom/google/android/finsky/activities/PinEntryDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PinEntryDialog$1;-><init>(Lcom/google/android/finsky/activities/PinEntryDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PinEntryDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/PinEntryDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "prompt-string-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "pin-to-match"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "result-key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "allow-remove-pin"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method private getUserPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setPinResult(Ljava/lang/String;)V
    .locals 5
    .parameter "resultPin"

    .prologue
    const/4 v4, -0x1

    .line 166
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "result-key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, resultKey:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v4, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(ILandroid/content/Intent;)V

    .line 174
    .end local v0           #result:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    goto :goto_0
.end method

.method private syncOkButtonState()V
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 185
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 186
    return-void

    .line 184
    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801a7

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v5, 0x7f0400cd

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "prompt-string-id"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 79
    .local v2, promptId:I
    const-string v5, "pin-to-match"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    .line 80
    const-string v5, "allow-remove-pin"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    .local v0, allowRemovePin:Z
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    .line 82
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    .line 85
    const v5, 0x7f0801a5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    .local v3, promptView:Landroid/widget/TextView;
    const v5, 0x7f0801a6

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    .line 87
    const v5, 0x7f080069

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    .line 89
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v6, 0x7f0701c2

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    .line 91
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v6, 0x7f0701c3

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    .line 92
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    .line 94
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const v5, 0x7f0801a7

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PinEntryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 98
    .local v4, removePinButton:Landroid/widget/Button;
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .end local v4           #removePinButton:Landroid/widget/Button;
    :cond_0
    if-nez p1, :cond_1

    .line 102
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v6, "pinLock.shown"

    invoke-interface {v5, v8, v8, v6}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v6, "pinLock.shown"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_1
    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v1, "pinLock.canceled"

    invoke-interface {v0, v2, v2, v1}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v1, "pinLock.canceled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/PinEntryDialog;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    .line 131
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->getUserPin()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, userPin:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mMatchPin:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v2, "pinLock.failure"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v2, "pinLock.failure"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mPinEntryView:Landroid/widget/EditText;

    const v2, 0x7f0701d3

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PinEntryDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mAnalytics:Lcom/google/android/finsky/analytics/Analytics;

    const-string v2, "pinLock.success"

    invoke-interface {v1, v3, v3, v2}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/activities/PinEntryDialog;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v2, "pinLock.success"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PinEntryDialog;->setPinResult(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PinEntryDialog;->syncOkButtonState()V

    .line 145
    return-void
.end method
