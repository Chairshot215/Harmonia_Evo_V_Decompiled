.class Lcom/htc/omadm/tool/SUCHeroSetting$2;
.super Ljava/lang/Object;
.source "SUCHeroSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/SUCHeroSetting;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/SUCHeroSetting;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/SUCHeroSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/omadm/tool/SUCHeroSetting$2;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    .line 97
    const-string v1, "SUCHeroSetting"

    const-string v2, "Set Test (tdas3035) URL : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    const-string v1, "SUCHeroSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Test (tdas3035) URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/tool/SUCHeroSetting$2;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    iget-object v3, v3, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    const-string v4, "https://omatest.stic.sprintspectrum.com/oma"

    invoke-interface {v3, v4}, Lcom/htc/omadm/aidl/IDmFutureDial;->Set_ServerAdrAddress(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting$2;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    iget-object v1, v1, Lcom/htc/omadm/tool/SUCHeroSetting;->mFutureLib:Lcom/htc/omadm/aidl/IDmFutureDial;

    invoke-interface {v1}, Lcom/htc/omadm/aidl/IDmFutureDial;->Get_ServerAdrAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://omatest.stic.sprintspectrum.com/oma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting$2;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    const-string v2, "Test (tdas3035) URL"

    const-string v3, "Set Success"

    #calls: Lcom/htc/omadm/tool/SUCHeroSetting;->ShowInformationDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/htc/omadm/tool/SUCHeroSetting;->access$000(Lcom/htc/omadm/tool/SUCHeroSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/tool/SUCHeroSetting$2;->this$0:Lcom/htc/omadm/tool/SUCHeroSetting;

    const-string v2, "Test (tdas3035) URL"

    const-string v3, "Set Failure"

    #calls: Lcom/htc/omadm/tool/SUCHeroSetting;->ShowInformationDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/htc/omadm/tool/SUCHeroSetting;->access$000(Lcom/htc/omadm/tool/SUCHeroSetting;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v1, "SUCHeroSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
