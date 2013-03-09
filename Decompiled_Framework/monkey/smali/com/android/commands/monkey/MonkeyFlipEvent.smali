.class public Lcom/android/commands/monkey/MonkeyFlipEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyFlipEvent.java"


# static fields
.field private static final FLIP_0:[B

.field private static final FLIP_1:[B


# instance fields
.field private final mKeyboardOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x7ft
        0x6t
        0x0t
        0x0t
        0xe0t
        0x39t
        0x1t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x85t
        0x6t
        0x0t
        0x0t
        0x9ft
        0xa5t
        0xct
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 5

    if-lez p3, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Sending Flip keyboardOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/dev/input/event0"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyFlipEvent;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_0:[B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    sget-object v2, Lcom/android/commands/monkey/MonkeyFlipEvent;->FLIP_1:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got IOException performing flip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1
.end method
