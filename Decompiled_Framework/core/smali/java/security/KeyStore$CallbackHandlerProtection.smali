.class public Ljava/security/KeyStore$CallbackHandlerProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandlerProtection"
.end annotation


# instance fields
.field private final callbackHandler:Ljavax/security/auth/callback/CallbackHandler;


# direct methods
.method public constructor <init>(Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    return-void
.end method


# virtual methods
.method public getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$CallbackHandlerProtection;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    return-object v0
.end method
