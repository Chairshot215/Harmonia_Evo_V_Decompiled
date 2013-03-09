.class public abstract Ljava/net/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Authenticator$RequestorType;
    }
.end annotation


# static fields
.field private static final requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

.field private static final setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

.field private static thisAuthenticator:Ljava/net/Authenticator;


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private host:Ljava/lang/String;

.field private port:I

.field private prompt:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private rt:Ljava/net/Authenticator$RequestorType;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "requestPasswordAuthentication"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->requestPasswordAuthenticationPermission:Ljava/net/NetPermission;

    new-instance v0, Ljava/net/NetPermission;

    const-string v1, "setDefaultAuthenticator"

    invoke-direct {v0, v1}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/Authenticator;->setDefaultAuthenticatorPermission:Ljava/net/NetPermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3

    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 1

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p1, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p2, v0, Ljava/net/Authenticator;->port:I

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p5, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p6, v0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p7, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;
    .locals 3

    const-class v1, Ljava/net/Authenticator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p0, v0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput p1, v0, Ljava/net/Authenticator;->port:I

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p2, v0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p3, v0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    iput-object p4, v0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    iput-object v2, v0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    sget-object v0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    invoke-virtual {v0}, Ljava/net/Authenticator;->getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefault(Ljava/net/Authenticator;)V
    .locals 0

    sput-object p0, Ljava/net/Authenticator;->thisAuthenticator:Ljava/net/Authenticator;

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->host:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    iget v0, p0, Ljava/net/Authenticator;->port:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected getRequestingURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->url:Ljava/net/URL;

    return-object v0
.end method

.method protected getRequestorType()Ljava/net/Authenticator$RequestorType;
    .locals 1

    iget-object v0, p0, Ljava/net/Authenticator;->rt:Ljava/net/Authenticator$RequestorType;

    return-object v0
.end method
