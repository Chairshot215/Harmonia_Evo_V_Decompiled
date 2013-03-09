.class public Lcom/android/commands/input/Input;
.super Ljava/lang/Object;
.source "Input.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/commands/input/Input;

    invoke-direct {v0}, Lcom/android/commands/input/Input;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/input/Input;->run([Ljava/lang/String;)V

    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    array-length v1, p1

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->sendText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "keyevent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/android/commands/input/Input;->sendKeyEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "motionevent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: motionevent not yet supported."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/commands/input/Input;->showUsage()V

    goto :goto_0
.end method

.method private sendKeyEvent(Ljava/lang/String;)V
    .locals 17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "SendKeyEvent"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    new-instance v8, Landroid/view/KeyEvent;

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-wide v9, v2

    move-wide v11, v2

    move v14, v7

    invoke-direct/range {v8 .. v15}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v8, v5}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v16

    const-string v4, "Input"

    const-string v5, "DeadOjbectException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMotionEvent(JIFFFF)V
    .locals 0

    return-void
.end method

.method private sendText(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x73

    if-ne v8, v9, :cond_0

    const/16 v8, 0x20

    invoke-virtual {v0, v6, v8}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v8, -0x1

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_3

    aget-object v4, v5, v6

    const-string v8, "SendKeyEvent"

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v4, v9}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v8, "Input"

    const-string v9, "DeadOjbectException"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return-void
.end method

.method private showUsage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: input [text|keyevent]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input text <string>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       input keyevent <event_code>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
