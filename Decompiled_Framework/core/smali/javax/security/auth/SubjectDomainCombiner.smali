.class public Ljavax/security/auth/SubjectDomainCombiner;
.super Ljava/lang/Object;
.source "SubjectDomainCombiner.java"

# interfaces
.implements Ljava/security/DomainCombiner;


# direct methods
.method public constructor <init>(Ljavax/security/auth/Subject;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public combine([Ljava/security/ProtectionDomain;[Ljava/security/ProtectionDomain;)[Ljava/security/ProtectionDomain;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/Subject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
