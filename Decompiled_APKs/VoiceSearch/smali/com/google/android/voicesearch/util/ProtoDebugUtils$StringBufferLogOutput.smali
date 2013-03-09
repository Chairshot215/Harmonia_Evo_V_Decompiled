.class Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;
.super Ljava/lang/Object;
.source "ProtoDebugUtils.java"

# interfaces
.implements Lcom/google/android/voicesearch/util/ProtoDebugUtils$LogOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/util/ProtoDebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringBufferLogOutput"
.end annotation


# instance fields
.field private final mBuffer:Ljava/lang/StringBuffer;

.field private mLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mBuffer:Ljava/lang/StringBuffer;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/util/ProtoDebugUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public appendLine(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mBuffer:Ljava/lang/StringBuffer;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    return-void
.end method

.method public indent()V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    .line 155
    return-void
.end method

.method public outdent()V
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mLevel:I

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/voicesearch/util/ProtoDebugUtils$StringBufferLogOutput;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
