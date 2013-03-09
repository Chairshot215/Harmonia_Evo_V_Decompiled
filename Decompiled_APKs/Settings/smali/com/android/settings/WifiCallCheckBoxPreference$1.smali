.class Lcom/android/settings/WifiCallCheckBoxPreference$1;
.super Landroid/os/Handler;
.source "WifiCallCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/WifiCallCheckBoxPreference$1;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference$1;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    const-string v1, "Disabled"

    invoke-virtual {v0, v1}, Lcom/android/settings/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference$1;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/WifiCallCheckBoxPreference;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/WifiCallCheckBoxPreference$1;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mPreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$000(Lcom/android/settings/WifiCallCheckBoxPreference;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
