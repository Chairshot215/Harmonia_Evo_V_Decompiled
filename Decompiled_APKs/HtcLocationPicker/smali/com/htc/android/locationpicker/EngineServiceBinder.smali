.class public Lcom/htc/android/locationpicker/EngineServiceBinder;
.super Ljava/lang/Object;
.source "EngineServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EngineServiceBinder"

.field private static m_Instance:Lcom/htc/android/locationpicker/EngineServiceBinder;


# instance fields
.field private bIsBindSuccess:Z

.field private bIsEntryBinding:Z

.field private m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Instance:Lcom/htc/android/locationpicker/EngineServiceBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_context:Landroid/content/Context;

    .line 10
    iput-boolean v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    .line 11
    iput-boolean v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z

    .line 13
    iput-object v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/locationpicker/EngineServiceBinder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/EngineServiceBinder;)Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    return-object v0
.end method

.method public static getInstance()Lcom/htc/android/locationpicker/EngineServiceBinder;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Instance:Lcom/htc/android/locationpicker/EngineServiceBinder;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/htc/android/locationpicker/EngineServiceBinder;

    invoke-direct {v0}, Lcom/htc/android/locationpicker/EngineServiceBinder;-><init>()V

    sput-object v0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Instance:Lcom/htc/android/locationpicker/EngineServiceBinder;

    .line 27
    :cond_0
    sget-object v0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Instance:Lcom/htc/android/locationpicker/EngineServiceBinder;

    return-object v0
.end method


# virtual methods
.method public bindEngineService(Landroid/content/Context;)V
    .locals 2
    .parameter "_context"

    .prologue
    .line 46
    const-string v0, "EngineServiceBinder"

    const-string v1, "[EngineServiceBinder]: bindEngineService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_context:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    .line 50
    new-instance v0, Lcom/htc/android/locationpicker/EngineServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/EngineServiceBinder$1;-><init>(Lcom/htc/android/locationpicker/EngineServiceBinder;)V

    invoke-static {p1, v0}, Lcom/htc/laputa/engine/util/Service;->bindEngineService(Landroid/content/Context;Lcom/htc/laputa/engine/util/Service$ServiceListener;)Z

    .line 69
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/locationpicker/EngineServiceBinder;->unbineEngineService()V

    .line 98
    :cond_0
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isBindSuccess()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z

    return v0
.end method

.method public isEntryBinding()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    return v0
.end method

.method public setListener(Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;)V
    .locals 0
    .parameter "_Listener"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_Listener:Lcom/htc/android/locationpicker/EngineServiceBinder$OnEngineUtilServiceListener;

    .line 20
    return-void
.end method

.method public unbineEngineService()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 73
    const-string v1, "EngineServiceBinder"

    const-string v2, "[EngineServiceBinder]: unbineEngineService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/laputa/engine/util/Service;->unbineEngineService(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsBindSuccess:Z

    .line 89
    iput-boolean v6, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->bIsEntryBinding:Z

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_context:Landroid/content/Context;

    .line 91
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EngineServiceBinder"

    const-string v2, "[%s] unbindmap service error, ex: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/android/locationpicker/EngineServiceBinder;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
