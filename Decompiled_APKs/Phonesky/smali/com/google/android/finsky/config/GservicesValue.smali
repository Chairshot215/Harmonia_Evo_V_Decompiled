.class public abstract Lcom/google/android/finsky/config/GservicesValue;
.super Ljava/lang/Object;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/config/GservicesValue$GservicesReaderForTests;,
        Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;,
        Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;


# instance fields
.field private final mKey:Ljava/lang/String;

.field private mOverride:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 35
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/config/GservicesValue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "prefixesToCache"

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderImpl;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    .line 24
    return-void
.end method

.method public static initForTests()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderForTests;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/config/GservicesValue$GservicesReaderForTests;-><init>(Lcom/google/android/finsky/config/GservicesValue$1;)V

    sput-object v0, Lcom/google/android/finsky/config/GservicesValue;->sGservicesReader:Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    .line 29
    return-void
.end method

.method public static partnerSetting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$2;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/finsky/config/GservicesValue$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/finsky/config/GservicesValue$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/config/GservicesValue;->retrieve()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/config/GservicesValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public override(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/finsky/config/GservicesValue;,"Lcom/google/android/finsky/config/GservicesValue<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/google/android/finsky/config/GservicesValue;->mOverride:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method protected abstract retrieve()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
