.class public Lcom/htc/cs/util/CSConnectionModeMgr;
.super Ljava/lang/Object;
.source "CSConnectionModeMgr.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;,
        Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[CSConnectionModeMgr] "

.field private static final mPreferenceName:Ljava/lang/String; = "CSPreference"


# instance fields
.field private mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

.field private mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

.field private mContext:Landroid/content/Context;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v2, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mContext:Landroid/content/Context;

    .line 17
    iput-object v2, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 19
    sget-object v0, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->Manual:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    iput-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 20
    iput-object v2, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

    .line 23
    if-nez p1, :cond_0

    .line 25
    const-string v0, "MyHTC"

    const-string v1, "[CSConnectionModeMgr] Context is nullpoint"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "Context is nullpoint"

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mContext:Landroid/content/Context;

    const-string v1, "CSPreference"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 33
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "syncFrequency"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->conversion(I)Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 42
    return-void
.end method


# virtual methods
.method public getCurrentConncetionMode()Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    return-object v0
.end method

.method public getSyncFrequency()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-virtual {v0}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->getSyncFrequency()I

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 78
    const-string v0, "syncFrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "syncFrequency"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->conversion(I)Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 84
    invoke-virtual {p0}, Lcom/htc/cs/util/CSConnectionModeMgr;->start()V

    .line 87
    :cond_0
    return-void
.end method

.method public registerOnCSConnectionModeChangeListener(Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

    .line 176
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 96
    iput-object v1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cs/util/CSConnectionModeMgr;->unregisterOnCSConnectionModeChangeListener()V

    .line 100
    iput-object v1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method public setCurrentConnectionMode(Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    .line 74
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

    iget-object v1, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mConnectionMode:Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;

    invoke-virtual {v1}, Lcom/htc/cs/util/CSConnectionModeMgr$CSConnectionMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;->OnCSConnectionModeChanged(Lcom/htc/cs/util/CSConnectionModeMgr;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method public unregisterOnCSConnectionModeChangeListener()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cs/util/CSConnectionModeMgr;->mCSConnectionModeChangeListener:Lcom/htc/cs/util/CSConnectionModeMgr$OnCSConnectionModeChangeListener;

    .line 187
    return-void
.end method
