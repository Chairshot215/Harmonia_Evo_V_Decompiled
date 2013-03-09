.class Lcom/google/android/googlequicksearchbox/google/LocationOptIn$1;
.super Ljava/lang/Object;
.source "LocationOptIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/LocationOptIn;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$1;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$1;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    #calls: Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getShouldSendLocation()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->access$000(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;)V

    .line 59
    return-void
.end method
