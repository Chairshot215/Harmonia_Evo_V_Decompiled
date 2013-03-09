.class public final Lcom/coremobility/integration/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothHeadset;

.field private b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private c:I

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v11, 0x2

    const/16 v10, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    iput-object v0, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput v2, p0, Lcom/coremobility/integration/b;->c:I

    iput-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/coremobility/integration/c;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/c;-><init>(Lcom/coremobility/integration/b;)V

    iput-object v2, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/b;->b:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothHeadset"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v3, "android.bluetooth.BluetoothHeadset.ServiceListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    :try_start_1
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "startVoiceOutput"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "stopVoiceOutput"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v6, "close"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const-string v6, "onServiceConnected"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-class v0, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const-string v7, "onServiceDisconnected"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    :try_start_2
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v4, "getState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v3, "getCurrentHeadset"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    const/16 v0, 0x17

    const-string v3, "CM_BluetoothHeadset::getState::getCurrentHeadset available for GB "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-eq v0, v11, :cond_3

    :try_start_3
    const-class v0, Landroid/bluetooth/BluetoothHeadset;

    const-string v3, "getState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/b;->c:I

    const/16 v0, 0x17

    const-string v3, "CM_BluetoothHeadset::getState:: available for FROYO"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_3
    :goto_4
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v0, v11, :cond_5

    :cond_4
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "android.bluetooth.BluetoothHeadset.ServiceListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "android.bluetooth.BluetoothHeadset"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM_BluetoothHeadset failed for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :goto_5
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    move-object v3, v0

    :goto_6
    move v0, v2

    goto/16 :goto_2

    :catch_3
    move-exception v3

    move-object v3, v0

    :goto_7
    move v0, v2

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v0, "CM_BluetoothHeadset::getState failed to find for GB"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    const-string v0, "CM_BluetoothHeadset::getState failed to find for FROYO"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CM_BluetoothHeadset failed for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v0, v3

    goto :goto_5

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/coremobility/integration/b;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private f()I
    .locals 8

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/16 v7, 0x17

    const/4 v6, 0x0

    const/4 v1, -0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    :goto_0
    move v1, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/b;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/coremobility/integration/b;->e:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "getBluetoothState falied to execute"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/integration/b;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "getBluetoothState falied to execute"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/integration/b;->f()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/coremobility/integration/b;->c:I

    return v0
.end method

.method public final c()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    const-string v0, "CM_BluetoothHeadset::startVoiceOutput"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/b;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "StartVoiceOutput falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "StartVoiceOutput not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    const-string v0, "CM_BluetoothHeadset::stopVoiceOutput"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/b;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "StopVoiceOutput falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "StopVoiceOutput not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    const/16 v4, 0x17

    const/4 v3, 0x0

    const-string v0, "CM_BluetoothHeadset::close"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/b;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/b;->a:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Close falied to execute"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "Close not supported"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
