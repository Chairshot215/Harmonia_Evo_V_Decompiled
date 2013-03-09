.class public Lcom/android/updater/VerifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VerifyReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/VerifyReceiver$VerifierRunner;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = true

.field public static final READY_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_READY"

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | VerifyReceiver"

.field public static final UPDATE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_UPDATE"

.field private static final UPDATE_SCRIPT_ENTRY:Ljava/lang/String; = "META-INF/com/google/android/updater-script"

.field public static final VERIFYPKG_ACTION:Ljava/lang/String; = "com.android.updater.VERIFY_FOTA_PKG"

.field private static final VERIFY_COMPLETE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_VERIFY_COMPLETE"

.field private static mVerifyFOTAIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.updater.VERIFY_FOTA_PKG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/updater/VerifyReceiver;->mVerifyFOTAIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/updater/VerifyReceiver;->mVerifyFOTAIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    const-string v3, "UpdaterAPK | VerifyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "update"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.updater.VERIFY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-string v3, "update"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, fname:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    new-instance v3, Lcom/android/updater/VerifyReceiver$VerifierRunner;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/updater/VerifyReceiver$VerifierRunner;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/updater/VerifyReceiver$VerifierRunner;->start()V

    .line 63
    .end local v1           #fname:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v3, "com.android.updater.CHECKINAGENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "cb_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, next_action:Ljava/lang/String;
    const-string v3, "checkFile"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .restart local v1       #fname:Ljava/lang/String;
    const-string v3, "cb_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 55
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    const-string v3, "UpdaterAPK | VerifyReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check OK, Forward intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Extra = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
