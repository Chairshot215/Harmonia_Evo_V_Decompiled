.class Lcom/android/settings/SoundSettings$3;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 501
    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mRingtone:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$400(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;I)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    #getter for: Lcom/android/settings/SoundSettings;->mNotifications:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    #calls: Lcom/android/settings/SoundSettings;->updateRingtoneName(ILcom/htc/preference/HtcPreference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/SoundSettings;->access$600(Lcom/android/settings/SoundSettings;ILcom/htc/preference/HtcPreference;I)V

    .line 509
    :cond_1
    return-void
.end method
