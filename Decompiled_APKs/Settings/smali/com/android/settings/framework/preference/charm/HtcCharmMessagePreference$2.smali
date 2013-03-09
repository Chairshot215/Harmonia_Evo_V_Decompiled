.class Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;
.super Ljava/lang/Object;
.source "HtcCharmMessagePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;->this$0:Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHARM_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.MessagingPreferenceActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    const-string v1, "notification_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference$2;->this$0:Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;

    invoke-virtual {v1}, Lcom/android/settings/framework/preference/charm/HtcCharmMessagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
