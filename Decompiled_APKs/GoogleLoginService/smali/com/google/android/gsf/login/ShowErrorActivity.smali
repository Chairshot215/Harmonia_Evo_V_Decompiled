.class public final Lcom/google/android/gsf/login/ShowErrorActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ShowErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/ShowErrorActivity$1;
    }
.end annotation


# instance fields
.field private mClearNotifications:Z

.field private mExplanation:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mSkipButton:Landroid/widget/Button;

.field private mSubmissionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 282
    packed-switch p1, :pswitch_data_0

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 290
    :goto_0
    return-void

    .line 284
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 233
    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 239
    sget-object v1, Lcom/google/android/gsf/login/ShowErrorActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 275
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    .line 278
    :goto_0
    return-void

    .line 241
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.google.android.apps.enterprise.dmagent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    const-string v0, "GLSActivity"

    const-string v1, "Market not found for dmagent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 255
    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 258
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    const/16 v1, 0x3fd

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/ShowErrorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 264
    :sswitch_2
    iget-boolean v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mAddAccount:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 265
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    const v11, 0x7f08000d

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 65
    const v7, 0x7f03001a

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setContentView(I)V

    .line 66
    const v7, 0x7f0c0044

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    .line 67
    const v7, 0x7f0c0045

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    .line 69
    const v7, 0x7f0c0008

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    .line 70
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v7, 0x7f0c000a

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    .line 74
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 78
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "clearNotification"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mClearNotifications:Z

    .line 80
    const-string v7, "title"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    const-string v7, "label"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, label:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 87
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    invoke-static {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v5

    .line 91
    .local v5, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    const-string v7, "GLSActivity"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    const-string v7, "GLSActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ShowError: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/google/android/gsf/loginservice/GLSUser$Status;->resource:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    sget-object v7, Lcom/google/android/gsf/login/ShowErrorActivity$1;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 188
    iget v7, v5, Lcom/google/android/gsf/loginservice/GLSUser$Status;->resource:I

    if-eqz v7, :cond_a

    .line 190
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    iget v8, v5, Lcom/google/android/gsf/loginservice/GLSUser$Status;->resource:I

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-static {p0, v7, v8}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->onIntentDone(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    return-void

    .line 99
    :pswitch_0
    const v7, 0x7f080115

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, buttonLabel:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v7, 0x7f080114

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, detail:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    .end local v0           #buttonLabel:Ljava/lang/String;
    .end local v1           #detail:Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v8, 0x7f080148

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    goto :goto_0

    .line 118
    :pswitch_2
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(I)V

    .line 120
    invoke-virtual {p0, v13}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 121
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 122
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v9, 0x7f0800bf

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v11, v11, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    goto/16 :goto_0

    .line 138
    :pswitch_4
    const v7, 0x7f080141

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-boolean v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mAddAccount:Z

    if-eqz v7, :cond_4

    .line 140
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v9, 0x7f080096

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSkipButton:Landroid/widget/Button;

    const v8, 0x7f080011

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 143
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNextButton:Landroid/widget/Button;

    const v8, 0x7f08001a

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 145
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v8, 0x7f08011a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 150
    :pswitch_5
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v9, 0x7f0800c3

    invoke-virtual {p0, v9}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v11, v11, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v7, 0x7f0800c2

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0, v12}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    goto/16 :goto_0

    .line 162
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->hasNetworkConnection()Z

    move-result v7

    if-nez v7, :cond_5

    .line 163
    .local v4, noNetwork:Z
    :goto_1
    if-eqz v4, :cond_7

    .line 166
    const v8, 0x320ce

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 167
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/gsf/login/Compat;->isWifiOnlyBuild()Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f080095

    :goto_2
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v7, 0x7f080093

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v4           #noNetwork:Z
    :cond_5
    move v4, v8

    .line 162
    goto :goto_1

    .line 167
    .restart local v4       #noNetwork:Z
    :cond_6
    const v7, 0x7f080094

    goto :goto_2

    .line 170
    :cond_7
    sget-object v7, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v5, v7, :cond_8

    .line 171
    const v8, 0x320cc

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v8, 0x7f080028

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v7, 0x7f080027

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v8, 0x7f080026

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 177
    const v7, 0x7f080025

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 182
    .end local v4           #noNetwork:Z
    :pswitch_7
    const v7, 0x7f080072

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-eqz v7, :cond_9

    const v7, 0x7f080073

    :goto_3
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_9
    const v7, 0x7f080074

    goto :goto_3

    .line 192
    :cond_a
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v7, v7, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 194
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    const v8, 0x7f080026

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 195
    const v7, 0x7f080025

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/ShowErrorActivity;->setErrorTitle(Ljava/lang/CharSequence;)V

    .line 197
    const-string v7, "GLSActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GAIA ERROR WITH NO RESOURCE STRING "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    :cond_b
    iget-object v7, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setErrorTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 217
    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
