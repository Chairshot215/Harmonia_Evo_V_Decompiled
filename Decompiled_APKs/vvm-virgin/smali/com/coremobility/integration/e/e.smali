.class public final Lcom/coremobility/integration/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/f;


# static fields
.field public static a:Lcom/coremobility/integration/e/e;


# instance fields
.field b:Ljava/util/Vector;

.field c:Ljava/util/Vector;

.field d:Ljava/util/Vector;

.field e:Ljava/util/Vector;

.field f:Landroid/content/IntentFilter;

.field g:Landroid/content/IntentFilter;

.field h:Landroid/content/IntentFilter;

.field i:Z

.field final j:I

.field private final k:Landroid/content/BroadcastReceiver;

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/e/e;->i:Z

    const/16 v0, 0x21

    iput v0, p0, Lcom/coremobility/integration/e/e;->j:I

    new-instance v0, Lcom/coremobility/integration/e/f;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/e/f;-><init>(Lcom/coremobility/integration/e/e;)V

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->k:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/coremobility/integration/e/g;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/e/g;-><init>(Lcom/coremobility/integration/e/e;)V

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/coremobility/integration/e/h;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/e/h;-><init>(Lcom/coremobility/integration/e/e;)V

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->m:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/coremobility/integration/e/i;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/e/i;-><init>(Lcom/coremobility/integration/e/e;)V

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->n:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static a(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x2

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a()Lcom/coremobility/integration/e/e;
    .locals 2

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/e/e;

    invoke-direct {v0}, Lcom/coremobility/integration/e/e;-><init>()V

    sput-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_Service;->a(Lcom/coremobility/integration/app/f;)V

    :cond_0
    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    return-object v0
.end method

.method public static b()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {v0}, Lcom/coremobility/integration/e/e;->f()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {v0}, Lcom/coremobility/integration/e/e;->g()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {v0}, Lcom/coremobility/integration/e/e;->h()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {v0}, Lcom/coremobility/integration/e/e;->i()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/CM_Service;->b(Lcom/coremobility/integration/app/f;)V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v0, v0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v0, v0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v0, v0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v0, v0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iput-object v2, v0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iput-object v2, v0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iput-object v2, v0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    sget-object v0, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iput-object v2, v0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    sput-object v2, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 6

    const/16 v5, 0x17

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CM+NR ActiveNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const-string v0, "CM+NR ActiveNetwork none"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_1
.end method

.method public static d()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CM+NR ActiveNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v1, v1, Lcom/coremobility/integration/e/e;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v1, v1, Lcom/coremobility/integration/e/e;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v1, v1, Lcom/coremobility/integration/e/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/coremobility/integration/e/e;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coremobility/integration/e/e;->a:Lcom/coremobility/integration/e/e;

    iget-object v1, v1, Lcom/coremobility/integration/e/e;->n:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v2, p0, Lcom/coremobility/integration/e/e;->i:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/coremobility/integration/app/f;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->k:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/coremobility/integration/e/e;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/coremobility/integration/e/e;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_5

    move v0, v1

    :goto_3
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->l:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/coremobility/integration/e/e;->g:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/coremobility/integration/e/e;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_6

    move v0, v1

    :goto_5
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/integration/e/e;->i:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->n:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput-boolean v2, p0, Lcom/coremobility/integration/e/e;->i:Z

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_3

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p2, v3, :cond_7

    :goto_7
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/coremobility/integration/e/e;->m:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->h:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.coremobility.app.vnotes.ROAMING_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.coremobility.app.vnotes.CONNECTIVITY_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v4

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/app/f;

    invoke-interface {v1, p1}, Lcom/coremobility/integration/app/f;->a(Landroid/content/Intent;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_3
    const-string v3, "com.coremobility.app.vnotes.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_4

    monitor-exit v4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/app/f;

    invoke-interface {v1, p1}, Lcom/coremobility/integration/app/f;->a(Landroid/content/Intent;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_5
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_6
    const-string v3, "com.coremobility.app.vnotes.THIRD_PARTY_BLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_7

    monitor-exit v4

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/app/f;

    invoke-interface {v1, p1}, Lcom/coremobility/integration/app/f;->a(Landroid/content/Intent;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_8
    monitor-exit v4

    move v0, v2

    goto :goto_0

    :cond_9
    const-string v3, "com.coremobility.app.vnotes.PHONE_CALL_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "com.coremobility.app.vnotes.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_b

    monitor-exit v4

    move v0, v1

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v1

    :goto_4
    if-ge v3, v5, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/integration/app/f;

    invoke-interface {v1, p1}, Lcom/coremobility/integration/app/f;->a(Landroid/content/Intent;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    goto/16 :goto_0

    :cond_d
    monitor-exit v4

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final b(ILcom/coremobility/integration/app/f;)V
    .locals 3

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/integration/e/e;->f()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/coremobility/integration/e/e;->g()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/coremobility/integration/e/e;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/coremobility/integration/e/e;->i()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/coremobility/integration/e/e;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/coremobility/integration/e/e;->h()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method
