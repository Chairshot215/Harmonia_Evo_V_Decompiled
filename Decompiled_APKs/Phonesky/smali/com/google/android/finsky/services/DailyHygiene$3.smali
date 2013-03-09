.class Lcom/google/android/finsky/services/DailyHygiene$3;
.super Ljava/lang/Object;
.source "DailyHygiene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/DailyHygiene;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/DailyHygiene;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/finsky/services/DailyHygiene$3;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/services/DailyHygiene$3;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->access$102(Lcom/google/android/finsky/services/DailyHygiene;Z)Z

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/services/DailyHygiene$3;->this$0:Lcom/google/android/finsky/services/DailyHygiene;

    #calls: Lcom/google/android/finsky/services/DailyHygiene;->reschedule()V
    invoke-static {v0}, Lcom/google/android/finsky/services/DailyHygiene;->access$200(Lcom/google/android/finsky/services/DailyHygiene;)V

    .line 121
    return-void
.end method
