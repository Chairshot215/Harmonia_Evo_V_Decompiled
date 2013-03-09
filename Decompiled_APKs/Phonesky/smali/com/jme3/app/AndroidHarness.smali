.class public Lcom/jme3/app/AndroidHarness;
.super Landroid/app/Activity;
.source "AndroidHarness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/jme3/input/controls/TouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/AndroidHarness$4;
    }
.end annotation


# static fields
.field protected static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final ESCAPE_EVENT:Ljava/lang/String;

.field protected app:Lcom/jme3/app/Application;

.field protected appClass:Ljava/lang/String;

.field protected ctx:Lcom/jme3/system/android/OGLESContext;

.field protected eglConfigType:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

.field protected eglConfigVerboseLogging:Z

.field protected exitDialogMessage:Ljava/lang/String;

.field protected exitDialogTitle:Ljava/lang/String;

.field protected finishOnAppStop:Z

.field private frameLayout:Landroid/widget/FrameLayout;

.field protected isGLThreadPaused:Z

.field protected mouseEventsEnabled:Z

.field protected mouseEventsInvertX:Z

.field protected mouseEventsInvertY:Z

.field protected screenFullScreen:Z

.field protected screenOrientation:I

.field protected screenShowTitle:Z

.field private splashImageView:Landroid/widget/ImageView;

.field protected splashPicID:I

.field protected view:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/jme3/app/AndroidHarness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    .line 124
    :try_start_0
    const-string v0, "bulletjme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    new-instance v0, Lcom/jme3/system/android/JmeAndroidSystem;

    invoke-direct {v0}, Lcom/jme3/system/android/JmeAndroidSystem;-><init>()V

    invoke-static {v0}, Lcom/jme3/system/JmeSystem;->setSystemDelegate(Lcom/jme3/system/JmeSystemDelegate;)V

    .line 128
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "jme3test.android.Test"

    iput-object v0, p0, Lcom/jme3/app/AndroidHarness;->appClass:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    .line 55
    sget-object v0, Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;->FASTEST:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    iput-object v0, p0, Lcom/jme3/app/AndroidHarness;->eglConfigType:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    .line 59
    iput-boolean v3, p0, Lcom/jme3/app/AndroidHarness;->eglConfigVerboseLogging:Z

    .line 63
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->mouseEventsEnabled:Z

    .line 67
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->mouseEventsInvertX:Z

    .line 71
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->mouseEventsInvertY:Z

    .line 75
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->finishOnAppStop:Z

    .line 79
    const-string v0, "Do you want to exit?"

    iput-object v0, p0, Lcom/jme3/app/AndroidHarness;->exitDialogTitle:Ljava/lang/String;

    .line 84
    const-string v0, "Use your home key to bring this app into the background or exit to terminate it."

    iput-object v0, p0, Lcom/jme3/app/AndroidHarness;->exitDialogMessage:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->screenFullScreen:Z

    .line 97
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->screenShowTitle:Z

    .line 103
    iput v3, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    .line 114
    const/4 v0, 0x4

    iput v0, p0, Lcom/jme3/app/AndroidHarness;->screenOrientation:I

    .line 116
    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    .line 117
    iput-boolean v1, p0, Lcom/jme3/app/AndroidHarness;->isGLThreadPaused:Z

    .line 118
    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    .line 119
    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    .line 120
    const-string v0, "TouchEscape"

    iput-object v0, p0, Lcom/jme3/app/AndroidHarness;->ESCAPE_EVENT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jme3/app/AndroidHarness;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jme3/app/AndroidHarness;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public getJmeApplication()Lcom/jme3/app/Application;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    return-object v0
.end method

.method public handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "errorMsg"
    .parameter "t"

    .prologue
    .line 284
    const-string v2, ""

    .line 285
    .local v2, stackTrace:Ljava/lang/String;
    const-string v4, "Error"

    .line 287
    .local v4, title:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 289
    new-instance v3, Ljava/io/StringWriter;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/io/StringWriter;-><init>(I)V

    .line 290
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 291
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .end local v3           #sw:Ljava/io/StringWriter;
    :cond_0
    move-object v1, v4

    .line 296
    .local v1, finalTitle:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .end local p1
    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, finalMsg:Ljava/lang/String;
    sget-object v5, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 301
    new-instance v5, Lcom/jme3/app/AndroidHarness$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/jme3/app/AndroidHarness$1;-><init>(Lcom/jme3/app/AndroidHarness;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jme3/app/AndroidHarness;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    return-void

    .line 296
    .end local v0           #finalMsg:Ljava/lang/String;
    .restart local p1
    :cond_1
    const-string p1, "Uncaught Exception"

    goto :goto_0
.end method

.method public isFinishOnAppStop()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/jme3/app/AndroidHarness;->finishOnAppStop:Z

    return v0
.end method

.method public layoutDisplay()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 353
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Splash Screen Picture Resource ID: {0}"

    iget v5, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    iget v2, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    if-eqz v2, :cond_1

    .line 355
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 360
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    .line 361
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    .line 363
    invoke-virtual {p0}, Lcom/jme3/app/AndroidHarness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 364
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 371
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/jme3/app/AndroidHarness;->setContentView(Landroid/view/View;)V

    .line 374
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Splash Screen Created"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 379
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    return-void

    .line 367
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 376
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Splash Screen Skipped."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v2}, Lcom/jme3/app/AndroidHarness;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 320
    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/app/Application;->stop(Z)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/app/AndroidHarness;->finish()V

    .line 326
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    sget-object v10, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    .line 135
    .local v10, log:Ljava/util/logging/Logger;
    const/4 v2, 0x0

    .line 137
    .local v2, bIsLogFormatSet:Z
    :cond_0
    invoke-virtual {v10}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v14

    array-length v14, v14

    if-nez v14, :cond_1

    .line 138
    invoke-virtual {v10}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    move-result-object v10

    .line 139
    if-eqz v10, :cond_1

    .line 140
    invoke-virtual {v10}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    .local v1, arr$:[Ljava/util/logging/Handler;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v6, v1, v7

    .line 142
    .local v6, h:Ljava/util/logging/Handler;
    new-instance v14, Lcom/jme3/util/JmeFormatter;

    invoke-direct {v14}, Lcom/jme3/util/JmeFormatter;-><init>()V

    invoke-virtual {v6, v14}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 143
    const/4 v2, 0x1

    .line 140
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    .end local v1           #arr$:[Ljava/util/logging/Handler;
    .end local v6           #h:Ljava/util/logging/Handler;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_1
    if-eqz v10, :cond_2

    if-eqz v2, :cond_0

    .line 149
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/app/AndroidHarness;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14}, Lcom/jme3/system/android/JmeAndroidSystem;->setResources(Landroid/content/res/Resources;)V

    .line 150
    invoke-static/range {p0 .. p0}, Lcom/jme3/system/android/JmeAndroidSystem;->setActivity(Landroid/app/Activity;)V

    .line 152
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jme3/app/AndroidHarness;->screenFullScreen:Z

    if-eqz v14, :cond_5

    .line 153
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jme3/app/AndroidHarness;->requestWindowFeature(I)Z

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/app/AndroidHarness;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x400

    const/16 v16, 0x400

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setFlags(II)V

    .line 162
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/app/AndroidHarness;->screenOrientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jme3/app/AndroidHarness;->setRequestedOrientation(I)V

    .line 165
    new-instance v12, Lcom/jme3/system/AppSettings;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Lcom/jme3/system/AppSettings;-><init>(Z)V

    .line 168
    .local v12, settings:Lcom/jme3/system/AppSettings;
    new-instance v8, Lcom/jme3/input/android/AndroidInput;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/jme3/input/android/AndroidInput;-><init>(Landroid/content/Context;)V

    .line 169
    .local v8, input:Lcom/jme3/input/android/AndroidInput;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jme3/app/AndroidHarness;->mouseEventsInvertX:Z

    invoke-virtual {v8, v14}, Lcom/jme3/input/android/AndroidInput;->setMouseEventsInvertX(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jme3/app/AndroidHarness;->mouseEventsInvertY:Z

    invoke-virtual {v8, v14}, Lcom/jme3/input/android/AndroidInput;->setMouseEventsInvertY(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jme3/app/AndroidHarness;->mouseEventsEnabled:Z

    invoke-virtual {v8, v14}, Lcom/jme3/input/android/AndroidInput;->setMouseEventsEnabled(Z)V

    .line 175
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    if-nez v14, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->appClass:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 178
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/app/Application;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jme3/app/Application;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    .line 181
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/app/Application;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v14, v12}, Lcom/jme3/app/Application;->setSettings(Lcom/jme3/system/AppSettings;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v14}, Lcom/jme3/app/Application;->start()V

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v14}, Lcom/jme3/app/Application;->getContext()Lcom/jme3/system/JmeContext;

    move-result-object v14

    check-cast v14, Lcom/jme3/system/android/OGLESContext;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jme3/app/AndroidHarness;->ctx:Lcom/jme3/system/android/OGLESContext;

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->ctx:Lcom/jme3/system/android/OGLESContext;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jme3/app/AndroidHarness;->eglConfigType:Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jme3/app/AndroidHarness;->eglConfigVerboseLogging:Z

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v8, v15, v0}, Lcom/jme3/system/android/OGLESContext;->createView(Lcom/jme3/input/android/AndroidInput;Lcom/jme3/system/android/AndroidConfigChooser$ConfigType;Z)Landroid/opengl/GLSurfaceView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/app/AndroidHarness;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    .line 188
    .local v13, wind:Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 189
    .local v4, disp:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->ctx:Lcom/jme3/system/android/OGLESContext;

    invoke-virtual {v14}, Lcom/jme3/system/android/OGLESContext;->getSettings()Lcom/jme3/system/AppSettings;

    move-result-object v14

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v15

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/jme3/system/AppSettings;->setResolution(II)V

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/app/AndroidHarness;->ctx:Lcom/jme3/system/android/OGLESContext;

    invoke-virtual {v14}, Lcom/jme3/system/android/OGLESContext;->getSettings()Lcom/jme3/system/AppSettings;

    move-result-object v11

    .line 192
    .local v11, s:Lcom/jme3/system/AppSettings;
    sget-object v14, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v16, "Settings: Width {0} Height {1}"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v11}, Lcom/jme3/system/AppSettings;->getWidth()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v11}, Lcom/jme3/system/AppSettings;->getHeight()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v17}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/app/AndroidHarness;->layoutDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v4           #disp:Landroid/view/Display;
    .end local v11           #s:Lcom/jme3/system/AppSettings;
    .end local v13           #wind:Landroid/view/WindowManager;
    :goto_2
    return-void

    .line 157
    .end local v8           #input:Lcom/jme3/input/android/AndroidInput;
    .end local v12           #settings:Lcom/jme3/system/AppSettings;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/jme3/app/AndroidHarness;->screenShowTitle:Z

    if-nez v14, :cond_3

    .line 158
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jme3/app/AndroidHarness;->requestWindowFeature(I)Z

    goto/16 :goto_1

    .line 195
    .restart local v8       #input:Lcom/jme3/input/android/AndroidInput;
    .restart local v12       #settings:Lcom/jme3/system/AppSettings;
    :catch_0
    move-exception v5

    .line 196
    .local v5, ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jme3/app/AndroidHarness;->appClass:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " init failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/jme3/app/AndroidHarness;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jme3/app/AndroidHarness;->setContentView(Landroid/view/View;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    iget-boolean v0, p0, Lcom/jme3/app/AndroidHarness;->isGLThreadPaused:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/jme3/app/Application;->stop(Z)V

    .line 271
    :cond_0
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 273
    return-void

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v2}, Lcom/jme3/app/Application;->getAudioRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v1

    .line 246
    .local v1, result:Lcom/jme3/audio/AudioRenderer;
    if-eqz v1, :cond_1

    .line 247
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 248
    instance-of v2, v1, Lcom/jme3/audio/android/AndroidAudioRenderer;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 249
    check-cast v0, Lcom/jme3/audio/android/AndroidAudioRenderer;

    .line 250
    .local v0, renderer:Lcom/jme3/audio/android/AndroidAudioRenderer;
    invoke-virtual {v0}, Lcom/jme3/audio/android/AndroidAudioRenderer;->pauseAll()V

    .line 254
    .end local v0           #renderer:Lcom/jme3/audio/android/AndroidAudioRenderer;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jme3/app/AndroidHarness;->isGLThreadPaused:Z

    .line 255
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v3, "onPause"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 204
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v0}, Lcom/jme3/app/Application;->restart()V

    .line 208
    :cond_0
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v1, "onRestart"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/jme3/app/AndroidHarness;->app:Lcom/jme3/app/Application;

    invoke-virtual {v2}, Lcom/jme3/app/Application;->getAudioRenderer()Lcom/jme3/audio/AudioRenderer;

    move-result-object v1

    .line 226
    .local v1, result:Lcom/jme3/audio/AudioRenderer;
    if-eqz v1, :cond_1

    .line 227
    instance-of v2, v1, Lcom/jme3/audio/android/AndroidAudioRenderer;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 228
    check-cast v0, Lcom/jme3/audio/android/AndroidAudioRenderer;

    .line 229
    .local v0, renderer:Lcom/jme3/audio/android/AndroidAudioRenderer;
    invoke-virtual {v0}, Lcom/jme3/audio/android/AndroidAudioRenderer;->resumeAll()V

    .line 233
    .end local v0           #renderer:Lcom/jme3/audio/android/AndroidAudioRenderer;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jme3/app/AndroidHarness;->isGLThreadPaused:Z

    .line 234
    sget-object v2, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v3, "onResume"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 214
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v1, "onStart"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 262
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V
    .locals 2
    .parameter "name"
    .parameter "evt"
    .parameter "tpf"

    .prologue
    .line 333
    const-string v0, "TouchEscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Lcom/jme3/app/AndroidHarness$4;->$SwitchMap$com$jme3$input$event$TouchEvent$Type:[I

    invoke-virtual {p2}, Lcom/jme3/input/event/TouchEvent;->getType()Lcom/jme3/input/event/TouchEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/input/event/TouchEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    new-instance v0, Lcom/jme3/app/AndroidHarness$2;

    invoke-direct {v0, p0}, Lcom/jme3/app/AndroidHarness$2;-><init>(Lcom/jme3/app/AndroidHarness;)V

    invoke-virtual {p0, v0}, Lcom/jme3/app/AndroidHarness;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeSplashScreen()V
    .locals 4

    .prologue
    .line 382
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Splash Screen Picture Resource ID: {0}"

    iget v3, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    iget v0, p0, Lcom/jme3/app/AndroidHarness;->splashPicID:I

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/jme3/app/AndroidHarness;->splashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Lcom/jme3/app/AndroidHarness$3;

    invoke-direct {v0, p0}, Lcom/jme3/app/AndroidHarness$3;-><init>(Lcom/jme3/app/AndroidHarness;)V

    invoke-virtual {p0, v0}, Lcom/jme3/app/AndroidHarness;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "splashImageView is null"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_2
    sget-object v0, Lcom/jme3/app/AndroidHarness;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "frameLayout is null"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method
