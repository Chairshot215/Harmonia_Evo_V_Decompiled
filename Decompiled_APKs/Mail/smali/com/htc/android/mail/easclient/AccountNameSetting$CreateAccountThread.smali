.class Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;
.super Ljava/lang/Thread;
.source "AccountNameSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateAccountThread"
.end annotation


# instance fields
.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRunning:Z

.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mIsRunning:Z

    .line 529
    new-instance v0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread$1;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;)V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;Lcom/htc/android/mail/easclient/AccountNameSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;-><init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V

    return-void
.end method

.method static synthetic access$902(Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mIsRunning:Z

    return p1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 518
    const/4 v1, -0x1

    .line 519
    .local v1, ret:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mIsRunning:Z

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$800(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/easclient/AccountNameSetting;->addSystemAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
