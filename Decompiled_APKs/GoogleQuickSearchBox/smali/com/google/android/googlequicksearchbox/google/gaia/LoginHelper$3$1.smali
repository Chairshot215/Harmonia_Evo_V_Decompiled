.class Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;
.super Ljava/lang/Object;
.source "LoginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;->this$1:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;->this$1:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3$1;->val$token:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method
