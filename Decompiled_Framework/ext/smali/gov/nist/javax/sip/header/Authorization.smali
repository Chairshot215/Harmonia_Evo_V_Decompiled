.class public Lgov/nist/javax/sip/header/Authorization;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "Authorization.java"

# interfaces
.implements Ljavax/sip/header/AuthorizationHeader;
.implements Lgov/nist/javax/sip/header/ims/AuthorizationHeaderIms;


# static fields
.field private static final serialVersionUID:J = -0x7b7b3af721670c04L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Authorization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method
