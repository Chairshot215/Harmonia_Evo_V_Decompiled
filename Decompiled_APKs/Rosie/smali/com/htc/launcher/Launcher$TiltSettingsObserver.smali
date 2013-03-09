.class final Lcom/htc/launcher/Launcher$TiltSettingsObserver;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TiltSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 8490
    iput-object p1, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8490
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$TiltSettingsObserver;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 8493
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_3d_home_screen"

    iget-object v3, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z
    invoke-static {v3}, Lcom/htc/launcher/Launcher;->access$10300(Lcom/htc/launcher/Launcher;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$10302(Lcom/htc/launcher/Launcher;Z)Z

    .line 8494
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltSettingEnable:Z
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$10300(Lcom/htc/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8495
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 8496
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v0

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    .line 8502
    :goto_0
    return-void

    .line 8498
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    const/4 v1, 0x0

    #calls: Lcom/htc/launcher/Launcher;->enableTilt(Z)V
    invoke-static {v0, v1}, Lcom/htc/launcher/Launcher;->access$8600(Lcom/htc/launcher/Launcher;Z)V

    .line 8499
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mTiltListener:Lcom/htc/launcher/Launcher$ExSensorEventListener;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2200(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$ExSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher$ExSensorEventListener;->reset()V

    .line 8500
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingsObserver;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mWidgetTilter:Lcom/htc/launcher/Launcher$WidgetTilter;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$2300(Lcom/htc/launcher/Launcher;)Lcom/htc/launcher/Launcher$WidgetTilter;

    move-result-object v0

    #calls: Lcom/htc/launcher/Launcher$WidgetTilter;->reset()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher$WidgetTilter;->access$1300(Lcom/htc/launcher/Launcher$WidgetTilter;)V

    goto :goto_0
.end method
