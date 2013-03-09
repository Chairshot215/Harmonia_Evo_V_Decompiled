.class public abstract Lcom/android/CSDFunctionG/GSDaemon;
.super Ljava/lang/Object;
.source "GSDaemon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runCommand(Ljava/lang/String;Z)I
    .locals 3
    .parameter "strCmd"
    .parameter "boolWait"

    .prologue
    .line 8
    const/4 v0, -0x1

    .line 14
    .local v0, code:I
    :try_start_0
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 16
    .local v1, process:Ljava/lang/Process;
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 22
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1           #process:Ljava/lang/Process;
    :goto_0
    return v0

    .line 26
    .restart local v1       #process:Ljava/lang/Process;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 29
    .end local v1           #process:Ljava/lang/Process;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
