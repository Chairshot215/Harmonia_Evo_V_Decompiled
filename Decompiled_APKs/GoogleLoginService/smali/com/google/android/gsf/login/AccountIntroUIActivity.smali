.class public Lcom/google/android/gsf/login/AccountIntroUIActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "AccountIntroUIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCommonMessage:Landroid/widget/TextView;

.field private mCreateButton:Landroid/widget/Button;

.field private mLearnMoreButton:Landroid/widget/ImageButton;

.field private mNextButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private getGmailTeaser()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 133
    const v0, 0x7f0800df

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getGmailHost(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v4, :cond_5

    const/high16 v4, 0x7f03

    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const v4, 0x7f0c000a

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    .line 59
    const v4, 0x7f0c0008

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    .line 60
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v4, 0x7f0c0003

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    .line 63
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_0
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    .line 68
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 69
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_1
    const v4, 0x7f0c0002

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    .line 74
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v3, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 79
    .local v3, options:Landroid/os/Bundle;
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCommonMessage:Landroid/widget/TextView;

    .line 80
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCommonMessage:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getGmailTeaser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0800de

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, msg:Ljava/lang/String;
    const-string v4, "introMessage"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    const-string v4, "GLSActivity"

    const-string v5, "AccountSetupActivity: setting custom intro message"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "introMessage"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getGmailTeaser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mCommonMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v5, "allowSkip"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 92
    .local v0, allowSkip:Z
    const-string v4, "customTitleGoogle"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 93
    const-string v4, "GLSActivity"

    const-string v5, "AccountSetupActivity: setting Required mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f0800da

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 101
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :goto_2
    return-void

    .line 53
    .end local v0           #allowSkip:Z
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #options:Landroid/os/Bundle;
    :cond_5
    const v4, 0x7f030001

    goto/16 :goto_0

    .line 95
    .restart local v0       #allowSkip:Z
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #options:Landroid/os/Bundle;
    :cond_6
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-nez v4, :cond_4

    .line 96
    const-string v4, "GLSActivity"

    const-string v5, "AccountSetupActivity: setting Recommended mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f0800db

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :cond_7
    iget-object v4, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected disableBackKey()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    .line 129
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onBackPressed()V

    .line 130
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->finish()V

    .line 124
    :goto_1
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 112
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/AccountIntroUIActivity;->mLearnMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LearnMoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "title_id"

    const v2, 0x7f0800e3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "msg_id"

    const v2, 0x7f0800dc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 121
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->initView()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gsf/login/AccountIntroUIActivity;->overrideAllowBackHardkey()V

    .line 41
    return-void
.end method
