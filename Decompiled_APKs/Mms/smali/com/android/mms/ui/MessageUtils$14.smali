.class final Lcom/android/mms/ui/MessageUtils$14;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->displayMobileNetworkUncheckWarning(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 3995
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3998
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3999
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.WirelessSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4001
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4002
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4003
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4004
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "No WirelessSetting activity found."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4008
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4010
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    .line 4012
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :goto_0
    return-void

    .line 4007
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
