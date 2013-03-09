.class final Lcom/google/android/finsky/config/GservicesValue$5;
.super Lcom/google/android/finsky/config/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/GservicesValue",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultValue:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p2, p0, Lcom/google/android/finsky/config/GservicesValue$5;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/config/GservicesValue$5;->val$defaultValue:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;Lcom/google/android/finsky/config/GservicesValue$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic retrieve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/config/GservicesValue$5;->retrieve()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected retrieve()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/finsky/config/GservicesValue;->access$200()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/GservicesValue$5;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/config/GservicesValue$5;->val$defaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/config/GservicesValue$GservicesReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
