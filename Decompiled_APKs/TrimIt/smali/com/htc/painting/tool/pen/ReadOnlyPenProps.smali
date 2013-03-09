.class public final Lcom/htc/painting/tool/pen/ReadOnlyPenProps;
.super Lcom/htc/painting/tool/pen/PenProps;
.source "ReadOnlyPenProps.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/tool/pen/ReadOnlyPenProps;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/painting/tool/pen/PenProps;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/tool/pen/PenProps;)V
    .locals 0
    .parameter "ppb"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;-><init>(Lcom/htc/painting/tool/pen/PenProps;)V

    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "bProperties"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/htc/painting/tool/pen/PenProps;-><init>([B)V

    .line 26
    return-void
.end method


# virtual methods
.method protected final put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/painting/tool/pen/PenException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/htc/painting/tool/pen/PenException;

    const-string v1, "Read-Only"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/tool/pen/PenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
