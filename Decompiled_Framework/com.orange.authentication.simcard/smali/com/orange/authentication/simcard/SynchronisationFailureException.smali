.class public Lcom/orange/authentication/simcard/SynchronisationFailureException;
.super Lcom/orange/authentication/simcard/SimCardAuthenticationException;
.source "SynchronisationFailureException.java"


# instance fields
.field private mAuts:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationException;-><init>()V

    iput-object p1, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    return-void
.end method


# virtual methods
.method public getAuts()[B
    .locals 1

    iget-object v0, p0, Lcom/orange/authentication/simcard/SynchronisationFailureException;->mAuts:[B

    return-object v0
.end method
