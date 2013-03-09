.class Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;
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
    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewKddiTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$100(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler$2;->this$1:Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;

    iget-object v0, v0, Lcom/android/mms/ui/EewControlMenuPreferenceActivity$BgWorkHandler;->this$0:Lcom/android/mms/ui/EewControlMenuPreferenceActivity;

    #getter for: Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->mEewVendorTestCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/mms/ui/EewControlMenuPreferenceActivity;->access$200(Lcom/android/mms/ui/EewControlMenuPreferenceActivity;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 155
    return-void
.end method
