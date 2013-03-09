.class final Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;
.super Ljava/lang/Object;
.source "MediaProxyTcpConnectionImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/tcp/StunAttributeData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->createStunBindingRequest(Ljava/lang/String;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$usernamebytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;->val$usernamebytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asByteArray()[B
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;->val$usernamebytes:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl$1;->val$usernamebytes:[B

    array-length v0, v0

    return v0
.end method
