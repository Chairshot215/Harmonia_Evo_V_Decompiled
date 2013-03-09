.class Lcom/htc/fusion/fx/MessageSourceNative;
.super Lcom/htc/fusion/fx/MessageSource;
.source "MessageSourceNative.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/fusion/fx/MessageSource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private nativeHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->loadNativeLibrary()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageSource;-><init>()V

    return-void
.end method

.method private native deleteNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageSourceNative;->deleteNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
