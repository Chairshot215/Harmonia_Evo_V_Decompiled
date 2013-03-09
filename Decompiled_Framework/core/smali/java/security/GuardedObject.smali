.class public Ljava/security/GuardedObject;
.super Ljava/lang/Object;
.source "GuardedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x48b9d198f0d259c4L


# instance fields
.field private final guard:Ljava/security/Guard;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/security/Guard;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    iput-object p2, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    return-object v0
.end method
