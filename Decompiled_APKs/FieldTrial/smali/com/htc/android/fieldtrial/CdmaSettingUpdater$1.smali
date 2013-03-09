.class Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;
.super Ljava/lang/Thread;
.source "CdmaSettingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/CdmaSettingUpdater;->anthenticate(Lcom/htc/android/fieldtrial/FieldTrial;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/CdmaSettingUpdater;

.field final synthetic val$activity:Lcom/htc/android/fieldtrial/FieldTrial;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/CdmaSettingUpdater;Lcom/htc/android/fieldtrial/FieldTrial;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;->this$0:Lcom/htc/android/fieldtrial/CdmaSettingUpdater;

    iput-object p2, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;->val$activity:Lcom/htc/android/fieldtrial/FieldTrial;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/htc/android/fieldtrial/CdmaSettingUpdater$1;->val$activity:Lcom/htc/android/fieldtrial/FieldTrial;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/android/fieldtrial/FieldTrial;->onAuthenticateResult(Z)V

    .line 52
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
