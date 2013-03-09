.class Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;
.super Ljava/lang/Object;
.source "HtcAbstractTimerPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    invoke-virtual {v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->updateSummary()V

    .line 37
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    iget-object v0, v0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    iget-object v0, v0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    iget-object v1, v1, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimerTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;->this$0:Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;

    iget v2, v2, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    :cond_0
    return-void
.end method
