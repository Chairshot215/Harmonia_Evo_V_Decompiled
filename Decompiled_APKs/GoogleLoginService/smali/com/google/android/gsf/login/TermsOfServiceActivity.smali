.class public Lcom/google/android/gsf/login/TermsOfServiceActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field mGenderSpinner:Landroid/widget/Spinner;

.field mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initViews()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x8

    .line 46
    const v5, 0x7f0c0008

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    .line 47
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v5, v6}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 48
    const v5, 0x7f0c0011

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setBackButton(Landroid/view/View;)V

    .line 50
    const v5, 0x7f0c0053

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mGenderSpinner:Landroid/widget/Spinner;

    .line 51
    const v5, 0x7f050003

    const v7, 0x1090008

    invoke-static {p0, v5, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 53
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 54
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mGenderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mGenderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 57
    const v5, 0x7f0c0057

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    .local v4, webHistoryLearnMore:Landroid/widget/TextView;
    const v5, 0x7f0800d3

    const v7, 0x7f0800e5

    const v8, 0x7f0800e4

    invoke-static {p0, v4, v5, v7, v8}, Lcom/google/android/gsf/login/LearnMoreActivity;->linkifyAndSetText(Lcom/google/android/gsf/login/BaseActivity;Landroid/widget/TextView;III)V

    .line 61
    const v3, 0x7f0800d5

    .line 62
    .local v3, termsStringId:I
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-nez v5, :cond_3

    .line 63
    const v3, 0x7f0800d4

    .line 67
    :cond_0
    :goto_0
    const v5, 0x7f0c0058

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, terms:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 69
    invoke-static {p0, v3}, Lcom/google/android/gsf/login/LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, msg:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-nez v5, :cond_4

    .line 75
    const v5, 0x7f0c0051

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 76
    const v5, 0x7f0c0054

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_1
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    if-nez v5, :cond_2

    .line 81
    const v5, 0x7f0c0055

    invoke-virtual {p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_2
    return-void

    .line 64
    .end local v2           #terms:Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-boolean v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    if-nez v5, :cond_0

    .line 65
    const v3, 0x7f0800d6

    goto :goto_0

    .line 78
    .restart local v2       #terms:Landroid/widget/TextView;
    :cond_4
    iget-object v7, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mGenderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v7, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->initViews()V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->updateWidgetState()V

    .line 43
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 97
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 98
    .local v0, webHist:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->AGREE_WEB_HISTORY:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mGenderSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    .line 112
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->finish()V

    .line 114
    return-void

    .line 98
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->getWire()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
