.class Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;
.super Ljava/lang/Object;
.source "EndpointerInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingRequest"
.end annotation


# instance fields
.field private volatile mEndListening:Z

.field final synthetic this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->this$0:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->mEndListening:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;-><init>(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->requestEndListening()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->isEndListening()Z

    move-result v0

    return v0
.end method

.method private isEndListening()Z
    .locals 2

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->mEndListening:Z

    .line 582
    .local v0, value:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->mEndListening:Z

    .line 583
    return v0
.end method

.method private requestEndListening()V
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$PendingRequest;->mEndListening:Z

    .line 574
    return-void
.end method
