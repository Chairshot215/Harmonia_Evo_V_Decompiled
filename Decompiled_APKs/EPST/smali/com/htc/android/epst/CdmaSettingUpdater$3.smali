.class Lcom/htc/android/epst/CdmaSettingUpdater$3;
.super Ljava/lang/Thread;
.source "CdmaSettingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/CdmaSettingUpdater;->commitChange(Lcom/htc/android/epst/CommitChangeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/CdmaSettingUpdater;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/CdmaSettingUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/epst/CdmaSettingUpdater$3;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/CdmaSettingUpdater$3;->this$0:Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Port;->Commit(Lcom/htc/android/epst/SettingValueUpdater;)V

    .line 74
    return-void
.end method
