.class public Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;->mPriority:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;->mPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter "r"

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory$1;-><init>(Lcom/google/android/googlequicksearchbox/util/PriorityThreadFactory;Ljava/lang/Runnable;)V

    return-object v0
.end method
