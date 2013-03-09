.class Lcom/android/settings/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;

.field final synthetic val$tManager:Lcom/htc/service/HtcTelephonyManager;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;Ljava/lang/String;Lcom/htc/service/HtcTelephonyManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    iput-object p2, p0, Lcom/android/settings/ApnSettings$2;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/ApnSettings$2;->val$tManager:Lcom/htc/service/HtcTelephonyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 516
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 517
    const-string v1, "ApnSettings"

    const-string v2, "BUTTON_POSITIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$2;->val$value:Ljava/lang/String;

    #calls: Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$2;->val$value:Ljava/lang/String;

    #setter for: Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->access$402(Lcom/android/settings/ApnSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->val$tManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcTelephonyManager;->enableMpdp(Z)V

    .line 528
    :cond_0
    :goto_0
    const-string v1, "1"

    const-string v2, "persist.radio.mpdp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 529
    .local v0, isMPDP:Z
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMPDP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 521
    .end local v0           #isMPDP:Z
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 522
    const-string v1, "ApnSettings"

    const-string v2, "BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v2, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mLastKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$400(Lcom/android/settings/ApnSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    .line 525
    iget-object v1, p0, Lcom/android/settings/ApnSettings$2;->val$tManager:Lcom/htc/service/HtcTelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcTelephonyManager;->enableMpdp(Z)V

    goto :goto_0
.end method
