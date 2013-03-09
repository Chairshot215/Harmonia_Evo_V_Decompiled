.class public final Lcom/google/common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final standardJoiner:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Collections2;->standardJoiner:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
