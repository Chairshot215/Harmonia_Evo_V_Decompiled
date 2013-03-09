.class final Ljavax/security/auth/Subject$3;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject;->getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
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
        "Ljava/security/DomainCombiner;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Ljava/security/AccessControlContext;


# direct methods
.method constructor <init>(Ljava/security/AccessControlContext;)V
    .locals 0

    iput-object p1, p0, Ljavax/security/auth/Subject$3;->val$context:Ljava/security/AccessControlContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljavax/security/auth/Subject$3;->run()Ljava/security/DomainCombiner;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/DomainCombiner;
    .locals 1

    iget-object v0, p0, Ljavax/security/auth/Subject$3;->val$context:Ljava/security/AccessControlContext;

    invoke-virtual {v0}, Ljava/security/AccessControlContext;->getDomainCombiner()Ljava/security/DomainCombiner;

    move-result-object v0

    return-object v0
.end method
