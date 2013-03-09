.class public final Lcom/coremobility/integration/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/f;


# static fields
.field private static c:Lcom/coremobility/integration/d;


# instance fields
.field public a:Z

.field private b:Ljava/lang/Object;

.field private d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/d;->c:Lcom/coremobility/integration/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/d;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/coremobility/integration/d;
    .locals 1

    sget-object v0, Lcom/coremobility/integration/d;->c:Lcom/coremobility/integration/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/d;

    invoke-direct {v0}, Lcom/coremobility/integration/d;-><init>()V

    sput-object v0, Lcom/coremobility/integration/d;->c:Lcom/coremobility/integration/d;

    invoke-direct {v0}, Lcom/coremobility/integration/d;->d()V

    :cond_0
    sget-object v0, Lcom/coremobility/integration/d;->c:Lcom/coremobility/integration/d;

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/a/b;

    invoke-direct {v0}, Lcom/coremobility/integration/a/b;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/coremobility/integration/a/b;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/coremobility/integration/a/b;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/integration/d;->b:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/coremobility/integration/d;->a:Z

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/16 v9, 0x100

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v11, v3}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x101

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12, v4}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x102

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13, v5}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x103

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v12, v13, v14, v6}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x105

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v13, v14, v15, v7}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x104

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0, v8}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coremobility/integration/d;->b:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    :try_start_1
    aget v3, v3, v15

    if-nez v3, :cond_0

    const/16 v3, 0x104

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v9}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    aget v3, v4, v3

    if-nez v3, :cond_1

    const/16 v3, 0x104

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v10}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    aget v3, v5, v3

    if-nez v3, :cond_2

    const/16 v3, 0x104

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v11}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    aget v3, v6, v3

    if-nez v3, :cond_3

    const/16 v3, 0x104

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v12}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_3
    const/4 v3, 0x0

    aget v3, v7, v3

    if-nez v3, :cond_4

    const/16 v3, 0x104

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v13}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_4
    const/4 v3, 0x0

    aget v3, v8, v3

    if-nez v3, :cond_5

    const/16 v3, 0x104

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v1}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    :cond_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v14

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final a(II[I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coremobility/integration/d;->b:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    aput v5, p3, v4

    const/4 v4, 0x1

    new-array v4, v4, [I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v2, v4, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/b;

    invoke-virtual {v0, p2}, Lcom/coremobility/integration/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, p3, v1

    :cond_0
    monitor-exit v3

    return-object v0

    :pswitch_1
    const/4 v2, 0x0

    const/16 v5, 0x100

    aput v5, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :pswitch_2
    const/4 v2, 0x0

    const/16 v5, 0x101

    :try_start_1
    aput v5, v4, v2

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x0

    const/16 v5, 0x102

    aput v5, v4, v2

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    const/16 v5, 0x103

    aput v5, v4, v2

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x0

    const/16 v5, 0x105

    aput v5, v4, v2

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x0

    const/16 v5, 0x104

    aput v5, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.coremobility.app.vnotes.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/coremobility/integration/d;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/integration/d;->b()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.coremobility.app.vnotes.PHONE_CALL_STATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/coremobility/integration/d;->a:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/integration/d;->b()V

    goto :goto_0

    :cond_2
    const-string v2, "com.coremobility.app.vnotes.OMADM_PARAM_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/d;->d()V

    invoke-virtual {p0}, Lcom/coremobility/integration/d;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 12

    const/4 v11, 0x6

    const/4 v2, 0x1

    const/4 v10, 0x3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/coremobility/integration/d;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    :try_start_1
    new-instance v3, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v3, v0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_2
    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_5

    const/4 v0, 0x3

    const-string v2, "GetString: Esn is null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-nez v3, :cond_6

    const/4 v0, 0x3

    const-string v2, "GetString: Mdn is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/coremobility/integration/d;->a:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v0

    invoke-virtual {v0, v11, p0}, Lcom/coremobility/integration/e/e;->b(ILcom/coremobility/integration/app/f;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/a/a;->i()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetString: Esn is not 8 chars "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetString: Mdn is not phone number "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/d;->a:Z

    goto :goto_3

    :cond_8
    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ESN="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MDN="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v7, 0x101

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v0}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v7, 0x100

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v3}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v7, 0x102

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v4}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v7, 0x103

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v5}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v7, 0x105

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v6}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    const/16 v7, 0x104

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8, v6}, Lcom/coremobility/integration/a/a;->b(IILjava/lang/String;)Z

    iget-object v2, p0, Lcom/coremobility/integration/d;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v7, 0x101

    const/4 v8, 0x0

    :try_start_4
    invoke-direct {p0, v7, v8, v0}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    const/16 v0, 0x100

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    const/16 v0, 0x102

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    const/16 v0, 0x103

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v5}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    const/16 v0, 0x105

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v6}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    const/16 v0, 0x104

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v6}, Lcom/coremobility/integration/d;->a(IILjava/lang/String;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/coremobility/integration/d;->a:Z

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v0

    invoke-virtual {v0, v11, p0}, Lcom/coremobility/integration/e/e;->a(ILcom/coremobility/integration/app/f;)V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method public final c()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/integration/d;->d()V

    invoke-virtual {p0}, Lcom/coremobility/integration/d;->b()V

    return-void
.end method
