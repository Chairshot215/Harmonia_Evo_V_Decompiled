.class public Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
.super Ljava/lang/Object;
.source "IdleScreenServiceWrap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;,
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;,
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;,
        Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    }
.end annotation


# static fields
.field private static final IDLE_SCREEN_FORMAT:I = 0x1

.field private static final IDLE_SCREEN_WINDOW_FLAG:I = 0x10000318

.field public static final LOG_PREFIX:Ljava/lang/String; = "IdleScreenServiceWrap"

.field private static final SERVICE_CONNECT_TIMEOUT:I = 0x1388

.field public static final WHAT_UI_CONNECT_TIMEOUT:I = 0x4

.field public static final WHAT_UI_LSCOMMAND:I = 0x1

.field public static final WHAT_UI_SERVICEDEAD:I = 0x2

.field public static final WHAT_UI_SET_FIRST_FRAME_READY:I = 0x5

.field public static final WHAT_UI_UPDATE_DATA:I = 0x3

.field public static final WHAT_UI_VIEWMODE_UPDATED:I = 0x6


# instance fields
.field private mActive:Z

.field private mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private final mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

.field private mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

.field private mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

.field private mLock:Ljava/lang/Object;

.field private mRegisterReminder:Z

.field private mRegisterTelePhony:Z

.field private mShowLiveWallpaper:Z

.field private mShowTime:J

.field private mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

.field private mSurfaceReady:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mViewMode:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V
    .locals 3
    .parameter "context"
    .parameter "idleScreenInfo"

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    .line 74
    iput v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mWidth:I

    .line 75
    iput v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mHeight:I

    .line 77
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z

    .line 78
    sget-object v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->NONE:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    .line 83
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterTelePhony:Z

    .line 84
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterReminder:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowTime:J

    .line 87
    iput-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowLiveWallpaper:Z

    .line 90
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/LSState;->getIdleScreenManager()Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    .line 91
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mIWindowManager:Landroid/view/IWindowManager;

    .line 93
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 95
    new-instance v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;

    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getUILooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$MyUIHandler;-><init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Landroid/view/IWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->attachServiceLocked(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    return-object v0
.end method

.method private attachServiceLocked(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;)V
    .locals 11
    .parameter "conn"

    .prologue
    .line 594
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "attachServiceLocked~"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :try_start_0
    iget-object v0, p1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mService:Lcom/htc/lockscreen/idlescreen/IIdleScreenService;

    iget-object v2, p1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getWindowType()I

    move-result v3

    const v4, 0x10301da

    const v5, 0x10000318

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mWidth:I

    iget v9, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/htc/lockscreen/idlescreen/IIdleScreenService;->attach(Lcom/htc/lockscreen/idlescreen/IIdleScreenConnection;Landroid/os/IBinder;IIIIZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v10

    .line 609
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed attaching IdelScreen; clearing, e"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 610
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 611
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed attaching IdelScreen; clearing, e"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .locals 12
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v9, 0x0

    .line 820
    const/4 v2, 0x0

    .line 822
    .local v2, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-nez p1, :cond_0

    .line 824
    :try_start_0
    const-string v8, "IdleScreenServiceWrap"

    const-string v10, "getIdleScreenConnLocked~ componentName is null"

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 860
    :goto_0
    return-object v8

    .line 828
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x1080

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 831
    .local v7, si:Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x80

    invoke-virtual {v8, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 835
    .local v5, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 836
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 837
    .local v6, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 840
    :try_start_1
    new-instance v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, p0, v8}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .local v3, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    move-object v2, v3

    .line 850
    .end local v3           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .restart local v2       #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :cond_1
    if-nez v2, :cond_3

    .line 851
    :try_start_2
    const-string v8, "IdleScreenServiceWrap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ selected service is not a idlescreen:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 852
    goto :goto_0

    .line 842
    .restart local v6       #rsi:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 843
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "IdleScreenServiceWrap"

    const-string v10, "getIdleScreenConnLocked~ IdleScreenInfo create error"

    invoke-static {v8, v10, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v8, v9

    .line 844
    goto :goto_0

    .line 835
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 856
    .end local v1           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6           #rsi:Landroid/content/pm/ServiceInfo;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v0

    .line 857
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "IdleScreenServiceWrap"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIdleScreenConnLocked~ Unknown component:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 858
    goto/16 :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i:I
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_3
    move-object v8, v2

    .line 860
    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    .locals 2
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v0

    .line 100
    .local v0, idleInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    .line 103
    :cond_0
    new-instance v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;

    invoke-direct {v1, p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V

    .line 104
    .local v1, service:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
    goto :goto_0
.end method


# virtual methods
.method public connect()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 130
    const-string v4, "IdleScreenServiceWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connect~ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 132
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z

    .line 133
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-nez v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 135
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    const-wide/16 v7, 0x1388

    invoke-static {v5, v6, v7, v8}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 137
    new-instance v5, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v6, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-direct {v5, p0, v6}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;-><init>(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V

    iput-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.htc.lockscreen.idlescreen.IdleScreenService"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    const-string v3, "IdleScreenServiceWrap"

    const-string v5, "connect~ Unable to bind service"

    invoke-static {v3, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :try_start_2
    monitor-exit v4

    .line 164
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 147
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "IdleScreenServiceWrap"

    const-string v5, "connect~ bind exception"

    invoke-static {v3, v5, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    monitor-exit v4

    goto :goto_0

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 153
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v5, v5, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getWindowType()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 162
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v4

    move v2, v3

    .line 164
    goto :goto_0

    .line 155
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "IdleScreenServiceWrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addWindowToken fail e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public disconnect()V
    .locals 5

    .prologue
    .line 168
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 170
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    invoke-interface {v1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->destroy()V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v3, v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    .line 190
    :cond_1
    sget-object v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->NONE:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    iput-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mActive:Z

    .line 192
    monitor-exit v2

    .line 193
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 192
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "IdleScreenServiceWrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public dispatchKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 284
    iget-object v9, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 287
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v5, extra:Landroid/os/Bundle;
    const-string v0, "Key_keycode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v0, "Key_keyEvent"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :try_start_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const-string v1, "idleScreen_key_down"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    const/4 v0, 0x1

    :try_start_2
    monitor-exit v9

    .line 305
    .end local v5           #extra:Landroid/os/Bundle;
    :goto_0
    return v0

    .line 298
    .restart local v5       #extra:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 299
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed to dispathc point"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v5           #extra:Landroid/os/Bundle;
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    monitor-exit v9

    move v0, v8

    .line 305
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 309
    iget-object v9, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 312
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v5, extra:Landroid/os/Bundle;
    const-string v0, "Key_keycode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v0, "Key_keyEvent"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const-string v1, "idleScreen_key_up"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    const/4 v0, 0x1

    :try_start_2
    monitor-exit v9

    .line 330
    .end local v5           #extra:Landroid/os/Bundle;
    :goto_0
    return v0

    .line 323
    .restart local v5       #extra:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 324
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed to dispathc point"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v5           #extra:Landroid/os/Bundle;
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    monitor-exit v9

    move v0, v8

    .line 330
    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dispatchPoint(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 267
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    invoke-interface {v1, p1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->dispatchPointer(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2

    .line 280
    :goto_0
    return v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "IdleScreenServiceWrap"

    const-string v3, "Failed to dispathc point"

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    monitor-exit v2

    .line 280
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dumpLog()V
    .locals 3

    .prologue
    .line 930
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpLog~ mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-nez v0, :cond_0

    .line 932
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "dumpLog~ engine is null"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_0
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, engine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    .line 476
    :cond_0
    return-object v0
.end method

.method protected getWindowType()I
    .locals 1

    .prologue
    .line 864
    const/16 v0, 0x67

    return v0
.end method

.method public isDead()Z
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    sget-object v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->DISCONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowArc()Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    sget-object v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->CONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->isShowUnlock()Z

    move-result v0

    .line 583
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSurfaceReady()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    return v0
.end method

.method public killIdlescreenProcess()V
    .locals 2

    .prologue
    .line 812
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->killIdlescreenProcess()V

    .line 816
    :cond_0
    monitor-exit v1

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLSCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "action"
    .parameter "extra"

    .prologue
    .line 480
    const-string v8, "IdleScreenServiceWrap"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLSCommand~ action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v8, "idleScreenUnlock"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 482
    const/4 v7, 0x0

    .line 483
    .local v7, type:I
    if-eqz p2, :cond_0

    .line 484
    const-string v8, "Key_UnlockTpye"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 486
    :cond_0
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/htc/lockscreen/app/LSState;->unlockScreen(I)V

    .line 491
    const/4 v8, 0x1

    .line 576
    .end local v7           #type:I
    :goto_0
    return v8

    .line 493
    :cond_1
    const-string v8, "idleScreenTelephonyRegister"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 494
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterTelePhony:Z

    .line 495
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendTelephonyState()V

    .line 576
    :cond_2
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 497
    :cond_3
    const-string v8, "idleScreenTelephonyUnRegister"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 498
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterTelePhony:Z

    goto :goto_1

    .line 500
    :cond_4
    const-string v8, "idleScreenReminderRegister"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 501
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterReminder:Z

    .line 502
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState()V

    goto :goto_1

    .line 504
    :cond_5
    const-string v8, "idleScreenReminderUnRegister"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 505
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterReminder:Z

    goto :goto_1

    .line 507
    :cond_6
    const-string v8, "idleScreenReminderDismiss"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 508
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v0

    .line 509
    .local v0, ctrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    const-string v8, "Key_ReminderType"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 510
    .restart local v7       #type:I
    const-string v8, "Key_ReminderId"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 511
    .local v1, id:J
    const-string v8, "IdleScreenServiceWrap"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLSCommand~ dismiss type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 513
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v2, v8}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissAlarm(JLjava/lang/String;)V

    goto :goto_1

    .line 515
    :cond_7
    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissCalendarEvent(J)V

    goto :goto_1

    .line 518
    :cond_8
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 519
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTimer()V

    goto :goto_1

    .line 522
    .end local v0           #ctrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    .end local v1           #id:J
    .end local v7           #type:I
    :cond_9
    const-string v8, "idleScreenReminderSnooze"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 523
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v0

    .line 524
    .restart local v0       #ctrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    const-string v8, "Key_ReminderType"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 525
    .restart local v7       #type:I
    const-string v8, "Key_ReminderId"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 526
    .restart local v1       #id:J
    const-string v8, "Key_ReminderAction"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, snoozeAction:Ljava/lang/String;
    const-string v8, "IdleScreenServiceWrap"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onLSCommand~ snooze type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " snoozeAction:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 529
    invoke-virtual {v0}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeAlarm()V

    goto/16 :goto_1

    .line 531
    :cond_a
    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    .line 532
    invoke-virtual {v0, v1, v2, v5}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->snoozeCalendarEvent(JLjava/lang/String;)V

    goto/16 :goto_1

    .line 534
    :cond_b
    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 535
    invoke-virtual {v0, v1, v2, v5}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->dismissTask(JLjava/lang/String;)V

    goto/16 :goto_1

    .line 538
    .end local v0           #ctrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    .end local v1           #id:J
    .end local v5           #snoozeAction:Ljava/lang/String;
    .end local v7           #type:I
    :cond_c
    const-string v8, "idleScreen_Survive"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 539
    iget-object v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v8, p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->reportSurvive(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V

    goto/16 :goto_1

    .line 551
    :cond_d
    const-string v8, "idleScreenWakeLock"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 552
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    goto/16 :goto_1

    .line 554
    :cond_e
    const-string v8, "idlescreen_surface_create"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 556
    .local v3, ready:J
    iget-wide v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    .line 557
    const-string v8, "IdleScreenServiceWrap"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_LOCKSCREEN_SURFACE_CREATE cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowTime:J

    sub-long v10, v3, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :goto_2
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowTime:J

    .line 563
    iget-object v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 564
    const/16 v6, 0x64

    .line 565
    .local v6, time:I
    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_f

    .line 566
    const/16 v6, 0x12c

    .line 568
    :cond_f
    iget-object v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    int-to-long v10, v6

    invoke-static {v8, v9, v10, v11}, Lcom/htc/lockscreen/app/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto/16 :goto_1

    .line 560
    .end local v6           #time:I
    :cond_10
    const-string v8, "IdleScreenServiceWrap"

    const-string v9, "ACTION_LOCKSCREEN_SURFACE_CREATE still keep"

    invoke-static {v8, v9}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 570
    .end local v3           #ready:J
    :cond_11
    const-string v8, "gotounlock"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 571
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->goToUnlock()V

    goto/16 :goto_1

    .line 573
    :cond_12
    const-string v8, "stop_facelock"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/lockscreen/app/LSState;->stopFaceLock()V

    goto/16 :goto_1
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 8
    .parameter "state"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getEngine()Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    move-result-object v0

    .line 423
    .local v0, engine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 424
    .local v5, bundle:Landroid/os/Bundle;
    const-string v1, "Key_PhoneState"

    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 426
    if-eqz v0, :cond_0

    .line 427
    :try_start_0
    const-string v1, "idlescreen_Phone_state_update"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v7

    .line 437
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 440
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhoneStateChanged~ e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reconnect()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->disconnect()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->connect()Z

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendReminderState()V
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterReminder:Z

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    goto :goto_0
.end method

.method public sendReminderState(I)V
    .locals 11
    .parameter "type"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getEngine()Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    move-result-object v0

    .line 369
    .local v0, engine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    if-eqz v0, :cond_1

    .line 370
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getReminderCtrl()Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    move-result-object v8

    .line 372
    .local v8, reminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    const/4 v9, 0x0

    .line 373
    .local v9, retType:I
    const/4 v10, 0x0

    .line 374
    .local v10, state:Lcom/htc/lockscreen/reminder/ReminderState;
    if-ne p1, v2, :cond_2

    .line 375
    const/4 v9, 0x1

    .line 376
    iget-object v10, v8, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mAlarmState:Lcom/htc/lockscreen/reminder/ReminderState;

    .line 398
    :cond_0
    :goto_0
    if-lez v9, :cond_1

    .line 399
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 400
    .local v5, bundle:Landroid/os/Bundle;
    const-string v1, "Key_ReminderState"

    invoke-virtual {v5, v1, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 401
    const-string v1, "Key_ReminderType"

    invoke-virtual {v5, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    :try_start_0
    const-string v1, "idleScreenReminderUpdate"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v8           #reminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    .end local v9           #retType:I
    .end local v10           #state:Lcom/htc/lockscreen/reminder/ReminderState;
    :cond_1
    :goto_1
    return-void

    .line 378
    .restart local v8       #reminderCtrl:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
    .restart local v9       #retType:I
    .restart local v10       #state:Lcom/htc/lockscreen/reminder/ReminderState;
    :cond_2
    if-ne p1, v3, :cond_3

    .line 379
    const/4 v9, 0x2

    .line 380
    iget-object v10, v8, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTimerState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0

    .line 382
    :cond_3
    if-ne p1, v4, :cond_4

    .line 383
    const/4 v9, 0x3

    .line 384
    iget-object v10, v8, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mCalendarState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0

    .line 386
    :cond_4
    if-ne p1, v6, :cond_5

    .line 387
    const/4 v9, 0x4

    .line 388
    iget-object v10, v8, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;->mTaskState:Lcom/htc/lockscreen/reminder/ReminderState;

    goto :goto_0

    .line 391
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 392
    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    .line 393
    invoke-virtual {p0, v3}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    .line 394
    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    .line 395
    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendReminderState(I)V

    goto :goto_1

    .line 410
    .restart local v5       #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 412
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 414
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 415
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendReminderState~ e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public sendRemoteView()V
    .locals 10

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getEngine()Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    move-result-object v0

    .line 446
    .local v0, engine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v5, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getRemoteViewCtrl()Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;

    move-result-object v8

    .line 448
    .local v8, rvCtrl:Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;
    invoke-virtual {v8}, Lcom/htc/lockscreen/app/ctrl/RemoteViewCtrl;->getCurrentView()Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;

    move-result-object v9

    .line 449
    .local v9, view:Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;
    if-eqz v9, :cond_0

    .line 450
    const-string v1, "Key_remoteView"

    invoke-virtual {v9}, Lcom/htc/lockscreen/app/ctrl/IdlePubViewWrap;->getView()Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 453
    :cond_0
    if-eqz v0, :cond_1

    .line 454
    :try_start_0
    const-string v1, "idleScreen_remote_view"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    :cond_1
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v7

    .line 464
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 467
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRemoteView~ e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendTelephonyState()V
    .locals 9

    .prologue
    .line 334
    iget-boolean v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mRegisterTelePhony:Z

    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->getEngine()Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    move-result-object v0

    .line 338
    .local v0, engine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;
    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getTelephonyState()Lcom/htc/lockscreen/telephony/TelephonyState;

    move-result-object v8

    .line 340
    .local v8, state:Lcom/htc/lockscreen/telephony/TelephonyState;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v5, bundle:Landroid/os/Bundle;
    const-string v1, "Key_TelephonyState"

    invoke-virtual {v5, v1, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 343
    :try_start_0
    const-string v1, "idleScreenTelephonyUpdate"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v7

    .line 352
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v7           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 355
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "IdleScreenServiceWrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTelephonyState~ e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setDimension(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    iput p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mWidth:I

    .line 113
    iput p2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mHeight:I

    .line 114
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    sget-object v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->CONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    iget v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mWidth:I

    iget v4, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mHeight:I

    invoke-interface {v1, v3, v4}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->setDesiredSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 127
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "IdleScreenServiceWrap"

    const-string v3, "Failed to setDimension"

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLockScreenResume(Z)Z
    .locals 10
    .parameter "bResume"

    .prologue
    const/4 v8, 0x0

    .line 245
    iget-object v9, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 249
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v5, bundle:Landroid/os/Bundle;
    const-string v0, "Key_IsResume"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const-string v1, "idleScreenIsResume"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v0, 0x1

    :try_start_1
    monitor-exit v9

    .line 259
    .end local v5           #bundle:Landroid/os/Bundle;
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v7

    .line 256
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed to show IdelScreen"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    monitor-exit v9

    move v0, v8

    .line 259
    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOnServiceListener(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    .line 109
    return-void
.end method

.method public setVisibility(Z)V
    .locals 5
    .parameter "show"

    .prologue
    .line 203
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v1, v1, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    invoke-interface {v1, p1}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->setVisibility(Z)V

    .line 208
    if-nez p1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    .line 211
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/htc/lockscreen/app/LSState;->setNeedWaitFirstFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    return-void

    .line 214
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "IdleScreenServiceWrap"

    const-string v3, "Failed to show IdelScreen"

    invoke-static {v1, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public showLiveWallpaper()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mShowLiveWallpaper:Z

    return v0
.end method

.method public triggerReconnect()V
    .locals 4

    .prologue
    .line 915
    iget-object v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mState:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    sget-object v3, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;->CONNECTED:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$State;

    if-eq v1, v3, :cond_0

    .line 917
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mListener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;

    .line 918
    .local v0, listener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    if-eqz v0, :cond_0

    .line 919
    invoke-interface {v0, p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;->onConnectTimeout(Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;)V

    .line 922
    .end local v0           #listener:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$onServiceListener;
    :cond_0
    monitor-exit v2

    .line 923
    return-void

    .line 922
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateData()V
    .locals 2

    .prologue
    .line 790
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/LSState;->getPhoneCtrl()Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/ctrl/PhoneCtrl;->getPhoneState()Lcom/htc/lockscreen/telephony/PhoneState;

    move-result-object v0

    .line 791
    .local v0, state:Lcom/htc/lockscreen/telephony/PhoneState;
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    .line 792
    invoke-virtual {p0}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->sendRemoteView()V

    .line 793
    return-void
.end method

.method public updateSurfaceState()V
    .locals 3

    .prologue
    .line 905
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSurfaceState mSurfaceReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-boolean v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mSurfaceReady:Z

    if-eqz v0, :cond_0

    .line 907
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/LSState;->setNeedWaitFirstFrame(Z)V

    .line 912
    :goto_0
    return-void

    .line 910
    :cond_0
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/app/LSState;->setNeedWaitFirstFrame(Z)V

    goto :goto_0
.end method

.method public updateViewMode(I)V
    .locals 9
    .parameter "viewMode"

    .prologue
    .line 225
    iget v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I

    if-eq v0, p1, :cond_1

    .line 226
    iput p1, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I

    .line 227
    const-string v0, "IdleScreenServiceWrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mViewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v8, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    if-eqz v0, :cond_0

    .line 232
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v5, bundle:Landroid/os/Bundle;
    const-string v0, "Key_ViewMode"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    iget-object v0, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mConnection:Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;

    iget-object v0, v0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap$IdleScreenConnection;->mEngine:Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;

    const-string v1, "idleScreenViewMode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/htc/lockscreen/idlescreen/IIdleScreenEngine;->sendIdleScreenCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v5           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v8

    .line 242
    :cond_1
    return-void

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "IdleScreenServiceWrap"

    const-string v1, "Failed to show IdelScreen"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateVisible()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 796
    iget-object v7, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v7}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->isShow()Z

    move-result v2

    .line 797
    .local v2, isLSShow:Z
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/lockscreen/app/LSState;->isShow()Z

    move-result v1

    .line 798
    .local v1, isKeyguardShow:Z
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/lockscreen/app/LSState;->isFocused()Z

    move-result v0

    .line 799
    .local v0, isFocus:Z
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/lockscreen/app/LSState;->getLockScreenViewMode()I

    move-result v4

    .line 801
    .local v4, viewState:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v3, v5

    .line 803
    .local v3, isShow:Z
    :goto_0
    const-string v7, "IdleScreenServiceWrap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachEngine isLSShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v7, "IdleScreenServiceWrap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachEngine isKeyguardShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v7, "IdleScreenServiceWrap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachEngine isFocus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v7, "IdleScreenServiceWrap"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachEngine viewState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v7, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v7, v3, v6, v5}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->setVisibility(ZZZ)V

    .line 808
    iget-object v5, p0, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;->mLSManager:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    invoke-virtual {v5, v4}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->updateViewMode(I)V

    .line 809
    return-void

    .end local v3           #isShow:Z
    :cond_0
    move v3, v6

    .line 801
    goto :goto_0
.end method
