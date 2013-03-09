.class Lcom/android/phone/CallFeaturesSetting$5;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$langStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2571
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$5;->val$langStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2580
    invoke-static {}, Lcom/android/phone/util/CbsUtils;->getConstantChannelListStr()Ljava/lang/String;

    move-result-object v0

    .line 2581
    .local v0, msgIds:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2582
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$5;->val$langStr:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/util/CbsUtils;->clearEntrieCbDatabase(Landroid/content/Context;)V

    .line 2588
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$5;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->updateCellBroadcastSetting()V

    .line 2589
    return-void

    .line 2584
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/phone/util/CbsUtils;->setCBCh(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
