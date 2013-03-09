.class Lcom/android/settings/Power$2;
.super Landroid/os/Handler;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Power;


# direct methods
.method constructor <init>(Lcom/android/settings/Power;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    const-string v0, "PowersaverSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 311
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #setter for: Lcom/android/settings/Power;->mPlugState:Z
    invoke-static {v0, v4}, Lcom/android/settings/Power;->access$202(Lcom/android/settings/Power;Z)Z

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings/Power$2;->this$0:Lcom/android/settings/Power;

    #setter for: Lcom/android/settings/Power;->mPlugState:Z
    invoke-static {v0, v3}, Lcom/android/settings/Power;->access$202(Lcom/android/settings/Power;Z)Z

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
