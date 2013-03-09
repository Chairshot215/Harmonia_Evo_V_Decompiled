.class Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;
.super Ljava/lang/Object;
.source "LocationOptIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->setUseLocationForServices(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    iput-boolean p2, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->doSetUseLocationForServices(Z)V

    .line 152
    return-void
.end method
