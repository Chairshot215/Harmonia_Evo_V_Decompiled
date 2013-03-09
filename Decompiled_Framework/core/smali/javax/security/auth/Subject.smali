.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final _AS:Ljavax/security/auth/AuthPermission; = null

.field private static final _AS_PRIVILEGED:Ljavax/security/auth/AuthPermission; = null

.field private static final _PRINCIPALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission; = null

.field private static final _READ_ONLY:Ljavax/security/auth/AuthPermission; = null

.field private static final _SUBJECT:Ljavax/security/auth/AuthPermission; = null

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field private final principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private transient privateCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient publicCredentials:Ljavax/security/auth/Subject$SecureSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/security/auth/Subject$SecureSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAs"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "doAsPrivileged"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_AS_PRIVILEGED:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "getSubject"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_SUBJECT:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrincipals"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPrivateCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "modifyPublicCredentials"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    new-instance v0, Ljavax/security/auth/AuthPermission;

    const-string v1, "setReadOnly"

    invoke-direct {v0, v1}, Ljavax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/security/auth/Subject;->_READ_ONLY:Ljavax/security/auth/AuthPermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;Ljava/util/Collection;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return-void
.end method

.method static synthetic access$000()Ljavax/security/auth/AuthPermission;
    .locals 1

    sget-object v0, Ljavax/security/auth/Subject;->_PRINCIPALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/security/auth/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljavax/security/auth/Subject;->checkState()V

    return-void
.end method

.method static synthetic access$200()Ljavax/security/auth/AuthPermission;
    .locals 1

    sget-object v0, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method static synthetic access$300()Ljavax/security/auth/AuthPermission;
    .locals 1

    sget-object v0, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    return-object v0
.end method

.method private checkState()V
    .locals 2

    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    invoke-static {p0, p1, v0}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static doAs_PrivilegedAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    goto :goto_0
.end method

.method private static doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljavax/security/auth/Subject$2;

    invoke-direct {v1, p2, v0}, Ljavax/security/auth/Subject$2;-><init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/AccessControlContext;

    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v0, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, p0}, Ljavax/security/auth/SubjectDomainCombiner;-><init>(Ljavax/security/auth/Subject;)V

    goto :goto_0
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "AccessControlContext cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljavax/security/auth/Subject$3;

    invoke-direct {v0, p0}, Ljavax/security/auth/Subject$3;-><init>(Ljava/security/AccessControlContext;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/DomainCombiner;

    if-eqz v1, :cond_1

    instance-of v2, v1, Ljavax/security/auth/SubjectDomainCombiner;

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    check-cast v1, Ljavax/security/auth/SubjectDomainCombiner;

    invoke-virtual {v1}, Ljavax/security/auth/SubjectDomainCombiner;->getSubject()Ljavax/security/auth/Subject;

    move-result-object v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PUBLIC_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    sget-object v1, Ljavax/security/auth/Subject;->_PRIVATE_CREDENTIALS:Ljavax/security/auth/AuthPermission;

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;Ljavax/security/auth/AuthPermission;)V

    iput-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/Subject;

    iget-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v3, v4}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v3, v4}, Ljavax/security/auth/Subject$SecureSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getPrincipals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    check-cast v0, Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v0, p1}, Ljavax/security/auth/Subject$SecureSet;->get(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v1}, Ljavax/security/auth/Subject$SecureSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Subject:\n"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\tPrincipal: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ljavax/security/auth/Subject;->publicCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\tPublic Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Ljavax/security/auth/Subject;->privateCredentials:Ljavax/security/auth/Subject$SecureSet;

    invoke-virtual {v4}, Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\tPrivate Credential: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v4, "\tPrivate Credentials: no accessible information\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
