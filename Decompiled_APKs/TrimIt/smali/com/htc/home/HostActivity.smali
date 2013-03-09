.class public abstract Lcom/htc/home/HostActivity;
.super Landroid/content/ContextWrapper;
.source "HostActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HostActivity"


# instance fields
.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method


# virtual methods
.method public attachActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public abstract enableGLDrawing(Landroid/view/View;Z)V
.end method

.method public abstract enableScroll(Z)V
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "sortOrder"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 104
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 116
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 117
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newAlertDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 85
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newHtcAlertDialogBuilder()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 93
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract onViewInvalidated(Landroid/view/View;)V
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 78
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 32
    iget-object v2, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 33
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "HostActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 43
    iget-object v2, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "HostActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 4
    .parameter "child"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "HostActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 66
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 73
    :goto_0
    return v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "HostActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 124
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 127
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/htc/home/HostActivity;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 131
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 134
    :cond_0
    return-void
.end method
