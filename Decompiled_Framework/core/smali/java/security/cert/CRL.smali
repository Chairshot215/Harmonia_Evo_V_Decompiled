.class public abstract Ljava/security/cert/CRL;
.super Ljava/lang/Object;
.source "CRL.java"


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CRL;->type:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isRevoked(Ljava/security/cert/Certificate;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
