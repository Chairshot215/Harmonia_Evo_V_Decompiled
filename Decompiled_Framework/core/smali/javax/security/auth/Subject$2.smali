.class final Ljavax/security/auth/Subject$2;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->doAs_PrivilegedExceptionAction(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/security/AccessControlContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$combiner:Ljavax/security/auth/SubjectDomainCombiner;

.field final synthetic val$context:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;Ljavax/security/auth/SubjectDomainCombiner;)V
    .locals 0

    iput-object p1, p0, Ljavax/security/auth/Subject$2;->val$context:Ljava/security/AccessControlContext;

    iput-object p2, p0, Ljavax/security/auth/Subject$2;->val$combiner:Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljavax/security/auth/Subject$2;->run()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/AccessControlContext;
    .locals 3

    new-instance v0, Ljava/security/AccessControlContext;

    iget-object v1, p0, Ljavax/security/auth/Subject$2;->val$context:Ljava/security/AccessControlContext;

    iget-object v2, p0, Ljavax/security/auth/Subject$2;->val$combiner:Ljavax/security/auth/SubjectDomainCombiner;

    invoke-direct {v0, v1, v2}, Ljava/security/AccessControlContext;-><init>(Ljava/security/AccessControlContext;Ljava/security/DomainCombiner;)V

    return-object v0
.end method
