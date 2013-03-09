.class abstract Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;
.super Ljava/lang/Object;
.source "WebHistoryRepositoryImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LocalHistoryTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string v0, "local_history_source"

    return-object v0
.end method
