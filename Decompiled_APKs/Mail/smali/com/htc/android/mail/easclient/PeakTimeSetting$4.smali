.class Lcom/htc/android/mail/easclient/PeakTimeSetting$4;
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
    .line 237
    iput-object p1, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$4;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/android/mail/easclient/PeakTimeSetting$4;->this$0:Lcom/htc/android/mail/easclient/PeakTimeSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/PeakTimeSetting;->showDialog(I)V

    .line 240
    const/4 v0, 0x1

    return v0
.end method
