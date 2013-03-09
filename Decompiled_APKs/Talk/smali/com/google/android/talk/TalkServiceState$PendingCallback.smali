.class abstract Lcom/google/android/talk/TalkServiceState$PendingCallback;
.super Ljava/lang/Object;
.source "TalkServiceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PendingCallback"
.end annotation


# instance fields
.field private final mTarget:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/talk/TalkServiceState$PendingCallback;->mTarget:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public getTarget()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/talk/TalkServiceState$PendingCallback;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method public post()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/talk/TalkServiceState$PendingCallback;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method
