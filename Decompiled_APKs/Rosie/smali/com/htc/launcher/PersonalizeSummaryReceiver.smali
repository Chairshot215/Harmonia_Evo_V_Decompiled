.class public Lcom/htc/launcher/PersonalizeSummaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonalizeSummaryReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalizeSummaryReceiver"

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
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    const-string v5, "PersonalizeSummary"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 19
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 23
    sget-object v5, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    const-string v5, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, summary:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/htc/launcher/Launcher;->ACTION_SUMMARY_CHANGES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #summary:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 36
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #summary:Ljava/lang/String;
    :cond_1
    return-void
.end method
