.class Lcom/android/settings/framework/activity/system/HtcSystemSettings$1;
.super Ljava/lang/Object;
.source "HtcSystemSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/system/HtcSystemSettings;->pluginBackupCommand(Lcom/htc/preference/HtcPreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/system/HtcSystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/system/HtcSystemSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/framework/activity/system/HtcSystemSettings$1;->this$0:Lcom/android/settings/framework/activity/system/HtcSystemSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "bmgr run"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 104
    .local v1, process:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v1           #process:Ljava/lang/Process;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
