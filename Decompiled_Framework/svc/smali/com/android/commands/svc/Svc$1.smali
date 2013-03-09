.class final Lcom/android/commands/svc/Svc$1;
.super Lcom/android/commands/svc/Svc$Command;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/commands/svc/Svc$1;->shortHelp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    array-length v6, p1

    if-ne v6, v11, :cond_1

    aget-object v6, p1, v10

    #calls: Lcom/android/commands/svc/Svc;->lookupCommand(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;
    invoke-static {v6}, Lcom/android/commands/svc/Svc;->access$000(Ljava/lang/String;)Lcom/android/commands/svc/Svc$Command;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->longHelp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Available commands:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    array-length v0, v6

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v1, v6, v3

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_2

    move v5, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    %-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s    %s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    sget-object v6, Lcom/android/commands/svc/Svc;->COMMANDS:[Lcom/android/commands/svc/Svc$Command;

    aget-object v1, v6, v3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->name()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1}, Lcom/android/commands/svc/Svc$Command;->shortHelp()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public shortHelp()Ljava/lang/String;
    .locals 1

    const-string v0, "Show information about the subcommands"

    return-object v0
.end method
