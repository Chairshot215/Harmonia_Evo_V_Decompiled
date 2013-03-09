.class public Lcom/htc/launcher/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# static fields
.field private static final ACTION_PAUSE_APP_WIDGETS:Ljava/lang/String; = "com.htc.content.Intent.ACTION_PAUSE_APP_WIDGETS"

.field private static final ACTION_RESUME_APP_WIDGETS:Ljava/lang/String; = "com.htc.content.Intent.ACTION_RESUME_APP_WIDGETS"

.field private static final LOG_TAG:Ljava/lang/String; = "LauncherAppWidgetHost"

.field private static final sPauseAppWidgetsIntent:Landroid/content/Intent;

.field private static final sResumeAppWidgetsIntent:Landroid/content/Intent;


# instance fields
.field private mContext:Landroid/content/Context;

.field mListening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_RESUME_APP_WIDGETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/LauncherAppWidgetHost;->sResumeAppWidgetsIntent:Landroid/content/Intent;

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.content.Intent.ACTION_PAUSE_APP_WIDGETS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/launcher/LauncherAppWidgetHost;->sPauseAppWidgetsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "hostId"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    .line 45
    iput-object p1, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "appWidget"

    .prologue
    .line 51
    new-instance v0, Lcom/htc/launcher/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/htc/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public startListening()V
    .locals 4

    .prologue
    .line 56
    iget-boolean v1, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    if-eqz v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    .line 60
    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/launcher/LauncherAppWidgetHost;->sResumeAppWidgetsIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LauncherAppWidgetHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to start listening - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/htc/launcher/LauncherAppWidgetHost;->sPauseAppWidgetsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_1
.end method
