.class Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;
.super Ljava/lang/Object;
.source "EewControlMenuPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-static {}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$000()[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$100(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$000()[I

    move-result-object v0

    aget v0, v0, v2

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$200(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$000()[I

    move-result-object v3

    aget v3, v3, v1

    if-ne v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$100(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$1;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$200(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 144
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 139
    goto :goto_0
.end method
