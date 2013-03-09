.class public Lcom/google/android/tts/network/ByteArrayHolder;
.super Ljava/lang/Object;
.source "ByteArrayHolder.java"


# instance fields
.field private final mBytes:[B
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "bytes"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/android/tts/network/ByteArrayHolder;->mBytes:[B

    .line 19
    return-void
.end method


# virtual methods
.method public get()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/tts/network/ByteArrayHolder;->mBytes:[B

    return-object v0
.end method
