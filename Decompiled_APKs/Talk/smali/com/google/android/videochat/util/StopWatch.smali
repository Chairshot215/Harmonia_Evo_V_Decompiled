.class public Lcom/google/android/videochat/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/videochat/util/StopWatch;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
