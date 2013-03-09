.class Lcom/android/mms/ui/RestoreSettingActivity$1;
.super Ljava/lang/Object;
.source "RestoreSettingActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RestoreSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/mms/ui/RestoreSettingActivity$1;->this$0:Lcom/android/mms/ui/RestoreSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/RestoreSettingActivity$1;->this$0:Lcom/android/mms/ui/RestoreSettingActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/mms/ui/RestoreSettingActivity;->getSummaryId(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/mms/ui/RestoreSettingActivity;->access$000(Lcom/android/mms/ui/RestoreSettingActivity;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
