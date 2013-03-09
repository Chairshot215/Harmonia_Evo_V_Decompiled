.class Lcom/google/android/finsky/activities/MainActivity$5$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/MainActivity$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/finsky/activities/MainActivity$5$1;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/MainActivity$5$1;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/finsky/activities/MainActivity$5$1$1;->this$2:Lcom/google/android/finsky/activities/MainActivity$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/finsky/activities/MainActivity$5$1$1;->this$2:Lcom/google/android/finsky/activities/MainActivity$5$1;

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity$5$1;->this$1:Lcom/google/android/finsky/activities/MainActivity$5;

    iget-object v0, v0, Lcom/google/android/finsky/activities/MainActivity$5;->this$0:Lcom/google/android/finsky/activities/MainActivity;

    #calls: Lcom/google/android/finsky/activities/MainActivity;->initializeBillingCountries()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->access$500(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 454
    return-void
.end method
