.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcCustomerLegalAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HtcCustomerLegalAlertActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCustomerLegalAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 24
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0c04a3

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCustomerLegalAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, legalTitle:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcProjectFlags$Info;->getProjectName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 32
    const v2, 0x7f0c04a4

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCustomerLegalAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcCustomerLegalAlertActivity;->setupAlert()V

    .line 34
    return-void
.end method
