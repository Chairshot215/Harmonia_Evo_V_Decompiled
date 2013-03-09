.class public Lcom/google/android/finsky/exploreactivity/ExploreActivity;
.super Lcom/jme3/app/AndroidHarness;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/ExploreActivity$2;
    }
.end annotation


# instance fields
.field private mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

.field private mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

.field private mParentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/jme3/app/AndroidHarness;-><init>()V

    .line 68
    sget-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->BEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->eglConfigType:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 69
    iput-boolean v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->eglConfigVerboseLogging:Z

    .line 70
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->screenOrientation:I

    .line 71
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mouseEventsInvertX:Z

    .line 72
    iput-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mouseEventsInvertY:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)Lcom/jme3/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)Lcom/jme3/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/exploreactivity/ExploreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const-string v1, "ExploreActivity.doc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    return-object v0
.end method


# virtual methods
.method public handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "errorMsg"
    .parameter "t"

    .prologue
    .line 185
    :try_start_0
    const-string v0, "Exception in ExploreActivity, exiting. Exception:\n%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/NodeController;->dumpControllerState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    invoke-virtual {v0}, Lcom/jme3/app/Application;->stop()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->finish()V

    .line 194
    return-void

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    invoke-virtual {v1}, Lcom/jme3/app/Application;->stop()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->finish()V

    throw v0
.end method

.method public layoutDisplay()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->setContentView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    .line 80
    .local v1, finskyApp:Lcom/google/android/finsky/FinskyApp;
    const/4 v2, 0x0

    .line 81
    .local v2, seedDocument:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ExploreActivity.doc"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #seedDocument:Lcom/google/android/finsky/api/model/Document;
    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 85
    .restart local v2       #seedDocument:Lcom/google/android/finsky/api/model/Document;
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 86
    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 87
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v3, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    .line 88
    new-instance v3, Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v5

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/google/android/finsky/exploreactivity/NodeController;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;Lcom/android/volley/RequestQueue;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    .line 90
    new-instance v3, Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mNodeController:Lcom/google/android/finsky/exploreactivity/NodeController;

    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;Lcom/google/android/finsky/exploreactivity/NodeController;Lcom/google/android/finsky/api/model/Document;Landroid/widget/RelativeLayout;)V

    iput-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    .line 92
    invoke-super {p0, p1}, Lcom/jme3/app/AndroidHarness;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    check-cast v3, Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    invoke-virtual {v3}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->createViews()V

    .line 96
    const-string v3, "com.jme3"

    invoke-static {v3}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const-string v0, "Destroying explorer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-super {p0}, Lcom/jme3/app/AndroidHarness;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->destroy()V

    .line 135
    invoke-static {v2}, Lcom/jme3/system/JmeSystem;->setSoftTextDialogInput(Lcom/jme3/input/SoftTextDialogInput;)V

    .line 136
    invoke-static {v2}, Lcom/jme3/system/android/JmeAndroidSystem;->setActivity(Landroid/app/Activity;)V

    .line 137
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ExploreActivity.doc"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 102
    .local v0, seedDocument:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->setIntent(Landroid/content/Intent;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    check-cast v1, Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->setSeedDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "Pausing explorer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    check-cast v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->onPause()V

    .line 116
    invoke-super {p0}, Lcom/jme3/app/AndroidHarness;->onPause()V

    .line 117
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "Stopping explorer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->app:Lcom/jme3/app/Application;

    check-cast v0, Lcom/google/android/finsky/exploreactivity/ExploreApplication;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/ExploreApplication;->onStop()V

    .line 123
    invoke-super {p0}, Lcom/jme3/app/AndroidHarness;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->clear()V

    .line 125
    return-void
.end method

.method public onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V
    .locals 2
    .parameter "name"
    .parameter "evt"
    .parameter "tpf"

    .prologue
    .line 162
    const-string v0, "TouchEscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$2;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getType()Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/input/event/TouchEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/jme3/app/AndroidHarness;->onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity$1;-><init>(Lcom/google/android/finsky/exploreactivity/ExploreActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public runOnGlThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/ExploreActivity;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
