.class Lcom/google/android/googlequicksearchbox/LastAccessValidator$1;
.super Ljava/lang/Object;
.source "LastAccessValidator.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/LastAccessValidator;->updateLastAccessTimes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/LastAccessValidator;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator$1;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessValidator$1;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessValidator;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessValidator;->updateStats()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/LastAccessValidator;->access$000(Lcom/google/android/googlequicksearchbox/LastAccessValidator;)V

    .line 75
    return-void
.end method
