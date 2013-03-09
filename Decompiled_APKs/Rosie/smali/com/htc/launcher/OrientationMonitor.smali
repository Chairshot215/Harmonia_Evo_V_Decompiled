.class public Lcom/htc/launcher/OrientationMonitor;
.super Ljava/lang/Object;
.source "OrientationMonitor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[OrientationKPI]"

.field private static final TRACE_PATH:Ljava/lang/String; = "/sdcard/rosie_orientation"

.field public static localLOGD:Z


# instance fields
.field private isUseTraceView:Z

.field private mBeginDispatchDraw:J

.field private mBeginWorkspaceOnMeasure:J

.field private mContext:Landroid/content/Context;

.field private mEndDispatchDraw:J

.field private mEndWorkspaceOnMeasure:J

.field private mOnConfigurationChanged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationLogOutput:Ljava/io/FileOutputStream;

.field private mOrientationMonitor:Z

.field private mTimeEnd:J

.field private mTimeOnConfigurationChanged:J

.field private mTimeOnOrientationChanged:J

.field private mWorkspaceDispatchDraw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspaceOnMeasure:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v3, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    .line 23
    iput-boolean v3, p0, Lcom/htc/launcher/OrientationMonitor;->isUseTraceView:Z

    .line 26
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    .line 27
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnOrientationChanged:J

    .line 28
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeEnd:J

    .line 30
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginWorkspaceOnMeasure:J

    .line 31
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mEndWorkspaceOnMeasure:J

    .line 33
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginDispatchDraw:J

    .line 34
    iput-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mEndDispatchDraw:J

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/OrientationMonitor;->mOnConfigurationChanged:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceOnMeasure:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceDispatchDraw:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/htc/launcher/OrientationMonitor;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/"

    const-string v2, "OrientationMonitor"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iput-boolean v4, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    .line 46
    sget-boolean v1, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "[OrientationKPI]"

    const-string v2, "enable OrientationMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v1, "/data/data/"

    const-string v2, "TraceView"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iput-boolean v4, p0, Lcom/htc/launcher/OrientationMonitor;->isUseTraceView:Z

    .line 52
    sget-boolean v1, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "[OrientationKPI]"

    const-string v2, "enable traceView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_1
    return-void
.end method

.method private clean()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 162
    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    .line 163
    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnOrientationChanged:J

    .line 164
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOnConfigurationChanged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceOnMeasure:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    return-void
.end method

.method private refreshFile()V
    .locals 5

    .prologue
    .line 152
    iget-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/launcher/OrientationMonitor;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orien_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationLogOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/io/IOException;
    const-string v1, "[OrientationKPI]"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnConfigurationChanged()V
    .locals 6

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOnConfigurationChanged:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged(Rosie) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnConfigurationChanged(Ljava/lang/Object;J)V
    .locals 4
    .parameter "component"
    .parameter "diff"

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOnConfigurationChanged:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public beginDispatchDraw()V
    .locals 4

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "[OrientationKPI]"

    const-string v1, "beginDispatchDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginDispatchDraw:J

    goto :goto_0
.end method

.method public beginWorkspaceOnMeasure()V
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "[OrientationKPI]"

    const-string v1, "beginWorkspaceOnMeasure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginWorkspaceOnMeasure:J

    goto :goto_0
.end method

.method public end()V
    .locals 9

    .prologue
    .line 111
    iget-wide v4, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-boolean v4, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v4, :cond_2

    const-string v4, "[OrientationKPI]"

    const-string v5, "end()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeEnd:J

    .line 116
    iget-boolean v4, p0, Lcom/htc/launcher/OrientationMonitor;->isUseTraceView:Z

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/htc/launcher/OrientationMonitor;->refreshFile()V

    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v4, ">>>>> time diff"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v4, p0, Lcom/htc/launcher/OrientationMonitor;->mOnConfigurationChanged:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, data:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Ljava/io/IOException;
    sget-boolean v4, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v4, :cond_4

    const-string v4, "[OrientationKPI]"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/htc/launcher/OrientationMonitor;->clean()V

    goto :goto_0

    .line 127
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nonOrientationChanged(Total) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnOrientationChanged:J

    iget-wide v7, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v4, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceOnMeasure:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 130
    .local v1, data:Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nWorkspace.onMeasure(Total) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 133
    .end local v1           #data:Ljava/lang/Long;
    :cond_6
    iget-object v4, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceDispatchDraw:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 134
    .restart local v1       #data:Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nWorkspace.dispatchDraw(Total) - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 137
    .end local v1           #data:Ljava/lang/Long;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nTotal - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeEnd:J

    iget-wide v7, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v4, "\n\n>>>>> processes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    sget-boolean v4, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v4, :cond_8

    const-string v4, "[OrientationKPI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_8
    iget-object v4, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationLogOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    iget-object v4, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationLogOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public endDispatchDraw()V
    .locals 5

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "[OrientationKPI]"

    const-string v1, "endDispatchDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mEndDispatchDraw:J

    .line 107
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceDispatchDraw:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mEndDispatchDraw:J

    iget-wide v3, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginDispatchDraw:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public endWorkspaceOnMeasure()V
    .locals 5

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/OrientationMonitor;->localLOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "[OrientationKPI]"

    const-string v1, "endWorkspaceOnMeasure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mEndWorkspaceOnMeasure:J

    .line 92
    iget-object v0, p0, Lcom/htc/launcher/OrientationMonitor;->mWorkspaceOnMeasure:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/htc/launcher/OrientationMonitor;->mEndWorkspaceOnMeasure:J

    iget-wide v3, p0, Lcom/htc/launcher/OrientationMonitor;->mBeginWorkspaceOnMeasure:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    goto :goto_0
.end method

.method public onOrientationChanged(Z)V
    .locals 2
    .parameter "isOrientationChanged"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/htc/launcher/OrientationMonitor;->mOrientationMonitor:Z

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnOrientationChanged:J

    goto :goto_0

    .line 76
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/launcher/OrientationMonitor;->mTimeOnConfigurationChanged:J

    goto :goto_0
.end method
