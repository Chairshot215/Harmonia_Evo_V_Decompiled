.class final Lcom/google/android/finsky/config/GservicesValue$3;
.super Lcom/google/android/finsky/config/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/GservicesValue",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/Integer;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p2, p0, Lcom/google/android/finsky/config/GservicesValue$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/config/GservicesValue$3;->val$defaultValue:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/finsky/config/GservicesValue$1;)V

    return-void
.end method


# virtual methods
.method protected retrieve()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/finsky/config/GservicesValue;->access$200()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/GservicesValue$3;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/config/GservicesValue$3;->val$defaultValue:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/config/GservicesValue$GservicesReader;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/config/GservicesValue$3;->retrieve()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
