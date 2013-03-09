.class public Lcom/htc/home/personalize/scene/SceneModeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SceneModeChangeReceiver.java"


# static fields
.field public static final ACTION_ASPECT_CHANGED:Ljava/lang/String; = "com.htc.launcher.scene.ACTION_ASPECT_CHANGED"

.field public static final EXTRA_ASPECT_ISTHUMB:Ljava/lang/String; = "EXTRA_ASPECT_ISTHUMB"

.field private static final KEY_SCENE_IS_PICKER_MODE:Ljava/lang/String; = "scene_picker_mode"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v3, "EXTRA_ASPECT_ISTHUMB"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    .local v1, isPanelMode:Z
    const-string v3, "PersonalizeSummary"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 24
    .local v2, preference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 25
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "scene_picker_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    return-void
.end method
