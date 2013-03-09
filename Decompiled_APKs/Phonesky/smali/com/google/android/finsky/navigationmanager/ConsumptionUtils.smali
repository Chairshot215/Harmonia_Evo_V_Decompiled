.class public Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;
.super Ljava/lang/Object;
.source "ConsumptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConsumptionAppRequiredString(I)I
    .locals 1
    .parameter "docBackend"

    .prologue
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 43
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 35
    :pswitch_1
    const v0, 0x7f0701ee

    goto :goto_0

    .line 37
    :pswitch_2
    const v0, 0x7f0701ef

    goto :goto_0

    .line 39
    :pswitch_3
    const v0, 0x7f0701f0

    goto :goto_0

    .line 41
    :pswitch_4
    const v0, 0x7f0701f1

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter "doc"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v2

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 59
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    packed-switch v0, :pswitch_data_0

    .line 73
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isConsumptionAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    .line 103
    .local v0, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    const-string v2, "com.google.android.videos"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {}, Lcom/google/android/finsky/utils/IntentUtils;->getMinimumRequiredVideosAppVersion()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 111
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z
    .locals 7
    .parameter "context"
    .parameter "doc"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, packageName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 96
    :cond_0
    :goto_0
    return v4

    .line 85
    :cond_1
    invoke-static {p0, v2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->isConsumptionAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 95
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    .line 96
    .local v0, installed:Z
    if-eqz v0, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 5
    .parameter "context"
    .parameter "targetFragment"
    .parameter "fragmentManager"
    .parameter "account"
    .parameter "doc"

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-static {p0, p4, p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {p0, p1, p2, v3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V

    .line 171
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {p0, p4, p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 153
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 158
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    .line 160
    .end local v1           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_2
    const v3, 0x7f070133

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V
    .locals 6
    .parameter "context"
    .parameter "targetFragment"
    .parameter "fragmentManager"
    .parameter "docBackend"

    .prologue
    .line 116
    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, appDocId:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 119
    const v4, 0x7f070133

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v4, "app_needed_dialog"

    invoke-virtual {p2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 129
    invoke-static {p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionAppRequiredString(I)I

    move-result v3

    .line 131
    .local v3, messageId:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v2, extraArgs:Landroid/os/Bundle;
    const-string v4, "dialog_details_url"

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const v4, 0x7f07019f

    const v5, 0x7f070059

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 135
    .local v1, df:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 136
    const-string v4, "app_needed_dialog"

    invoke-virtual {v1, p2, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
