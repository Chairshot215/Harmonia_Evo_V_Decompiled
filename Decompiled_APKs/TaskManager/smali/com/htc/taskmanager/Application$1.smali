.class Lcom/htc/taskmanager/Application$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/Application;->setupQuietUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/Application;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/Application;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/taskmanager/Application$1;->this$0:Lcom/htc/taskmanager/Application;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "thread"
    .parameter "e"

    .prologue
    .line 28
    :try_start_0
    const-string v0, "TaskManager_Application"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 31
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method
