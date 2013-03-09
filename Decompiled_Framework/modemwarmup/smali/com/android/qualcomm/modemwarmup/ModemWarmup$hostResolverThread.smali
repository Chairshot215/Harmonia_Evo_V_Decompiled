.class Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;
.super Ljava/lang/Thread;
.source "ModemWarmup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/modemwarmup/ModemWarmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "hostResolverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/qualcomm/modemwarmup/ModemWarmup;


# direct methods
.method public constructor <init>(Lcom/android/qualcomm/modemwarmup/ModemWarmup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;->this$0:Lcom/android/qualcomm/modemwarmup/ModemWarmup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private generateRandomHostName()Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/String;

    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_0
    const/16 v5, 0xa

    if-gt v1, v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ".com"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private resolveHostName(Ljava/lang/String;)V
    .locals 4

    const-string v1, "Modem Warmup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Modem Warmup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get by name failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-direct {p0}, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;->generateRandomHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/qualcomm/modemwarmup/ModemWarmup$hostResolverThread;->resolveHostName(Ljava/lang/String;)V

    return-void
.end method
