.class Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;
.super Ljava/lang/Object;
.source "HtcSearchSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/search/HtcSearchSettings;->onResumeInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/search/HtcSearchSettings;

.field final synthetic val$summary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/search/HtcSearchSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;->this$0:Lcom/android/settings/framework/activity/search/HtcSearchSettings;

    iput-object p2, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;->val$summary:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;->this$0:Lcom/android/settings/framework/activity/search/HtcSearchSettings;

    #getter for: Lcom/android/settings/framework/activity/search/HtcSearchSettings;->mHardwareSearchKey:Lcom/htc/preference/HtcPreference;
    invoke-static {v0}, Lcom/android/settings/framework/activity/search/HtcSearchSettings;->access$000(Lcom/android/settings/framework/activity/search/HtcSearchSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/search/HtcSearchSettings$1;->val$summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
