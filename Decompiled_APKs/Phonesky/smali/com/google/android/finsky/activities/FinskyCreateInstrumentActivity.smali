.class public Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;
.super Lcom/google/android/finsky/activities/InstrumentActivity;
.source "FinskyCreateInstrumentActivity.java"


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/activities/InstrumentActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "billing_flow"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const-string v1, "billing_flow_version"

    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->getFopVersion(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const-string v1, "backend_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v1, "ui_mode"

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "instrument_mode"

    sget-object v2, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    const-string v1, "entry_point_menu"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    const-string v1, "referrer_url"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "referrer_list_cookie"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method private setupActionBar(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-interface {v1, v2, p0}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "backend_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, backendId:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    .line 80
    if-eqz p1, :cond_0

    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "last_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->setTitle(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->setupActionBar(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/InstrumentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "last_title"

    iget-object v1, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v1}, Lcom/google/android/finsky/layout/CustomActionBar;->getBreadcrumbText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    .line 69
    return-void
.end method
