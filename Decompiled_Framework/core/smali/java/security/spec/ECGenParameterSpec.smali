.class public Ljava/security/spec/ECGenParameterSpec;
.super Ljava/lang/Object;
.source "ECGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/spec/ECGenParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
