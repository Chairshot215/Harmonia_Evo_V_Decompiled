.class public Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.super Ljava/lang/Object;
.source "ApiBase.java"


# static fields
.field public static jniLibraryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "flint_engine_jni_api"

    sput-object v0, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;->jniLibraryName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
