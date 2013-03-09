.class final Lcom/htc/android/mail/Mail$1;
.super Ljava/lang/Object;
.source "Mail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/android/mail/Mail$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/htc/android/mail/Mail$1;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v1, p0, Lcom/htc/android/mail/Mail$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 284
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/android/mail/Mail$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/htc/android/mail/mailservice/BootReceiver;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/htc/android/mail/Mail$1;->val$enabled:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 293
    sget-boolean v1, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "Mail"

    const-string v2, " try reschedule !"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/Mail$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/mailservice/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 296
    sget-boolean v1, Lcom/htc/android/mail/Mail;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "Mail"

    const-string v2, "Leave set Services Enabled"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void

    .line 284
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method
