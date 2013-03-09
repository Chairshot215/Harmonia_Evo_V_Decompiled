.class public Lcom/htc/android/mail/mailservice/OOBEDoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OOBEDoneReceiver.java"


# static fields
.field private static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "OOBEDoneReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/mailservice/OOBEDoneReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private loadpreInstallMessage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 44
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v1, p1}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v1, p1, v0}, Lcom/htc/android/mail/HtcMailCustomization;->preInstallMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    sget-boolean v0, Lcom/htc/android/mail/mailservice/OOBEDoneReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OOBEDoneReceiver"

    const-string v1, "Mail Receiver get OOBE done"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    if-nez p2, :cond_2

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 32
    :cond_2
    const-string v0, "android.htc.intent.action.SETUP_WIZARD_FINISHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LaunchedBySystem"

    const-string v1, "SetupWizardLaunchedBy"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/OOBEDoneReceiver;->loadpreInstallMessage(Landroid/content/Context;)V

    .line 39
    :goto_1
    sget-boolean v0, Lcom/htc/android/mail/mailservice/OOBEDoneReceiver;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OOBEDoneReceiver"

    const-string v1, "OOBEDoneReceiver end"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_3
    const-string v0, "OOBEDoneReceiver"

    const-string v1, "Not first time finish"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
