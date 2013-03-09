.class public Lcom/coremobility/integration/c/a;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/coremobility/integration/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    const/4 v0, 0x5

    sput v0, Lcom/coremobility/integration/c/a;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p0, p1}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Z)V
    .locals 5

    const/4 v1, 0x4

    if-nez p0, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v1

    const-string v2, "CM_Assert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assertion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at Line# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method private static varargs a(ZIILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    sget v0, Lcom/coremobility/integration/c/a;->b:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v5

    const/16 v6, 0x407

    sget-boolean v0, Lcom/coremobility/a/b;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v6, v4, v0}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v0

    sput v0, Lcom/coremobility/integration/c/a;->b:I

    :cond_0
    if-nez p0, :cond_2

    sget v0, Lcom/coremobility/integration/c/a;->b:I

    if-le p1, v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_4

    :goto_3
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mod:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    packed-switch p2, :pswitch_data_0

    const-string v0, "NoModuleID"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    array-length v0, p4

    if-eqz v0, :cond_a

    array-length v7, p4

    move v0, v4

    :goto_5
    if-ge v0, v7, :cond_b

    aget-object v2, p4, v0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    move v0, v1

    :goto_6
    if-eqz v0, :cond_9

    new-array v8, v7, [Ljava/lang/Object;

    move v2, v4

    :goto_7
    if-ge v2, v7, :cond_8

    aget-object v0, p4, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    new-instance v9, Ljava/lang/Integer;

    aget-object v0, p4, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_8
    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :pswitch_0
    const-string v0, "None"

    goto :goto_4

    :pswitch_1
    const-string v0, "Os"

    goto :goto_4

    :pswitch_2
    const-string v0, "Utilities"

    goto :goto_4

    :pswitch_3
    const-string v0, "TargetIntegration"

    goto :goto_4

    :pswitch_4
    const-string v0, "Database"

    goto :goto_4

    :pswitch_5
    const-string v0, "Configuration"

    goto :goto_4

    :pswitch_6
    const-string v0, "VnotesApp"

    goto :goto_4

    :pswitch_7
    const-string v0, "DoApi"

    goto :goto_4

    :pswitch_8
    const-string v0, "Gui"

    goto :goto_4

    :pswitch_9
    const-string v0, "Heap"

    goto :goto_4

    :pswitch_a
    const-string v0, "CodeManager"

    goto :goto_4

    :pswitch_b
    const-string v0, "CallTrace"

    goto :goto_4

    :pswitch_c
    const-string v0, "Network"

    goto :goto_4

    :pswitch_d
    const-string v0, "Sip"

    goto :goto_4

    :pswitch_e
    const-string v0, "JavaProxy"

    goto :goto_4

    :pswitch_f
    const-string v0, "IntegratedDebugger"

    goto :goto_4

    :pswitch_10
    const-string v0, "Rtp"

    goto :goto_4

    :pswitch_11
    const-string v0, "Vocoder"

    goto :goto_4

    :pswitch_12
    const-string v0, "Ptt"

    goto :goto_4

    :pswitch_13
    const-string v0, "CM_19"

    goto :goto_4

    :pswitch_14
    const-string v0, "Simulator"

    goto :goto_4

    :pswitch_15
    const-string v0, "CM_21"

    goto :goto_4

    :pswitch_16
    const-string v0, "PttApp"

    goto/16 :goto_4

    :pswitch_17
    const-string v0, "Integration"

    goto/16 :goto_4

    :pswitch_18
    const-string v0, "AppletManager"

    goto/16 :goto_4

    :pswitch_19
    const-string v0, "CM_25"

    goto/16 :goto_4

    :pswitch_1a
    const-string v0, "Dm"

    goto/16 :goto_4

    :pswitch_1b
    const-string v0, "NabApp"

    goto/16 :goto_4

    :pswitch_1c
    const-string v0, "Vnotes"

    goto/16 :goto_4

    :pswitch_1d
    const-string v0, "SMS"

    goto/16 :goto_4

    :pswitch_1e
    const-string v0, "VoIP"

    goto/16 :goto_4

    :pswitch_1f
    const-string v0, "WbApp"

    goto/16 :goto_4

    :pswitch_20
    const-string v0, "SQA"

    goto/16 :goto_4

    :pswitch_21
    const-string v0, "Mms"

    goto/16 :goto_4

    :pswitch_22
    const-string v0, "Phonebook"

    goto/16 :goto_4

    :pswitch_23
    const-string v0, "ContactsApp"

    goto/16 :goto_4

    :pswitch_24
    const-string v0, "Contacts"

    goto/16 :goto_4

    :pswitch_25
    const-string v0, "ScriptEngine"

    goto/16 :goto_4

    :pswitch_26
    const-string v0, "License"

    goto/16 :goto_4

    :pswitch_27
    const-string v0, "WiFi"

    goto/16 :goto_4

    :pswitch_28
    const-string v0, "PhoneManager"

    goto/16 :goto_4

    :pswitch_29
    const-string v0, "Glms"

    goto/16 :goto_4

    :pswitch_2a
    const-string v0, "GlmsApp"

    goto/16 :goto_4

    :pswitch_2b
    const-string v0, "Xcap"

    goto/16 :goto_4

    :pswitch_2c
    const-string v0, "MPTTContacts"

    goto/16 :goto_4

    :pswitch_2d
    const-string v0, "KeySequence"

    goto/16 :goto_4

    :pswitch_2e
    const-string v0, "Http"

    goto/16 :goto_4

    :pswitch_2f
    const-string v0, "HttpAccess"

    goto/16 :goto_4

    :pswitch_30
    const-string v0, "NetworkMonitor"

    goto/16 :goto_4

    :pswitch_31
    const-string v0, "Vtt"

    goto/16 :goto_4

    :pswitch_32
    const-string v0, "Rest"

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_6
    move v0, v4

    goto/16 :goto_8

    :cond_7
    :try_start_1
    aget-object v0, p4, v2

    aput-object v0, v8, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    packed-switch p1, :pswitch_data_1

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Line# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :pswitch_33
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_34
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_35
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_36
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_b
    move v0, v4

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 5

    const/4 v1, 0x4

    if-nez p0, :cond_0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->b(I)I

    move-result v1

    const-string v2, "CM_Assert"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Assertion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at Line# "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/coremobility/integration/c/a;->a:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    if-gtz p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput p0, Lcom/coremobility/integration/c/a;->b:I

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/16 v2, 0x407

    invoke-virtual {v1, v2, v0, p0, v0}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(I)I
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs b(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs c(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Lcom/coremobility/integration/c/a;->a(ZIILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
