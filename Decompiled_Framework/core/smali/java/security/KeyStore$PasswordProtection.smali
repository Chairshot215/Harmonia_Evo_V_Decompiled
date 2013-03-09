.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private isDestroyed:Z

.field private password:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Password was destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
