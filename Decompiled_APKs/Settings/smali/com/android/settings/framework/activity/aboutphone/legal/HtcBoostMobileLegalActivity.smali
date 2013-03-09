.class public Lcom/android/settings/framework/activity/aboutphone/legal/HtcBoostMobileLegalActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "HtcBoostMobileLegalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/legal/HtcBoostMobileLegalActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 27
    .local v1, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f0c04a3

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcBoostMobileLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, legalTitle:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcProjectFlags$Info;->getProjectName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iput-object v0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 35
    const v2, 0x7f0c04a6

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcBoostMobileLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/legal/HtcBoostMobileLegalActivity;->setupAlert()V

    .line 37
    return-void
.end method
