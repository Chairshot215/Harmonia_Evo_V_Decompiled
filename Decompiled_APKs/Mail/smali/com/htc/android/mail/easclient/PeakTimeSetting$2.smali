.class Lcom/htc/android/mail/easclient/PeakTimeSetting$2;
.super Ljava/lang/Object;
.source "PeakTimeSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/PeakTimeSetting;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/PeakTimeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 216
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mTempDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$600(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    #getter for: Lcom/htc/android/mail/easclient/PeakTimeSetting;->mDaysOfWeek:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->access$500(Lcom/htc/android/mail/easclient/PeakTimeSetting;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V

    .line 217
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$2;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->showDialog(I)V

    .line 218
    return v2
.end method
