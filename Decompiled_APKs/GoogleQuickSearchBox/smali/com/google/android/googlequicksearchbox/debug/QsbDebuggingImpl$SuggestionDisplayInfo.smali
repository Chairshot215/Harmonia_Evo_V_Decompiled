.class Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;
.super Ljava/lang/Object;
.source "QsbDebuggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionDisplayInfo"
.end annotation


# instance fields
.field public mBound:I

.field public mInflated:I

.field public mRecycled:I

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->this$0:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;-><init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    .line 221
    iput v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    .line 222
    iput v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISP[I:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
