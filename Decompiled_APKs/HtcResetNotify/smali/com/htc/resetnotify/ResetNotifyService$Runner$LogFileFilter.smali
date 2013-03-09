.class Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;
.super Ljava/lang/Object;
.source "ResetNotifyService.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/resetnotify/ResetNotifyService$Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogFileFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/resetnotify/ResetNotifyService$Runner;


# direct methods
.method private constructor <init>(Lcom/htc/resetnotify/ResetNotifyService$Runner;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;->this$1:Lcom/htc/resetnotify/ResetNotifyService$Runner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/resetnotify/ResetNotifyService$Runner;Lcom/htc/resetnotify/ResetNotifyService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/htc/resetnotify/ResetNotifyService$Runner$LogFileFilter;-><init>(Lcom/htc/resetnotify/ResetNotifyService$Runner;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 448
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, name:Ljava/lang/String;
    const-string v1, "device_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "system_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
